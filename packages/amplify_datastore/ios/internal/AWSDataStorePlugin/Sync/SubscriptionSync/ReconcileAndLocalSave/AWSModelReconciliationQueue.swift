//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import AWSPluginsCore
import Combine
import Foundation

// Used for testing:
typealias ModelReconciliationQueueFactory = (
    ModelSchema,
    StorageEngineAdapter,
    APICategoryGraphQLBehavior,
    ReconcileAndSaveOperationQueue,
    QueryPredicate?,
    AuthCategoryBehavior?,
    AuthModeStrategy,
    IncomingSubscriptionEventPublisher?
) async -> ModelReconciliationQueue

/// A queue of reconciliation operations, merged from incoming subscription events and responses to locally-sourced
/// mutations for a single model type.
///
/// Although subscriptions are listened to and enqueued at initialization, you must call `start` on a
/// AWSModelReconciliationQueue to write events to the DataStore.
///
/// Internally, a AWSModelReconciliationQueue manages the
/// `incomingSubscriptionEventQueue` to buffer incoming remote events (e.g.,
/// subscriptions, mutation results), and is passed the reference of
/// `ReconcileAndSaveOperationQueue`, used to reconcile & save mutation sync events
/// to local storage. A reference to the `ReconcileAndSaveOperationQueue` is used
/// here since some models have to be reconciled in dependency order and
/// `ReconcileAndSaveOperationQueue` is responsible for managing the ordering of
/// these events. These queues are required because each of these actions have
/// different points in the sync lifecycle at which they may be activated.
///
/// Flow:
/// - `AWSModelReconciliationQueue` init()
///   - `reconcileAndSaveQueue` queue for reconciliation and local save operations, passed in from initializer.
///   - `incomingSubscriptionEventQueue` created, but suspended
///   - `incomingEventsSink` listener set up for incoming remote events
///     - when `incomingEventsSink` listener receives an event, it adds an operation to `incomingSubscriptionEventQueue`
/// - Elsewhere in the system, the initial sync queries begin, and submit events via `enqueue`. That method creates a
///  `ReconcileAndLocalSaveOperation` for the event, and enqueues it on `reconcileAndSaveQueue`. `reconcileAndSaveQueue`
///   serially processes the events
/// - Once initial sync is done, the `ReconciliationQueue` is `start`ed, which activates the
///   `incomingSubscriptionEventQueue`.
/// - `incomingRemoteEventQueue` processes its operations, which are simply to call `enqueue` for each received remote
///   event.
final class AWSModelReconciliationQueue: ModelReconciliationQueue {
    /// Exposes a publisher for incoming subscription events
    private let incomingSubscriptionEvents: IncomingSubscriptionEventPublisher

    private let modelSchema: ModelSchema
    weak var storageAdapter: StorageEngineAdapter?
    private let modelPredicate: QueryPredicate?

    /// A buffer queue for incoming subsscription events, waiting for this ReconciliationQueue to be `start`ed. Once
    /// the ReconciliationQueue is started, each event in the `incomingRemoveEventQueue` will be submitted to the
    /// `reconcileAndSaveQueue`.
    private let incomingSubscriptionEventQueue: OperationQueue

    /// Applies incoming mutation or subscription events serially to local data store for this model type. This queue
    /// is always active.
    private let reconcileAndSaveQueue: ReconcileAndSaveOperationQueue

    private var incomingEventsSink: AnyCancellable?
    private var reconcileAndLocalSaveOperationSinks: AtomicValue<Set<AnyCancellable?>>

    private let modelReconciliationQueueSubject: CurrentValueSubject<ModelReconciliationQueueEvent, DataStoreError>
    var publisher: AnyPublisher<ModelReconciliationQueueEvent, DataStoreError> {
        return modelReconciliationQueueSubject.eraseToAnyPublisher()
    }

