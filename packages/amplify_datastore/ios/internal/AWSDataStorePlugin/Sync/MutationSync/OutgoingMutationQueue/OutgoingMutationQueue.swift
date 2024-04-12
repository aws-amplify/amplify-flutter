//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine
import Foundation
import AWSPluginsCore

/// Submits outgoing mutation events to the provisioned API
protocol OutgoingMutationQueueBehavior: AnyObject {
    func stopSyncingToCloud(_ completion: @escaping BasicClosure)
    func startSyncingToCloud(api: APICategoryGraphQLBehaviorExtended,
                             mutationEventPublisher: MutationEventPublisher,
                             reconciliationQueue: IncomingEventReconciliationQueue?)
    var publisher: AnyPublisher<MutationEvent, Never> { get }
}

final class OutgoingMutationQueue: OutgoingMutationQueueBehavior {

    private let stateMachine: StateMachine<State, Action>
    private var stateMachineSink: AnyCancellable?

    private let operationQueue: OperationQueue

    /// A DispatchQueue for synchronizing state on the mutation queue
    private let mutationDispatchQueue = DispatchQueue(
        label: "com.amazonaws.OutgoingMutationQueue",
        target: DispatchQueue.global()
    )

    private weak var api: APICategoryGraphQLBehaviorExtended?
    private weak var reconciliationQueue: IncomingEventReconciliationQueue?

    private var subscription: Subscription?
    private let dataStoreConfiguration: DataStoreConfiguration
    private let storageAdapter: StorageEngineAdapter
    private var authModeStrategy: AuthModeStrategy

    private let outgoingMutationQueueSubject: PassthroughSubject<MutationEvent, Never>
    public var publisher: AnyPublisher<MutationEvent, Never> {
        return outgoingMutationQueueSubject.eraseToAnyPublisher()
    }

    init(_ stateMachine: StateMachine<State, Action>? = nil,
         storageAdapter: StorageEngineAdapter,
         dataStoreConfiguration: DataStoreConfiguration,
         authModeStrategy: AuthModeStrategy) {
        self.storageAdapter = storageAdapter
        self.dataStoreConfiguration = dataStoreConfiguration
        self.authModeStrategy = authModeStrategy

        let operationQueue = OperationQueue()
        operationQueue.name = "com.amazonaws.OutgoingMutationOperationQueue"
        operationQueue.underlyingQueue = mutationDispatchQueue
        operationQueue.maxConcurrentOperationCount = 1
        operationQueue.isSuspended = true

        self.operationQueue = operationQueue

        self.stateMachine = stateMachine ??
            StateMachine(initialState: .notInitialized,
                         resolver: OutgoingMutationQueue.Resolver.resolve(currentState:action:))

        self.outgoingMutationQueueSubject = PassthroughSubject<MutationEvent, Never>()

        self.stateMachineSink = self.stateMachine
            .$state
            .sink { [weak self] newState in
                guard let self else { return }

                self.log.verbose("New state: \(newState)")
                self.mutationDispatchQueue.async {
                    self.respond(to: newState)
                }
        }

        log.verbose("Initialized")
        self.stateMachine.notify(action: .initialized)
    }

    // MARK: - Public API