    init(modelSchema: ModelSchema,
         storageAdapter: StorageEngineAdapter?,
         api: APICategoryGraphQLBehavior,
         reconcileAndSaveQueue: ReconcileAndSaveOperationQueue,
         modelPredicate: QueryPredicate?,
         auth: AuthCategoryBehavior?,
         authModeStrategy: AuthModeStrategy,
         incomingSubscriptionEvents: IncomingSubscriptionEventPublisher? = nil) async {

        self.modelSchema = modelSchema
        self.storageAdapter = storageAdapter

        self.modelPredicate = modelPredicate
        self.modelReconciliationQueueSubject = CurrentValueSubject<ModelReconciliationQueueEvent, DataStoreError>(.idle)

        self.reconcileAndSaveQueue = reconcileAndSaveQueue

        self.incomingSubscriptionEventQueue = OperationQueue()
        incomingSubscriptionEventQueue.name = "com.amazonaws.DataStore.\(modelSchema.name).remoteEvent"
        incomingSubscriptionEventQueue.maxConcurrentOperationCount = 1
        incomingSubscriptionEventQueue.underlyingQueue = DispatchQueue.global()
        incomingSubscriptionEventQueue.isSuspended = true

        let resolvedIncomingSubscriptionEvents: IncomingSubscriptionEventPublisher
        if let incomingSubscriptionEvents = incomingSubscriptionEvents {
            resolvedIncomingSubscriptionEvents = incomingSubscriptionEvents
        } else {
            resolvedIncomingSubscriptionEvents = await AWSIncomingSubscriptionEventPublisher(
                modelSchema: modelSchema,
                api: api,
                modelPredicate: modelPredicate,
                auth: auth,
                authModeStrategy: authModeStrategy
            )
        }

        self.incomingSubscriptionEvents = resolvedIncomingSubscriptionEvents
        self.reconcileAndLocalSaveOperationSinks = AtomicValue(initialValue: Set<AnyCancellable?>())
        self.incomingEventsSink = resolvedIncomingSubscriptionEvents
            .publisher
            .sink(receiveCompletion: { [weak self] completion in
                self?.receiveCompletion(completion)
            }, receiveValue: { [weak self] receiveValue in
                self?.receive(receiveValue)
            })
    }

    /// (Re)starts the incoming subscription event queue.
    func start() {
        incomingSubscriptionEventQueue.isSuspended = false
        modelReconciliationQueueSubject.send(.started)
    }

    /// Pauses only the incoming subscription event queue. Events submitted via `enqueue` will still be processed
    func pause() {
        incomingSubscriptionEventQueue.isSuspended = true
        modelReconciliationQueueSubject.send(.paused)
    }

    /// Cancels all outstanding operations on both the incoming subscription event queue and the reconcile queue, and
    /// unsubscribes from the incoming events publisher. The queue may not be restarted after cancelling.
    func cancel() {
        incomingEventsSink?.cancel()
        incomingSubscriptionEvents.cancel()
        reconcileAndSaveQueue.cancelOperations(modelName: modelSchema.name)
        incomingSubscriptionEventQueue.cancelAllOperations()
    }

    func enqueue(_ remoteModels: [MutationSync<AnyModel>]) {
        guard !remoteModels.isEmpty else {
            log.debug("\(#function) skipping reconciliation, no models to enqueue.")
            return
        }

        let reconcileOp = ReconcileAndLocalSaveOperation(modelSchema: modelSchema,
                                                         remoteModels: remoteModels,
                                                         storageAdapter: storageAdapter)
        var reconcileAndLocalSaveOperationSink: AnyCancellable?
        reconcileAndLocalSaveOperationSink = reconcileOp
            .publisher
            .sink(receiveCompletion: { [weak self] completion in
                guard let self = self else {
                    return
                }
                self.reconcileAndLocalSaveOperationSinks.with { $0.remove(reconcileAndLocalSaveOperationSink) }
                if case .failure = completion {
                    self.modelReconciliationQueueSubject.send(completion: completion)
                }
            }, receiveValue: { [weak self] value in
                guard let self = self else {
                    return
                }
                switch value {
                case .mutationEventDropped(let modelName, let error):
                    self.modelReconciliationQueueSubject.send(.mutationEventDropped(modelName: modelName, error: error))
                case .mutationEvent(let event):
                    self.modelReconciliationQueueSubject.send(.mutationEvent(event))
                }
            })
        reconcileAndLocalSaveOperationSinks.with { $0.insert(reconcileAndLocalSaveOperationSink) }
        reconcileAndSaveQueue.addOperation(reconcileOp, modelName: modelSchema.name)
    }

    private func receive(_ receive: IncomingSubscriptionEventPublisherEvent) {
        switch receive {
        case .mutationEvent(let remoteModel):
            if let predicate = modelPredicate {
                guard predicate.evaluate(target: remoteModel.model.instance) else {
                    return
                }
            }
            incomingSubscriptionEventQueue.addOperation(CancelAwareBlockOperation { [weak self] in
                self?.enqueue([remoteModel])
            })
        case .connectionConnected:
            modelReconciliationQueueSubject.send(.connected(modelName: modelSchema.name))
        }
    }

    private func receiveCompletion(_ completion: Subscribers.Completion<DataStoreError>) {
        switch completion {
        case .finished:
            log.info("receivedCompletion: finished")
            modelReconciliationQueueSubject.send(completion: .finished)
        case .failure(let dataStoreError):
            if case let .api(error, _) = dataStoreError,
               case let APIError.operationError(errorDescription, _, underlyingError) = error,
               isUnauthorizedError(errorDescription: errorDescription, underlyingError) {
                log.verbose("[InitializeSubscription.3] AWSModelReconciliationQueue determined unauthorized \(modelSchema.name)")
                modelReconciliationQueueSubject.send(.disconnected(modelName: modelSchema.name, reason: .unauthorized))
                return
            }
            if case let .api(error, _) = dataStoreError,
               case let APIError.operationError(errorMessage, _, underlyingError) = error,
               isOperationDisabledError(errorMessage, underlyingError) {
                log.verbose("[InitializeSubscription.3] AWSModelReconciliationQueue determined isOperationDisabledError \(modelSchema.name)")
                modelReconciliationQueueSubject.send(.disconnected(modelName: modelSchema.name, reason: .operationDisabled))
                return
            }
            log.error("[InitializeSubscription.3] AWSModelReconciliationQueue receiveCompletion: error: \(dataStoreError)")
            modelReconciliationQueueSubject.send(completion: .failure(dataStoreError))
        }
    }
}

extension AWSModelReconciliationQueue: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}

// MARK: Resettable
extension AWSModelReconciliationQueue: Resettable {

    func reset() async {
        log.verbose("Resetting incomingEventsSink")
        incomingEventsSink?.cancel()
        log.verbose("Resetting incomingEventsSink: finished")

        if let resettable = incomingSubscriptionEvents as? Resettable {
            log.verbose("Resetting incomingSubscriptionEvents")
            await resettable.reset()
            self.log.verbose("Resetting incomingSubscriptionEvents: finished")
        }

        log.verbose("Resetting incomingSubscriptionEventQueue")
        incomingSubscriptionEventQueue.cancelAllOperations()
        await withCheckedContinuation { (continuation: CheckedContinuation<Void, Never>) in
            incomingSubscriptionEventQueue.waitUntilAllOperationsAreFinished()
            continuation.resume()
        }
        log.verbose("Resetting incomingSubscriptionEventQueue: finished")
    }
}

// MARK: Errors handling
extension AWSModelReconciliationQueue {
    private typealias ResponseType = MutationSync<AnyModel>
    private func graphqlErrors(from error: GraphQLResponseError<ResponseType>?) -> [GraphQLError]? {
        if case let .error(errors) = error {
            return errors
        }
        return nil
    }

    private func errorTypeValueFrom(graphQLError: GraphQLError) -> String? {
        guard case let .string(errorTypeValue) = graphQLError.extensions?["errorType"] else {
            return nil
        }
        return errorTypeValue
    }

    private func isUnauthorizedError(errorDescription: String, _ error: Error?) -> Bool {
        if errorDescription.range(of: "Unauthorized", options: .caseInsensitive) != nil {
            return true
        }
        if let responseError = error as? GraphQLResponseError<ResponseType>,
           let graphQLError = graphqlErrors(from: responseError)?.first,
           let errorTypeValue = errorTypeValueFrom(graphQLError: graphQLError),
           case .unauthorized = AppSyncErrorType(errorTypeValue) {
            return true
        }
        return false
    }

    private func isOperationDisabledError(_ errorMessage: String?, _ error: Error?) -> Bool {
        if let errorMessage = errorMessage,
            case .operationDisabled = AppSyncErrorType(errorMessage) {
            return true
        }

        if let responseError = error as? GraphQLResponseError<ResponseType>,
           let graphQLError = graphqlErrors(from: responseError)?.first,
           let errorTypeValue = errorTypeValueFrom(graphQLError: graphQLError),
           case .operationDisabled = AppSyncErrorType(errorTypeValue) {
            return true
        }
        return false
    }
}