    func startSyncingToCloud(api: APICategoryGraphQLBehaviorExtended,
                             mutationEventPublisher: MutationEventPublisher,
                             reconciliationQueue: IncomingEventReconciliationQueue?) {
        log.verbose(#function)
        stateMachine.notify(action: .receivedStart(api, mutationEventPublisher, reconciliationQueue))
    }

    func stopSyncingToCloud(_ completion: @escaping BasicClosure) {
        log.verbose(#function)
        stateMachine.notify(action: .receivedStop(completion))
    }

    // MARK: - Responders

    /// Listens to incoming state changes and invokes the appropriate asynchronous methods in response.
    private func respond(to newState: State) {
        log.verbose("\(#function): \(newState)")

        switch newState {

        case .starting(let api, let mutationEventPublisher, let reconciliationQueue):
            doStart(api: api, mutationEventPublisher: mutationEventPublisher, reconciliationQueue: reconciliationQueue)

        case .requestingEvent:
            requestEvent()

        case .inError(let error):
            // Maybe we have to notify the Hub?
            log.error(error: error)

        case .stopping(let completion):
            doStop(completion: completion)

        case .notInitialized,
             .stopped,
             .waitingForEventToProcess:
            break
        }

    }

    // MARK: - Lifecycle

    /// Responder method for `starting`. Starts the operation queue and subscribes to
    /// the publisher. After subscribing to the publisher, return actions:
    /// - receivedSubscription
    private func doStart(api: APICategoryGraphQLBehaviorExtended,
                         mutationEventPublisher: MutationEventPublisher,
                         reconciliationQueue: IncomingEventReconciliationQueue?) {
        log.verbose(#function)
        self.api = api
        self.reconciliationQueue = reconciliationQueue

        queryMutationEventsFromStorage { [weak self] in
            guard let self = self else { return }

            self.operationQueue.isSuspended = false
            // State machine notification to ".receivedSubscription" will be handled in `receive(subscription:)`
            mutationEventPublisher.publisher.subscribe(self)
        }
    }

    /// Responder method for `stopping`. Cancels all operations on the operation queue, suspends it,
    /// and cancels the publisher subscription. Return actions:
    /// - doneStopping
    private func doStop(completion: @escaping BasicClosure) {
        log.verbose(#function)
        doStopWithoutNotifyingStateMachine()
        self.stateMachine.notify(action: .doneStopping)
        completion()
    }

    private func doStopWithoutNotifyingStateMachine() {
        log.verbose(#function)
        subscription?.cancel()
        subscription = nil
        operationQueue.cancelAllOperations()
        operationQueue.isSuspended = true
        operationQueue.waitUntilAllOperationsAreFinished()
    }

    // MARK: - Event loop processing

    /// Responder method for `requestingEvent`. Requests an event from the subscription, and lets the subscription
    /// handler enqueue it. Return actions:
    /// - errored
    private func requestEvent() {
        log.verbose(#function)
        guard let subscription = subscription else {
            let dataStoreError = DataStoreError.unknown(
                "No subscription when requesting event",
                """
                The outgoing mutation queue attempted to request event without an active subscription.
                \(AmplifyErrorMessages.reportBugToAWS())
                """
            )
            stateMachine.notify(action: .errored(dataStoreError))
            return
        }
        subscription.request(.max(1))
    }

    /// Invoked when the subscription receives an event, not as part of the state machine transition
    private func enqueue(_ mutationEvent: MutationEvent) {
        log.verbose(#function)
        guard let api = api else {
            let dataStoreError = DataStoreError.configuration(
                "API is unexpectedly nil",
                """
                The reference to api has been released while an ongoing mutation was being processed.
                \(AmplifyErrorMessages.reportBugToAWS())
                """
            )
            stateMachine.notify(action: .errored(dataStoreError))
            return
        }

        Task {
            let syncMutationToCloudOperation = await SyncMutationToCloudOperation(
                mutationEvent: mutationEvent,
                getLatestSyncMetadata: { try? self.storageAdapter.queryMutationSyncMetadata(for: mutationEvent.modelId, modelName: mutationEvent.modelName) },
                api: api,
                authModeStrategy: authModeStrategy
            ) { [weak self] result in
                self?.log.verbose(
                    "[SyncMutationToCloudOperation] mutationEvent finished: \(mutationEvent.id); result: \(result)")
                self?.processSyncMutationToCloudResult(result, mutationEvent: mutationEvent, api: api)
            }

            dispatchOutboxMutationEnqueuedEvent(mutationEvent: mutationEvent)
            dispatchOutboxStatusEvent(isEmpty: false)
            operationQueue.addOperation(syncMutationToCloudOperation)
            stateMachine.notify(action: .enqueuedEvent)
        }
    }

    private func processSyncMutationToCloudResult(_ result: GraphQLOperation<MutationSync<AnyModel>>.OperationResult,
                                                  mutationEvent: MutationEvent,
                                                  api: APICategoryGraphQLBehaviorExtended) {
        if case let .success(graphQLResponse) = result {
            if case let .success(graphQLResult) = graphQLResponse {
                processSuccessEvent(mutationEvent,
                                    mutationSync: graphQLResult)
            } else if case let .failure(graphQLResponseError) = graphQLResponse {
                processMutationErrorFromCloud(mutationEvent: mutationEvent,
                                              api: api,
                                              apiError: nil,
                                              graphQLResponseError: graphQLResponseError)
            }
        } else if case let .failure(apiError) = result {
            processMutationErrorFromCloud(mutationEvent: mutationEvent,
                                          api: api,
                                          apiError: apiError,
                                          graphQLResponseError: nil)
        }
    }

    /// Process the successful response from API by updating the mutation events in
    /// mutation event table having `nil` version
    private func processSuccessEvent(_ mutationEvent: MutationEvent,
                                     mutationSync: MutationSync<AnyModel>?) {
        if let mutationSync = mutationSync {
            guard let reconciliationQueue = reconciliationQueue else {
                let dataStoreError = DataStoreError.configuration(
                    "reconciliationQueue is unexpectedly nil",
                    """
                    The reference to reconciliationQueue has been released while an ongoing mutation was being processed.
                    \(AmplifyErrorMessages.reportBugToAWS())
                    """
                )
                stateMachine.notify(action: .errored(dataStoreError))
                return
            }
            reconciliationQueue.offer([mutationSync], modelName: mutationEvent.modelName)
            MutationEvent.reconcilePendingMutationEventsVersion(
                sent: mutationEvent,
                received: mutationSync,
                storageAdapter: storageAdapter
            ) { _ in
                self.completeProcessingEvent(mutationEvent, mutationSync: mutationSync)
            }
        } else {
            completeProcessingEvent(mutationEvent)
        }
    }

    private func processMutationErrorFromCloud(mutationEvent: MutationEvent,
                                               api: APICategoryGraphQLBehaviorExtended,
                                               apiError: APIError?,
                                               graphQLResponseError: GraphQLResponseError<MutationSync<AnyModel>>?) {
        if let apiError = apiError, apiError.isOperationCancelledError {
            log.verbose("SyncMutationToCloudOperation was cancelled, aborting processing")
            return
        }

        let processMutationErrorFromCloudOperation = ProcessMutationErrorFromCloudOperation(
            dataStoreConfiguration: dataStoreConfiguration,
            mutationEvent: mutationEvent,
            api: api,
            storageAdapter: storageAdapter,
            graphQLResponseError: graphQLResponseError,
            apiError: apiError,
            reconciliationQueue: reconciliationQueue
        ) { [weak self] result in
            guard let self = self else {
                return
            }
            self.log.verbose("[ProcessMutationErrorFromCloudOperation] result: \(result)")
            if case let .success(mutationEventOptional) = result,
               let outgoingMutationEvent = mutationEventOptional {
                self.outgoingMutationQueueSubject.send(outgoingMutationEvent)
            }
            self.completeProcessingEvent(mutationEvent)
        }
        operationQueue.addOperation(processMutationErrorFromCloudOperation)
    }

    private func completeProcessingEvent(_ mutationEvent: MutationEvent,
                                         mutationSync: MutationSync<AnyModel>? = nil) {
        // TODO: We shouldn't be inspecting state, we should be using granular enough states to
        // ensure we don't encounter forbidden transitions.
        if case .stopped = stateMachine.state {
            return
        }

        // This doesn't belong here--need to add a `delete` API to the MutationEventSource and pass a
        // reference into the mutation queue.
        Task {
            do {
                _ = try await Amplify.DataStore.delete(mutationEvent)
                self.log.verbose("mutationEvent deleted successfully")
            } catch {
                self.log.verbose("mutationEvent failed to delete: error: \(error)")
            }
            if let mutationSync = mutationSync {
                self.dispatchOutboxMutationProcessedEvent(mutationEvent: mutationEvent,
                                                          mutationSync: mutationSync)
            }
            self.queryMutationEventsFromStorage { [weak self] in
                guard let self else { return }
                self.stateMachine.notify(action: .processedEvent)
            }
        }
    }

    private func queryMutationEventsFromStorage(onComplete: @escaping BasicClosure) {
        let fields = MutationEvent.keys
        let predicate = fields.inProcess == false || fields.inProcess == nil

        storageAdapter.query(MutationEvent.self,
                             predicate: predicate,
                             sort: nil,
                             paginationInput: nil,
                             eagerLoad: true) { [weak self] result in
            guard let self else { return }

            switch result {
            case .success(let events):
                self.dispatchOutboxStatusEvent(isEmpty: events.isEmpty)
            case .failure(let error):
                log.error("Error querying mutation events: \(error)")
            }
            onComplete()
        }
    }

    private func dispatchOutboxMutationProcessedEvent(mutationEvent: MutationEvent,
                                                      mutationSync: MutationSync<AnyModel>) {
        do {
            let localModel = try mutationEvent.decodeModel()
            let outboxMutationProcessedEvent = OutboxMutationEvent
                .fromModelWithMetadata(modelName: mutationEvent.modelName,
                                       model: localModel,
                                       mutationSync: mutationSync)
            let payload = HubPayload(eventName: HubPayload.EventName.DataStore.outboxMutationProcessed,
                                     data: outboxMutationProcessedEvent)
            Amplify.Hub.dispatch(to: .dataStore, payload: payload)
        } catch {
            log.error("\(#function) Couldn't decode local model as \(mutationEvent.modelName) \(error)")
            log.error("\(#function) Couldn't decode from \(mutationEvent.json)")
            return
        }
    }

    private func dispatchOutboxMutationEnqueuedEvent(mutationEvent: MutationEvent) {
        do {
            let localModel = try mutationEvent.decodeModel()
            let outboxMutationEnqueuedEvent = OutboxMutationEvent
                .fromModelWithoutMetadata(modelName: mutationEvent.modelName,
                                          model: localModel)
            let payload = HubPayload(eventName: HubPayload.EventName.DataStore.outboxMutationEnqueued,
                                     data: outboxMutationEnqueuedEvent)
            Amplify.Hub.dispatch(to: .dataStore, payload: payload)
        } catch {
            log.error("\(#function) Couldn't decode local model as \(mutationEvent.modelName) \(error)")
            log.error("\(#function) Couldn't decode from \(mutationEvent.json)")
            return
        }
    }

    private func dispatchOutboxStatusEvent(isEmpty: Bool) {
        let outboxStatusEvent = OutboxStatusEvent(isEmpty: isEmpty)
        let outboxStatusEventPayload = HubPayload(eventName: HubPayload.EventName.DataStore.outboxStatus,
                                                  data: outboxStatusEvent)
        Amplify.Hub.dispatch(to: .dataStore, payload: outboxStatusEventPayload)
    }

}

extension OutgoingMutationQueue: Subscriber {
    typealias Input = MutationEvent
    typealias Failure = DataStoreError

    func receive(subscription: Subscription) {
        log.verbose(#function)
        // Technically, saving the subscription should probably be done in a separate method, but it seems overkill
        // for a lightweight operation, not to mention that the transition from "receiving subscription" to "receiving
        // event" happens so quickly that state management becomes difficult.
        self.subscription = subscription
        stateMachine.notify(action: .receivedSubscription)
    }

    func receive(_ mutationEvent: MutationEvent) -> Subscribers.Demand {
        log.verbose(#function)
        enqueue(mutationEvent)
        return .none
    }

    // TODO: Resolve with an appropriate state machine notification
    func receive(completion: Subscribers.Completion<DataStoreError>) {
        log.verbose(#function)
        subscription?.cancel()
    }
}

extension OutgoingMutationQueue: Resettable {
    func reset() async {
        doStopWithoutNotifyingStateMachine()
    }
}

extension OutgoingMutationQueue: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
