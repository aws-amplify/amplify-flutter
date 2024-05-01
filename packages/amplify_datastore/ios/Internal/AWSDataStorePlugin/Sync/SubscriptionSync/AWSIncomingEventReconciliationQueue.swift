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

typealias DisableSubscriptions = () -> Bool

// Used for testing:
typealias IncomingEventReconciliationQueueFactory =
    ([ModelSchema],
    APICategoryGraphQLBehavior,
    StorageEngineAdapter,
    [DataStoreSyncExpression],
    AuthCategoryBehavior?,
    AuthModeStrategy,
    ModelReconciliationQueueFactory?,
    @escaping DisableSubscriptions
) async -> IncomingEventReconciliationQueue

final class AWSIncomingEventReconciliationQueue: IncomingEventReconciliationQueue {

    private var modelReconciliationQueueSinks: AtomicValue<[String: AnyCancellable]> = AtomicValue(initialValue: [:])

    private let eventReconciliationQueueTopic: CurrentValueSubject<IncomingEventReconciliationQueueEvent, DataStoreError>
    var publisher: AnyPublisher<IncomingEventReconciliationQueueEvent, DataStoreError> {
        return eventReconciliationQueueTopic.eraseToAnyPublisher()
    }

    private let connectionStatusSerialQueue: DispatchQueue
    private var reconcileAndSaveQueue: ReconcileAndSaveOperationQueue
    private var reconciliationQueues: AtomicValue<[ModelName: ModelReconciliationQueue]> = AtomicValue(initialValue: [:])
    private var reconciliationQueueConnectionStatus: [ModelName: Bool]
    private var modelReconciliationQueueFactory: ModelReconciliationQueueFactory

    private var isInitialized: Bool {
        log.verbose("[InitializeSubscription.5] \(reconciliationQueueConnectionStatus.count)/\(modelSchemasCount) initialized")
        return modelSchemasCount == reconciliationQueueConnectionStatus.count
    }
    private let modelSchemasCount: Int

    init(modelSchemas: [ModelSchema],
         api: APICategoryGraphQLBehavior,
         storageAdapter: StorageEngineAdapter,
         syncExpressions: [DataStoreSyncExpression],
         auth: AuthCategoryBehavior? = nil,
         authModeStrategy: AuthModeStrategy,
         modelReconciliationQueueFactory: ModelReconciliationQueueFactory? = nil,
         disableSubscriptions: @escaping () -> Bool = { false }) async {
        self.modelSchemasCount = modelSchemas.count
        self.modelReconciliationQueueSinks.set([:])
        self.eventReconciliationQueueTopic = CurrentValueSubject<IncomingEventReconciliationQueueEvent, DataStoreError>(.idle)
        self.reconciliationQueues.set([:])
        self.reconciliationQueueConnectionStatus = [:]
        self.reconcileAndSaveQueue = ReconcileAndSaveQueue(modelSchemas)

        if let modelReconciliationQueueFactory = modelReconciliationQueueFactory {
            self.modelReconciliationQueueFactory = modelReconciliationQueueFactory
        } else {
            self.modelReconciliationQueueFactory = AWSModelReconciliationQueue.init
        }

        // TODO: Add target for SyncEngine system to help prevent thread explosion and increase performance
        // https://github.com/aws-amplify/amplify-ios/issues/399
        self.connectionStatusSerialQueue
            = DispatchQueue(label: "com.amazonaws.DataStore.AWSIncomingEventReconciliationQueue")

        let subscriptionsDisabled = disableSubscriptions()

        #if targetEnvironment(simulator) && os(watchOS)
        if !subscriptionsDisabled {
            let message = """
            DataStore uses subscriptions via websockets, which work on the watchOS simulator but not on the device.
            Running DataStore on watchOS with subscriptions enabled is only possible during special circumstances
            such as actively streaming audio. See https://github.com/aws-amplify/amplify-swift/pull/3368 for more details.
            """
            self.log.verbose(message)
        }
        #endif

        for modelSchema in modelSchemas {
            let modelName = modelSchema.name
            let syncExpression = syncExpressions.first(where: {
                $0.modelSchema.name == modelName
            })
            let modelPredicate = syncExpression?.modelPredicate() ?? nil
            guard reconciliationQueues.get()[modelName] == nil else {
                log.warn("Duplicate model name found: \(modelName), not subscribing")
                continue
            }
            let queue = await self.modelReconciliationQueueFactory(modelSchema,
                                                                   storageAdapter,
                                                                   api,
                                                                   reconcileAndSaveQueue,
                                                                   modelPredicate,
                                                                   auth,
                                                                   authModeStrategy,
                                                                   subscriptionsDisabled ? OperationDisabledIncomingSubscriptionEventPublisher() : nil)

            reconciliationQueues.with { reconciliationQueues in
                reconciliationQueues[modelName] = queue
            }
            log.verbose("[InitializeSubscription.5] Sink reconciliationQueues \(modelName) \(reconciliationQueues.get().count)")
            let modelReconciliationQueueSink = queue.publisher.sink(receiveCompletion: onReceiveCompletion(completed:),
                                                                    receiveValue: onReceiveValue(receiveValue:))
            modelReconciliationQueueSinks.with { modelReconciliationQueueSinks in
                modelReconciliationQueueSinks[modelName] = modelReconciliationQueueSink
            }
            log.verbose("[InitializeSubscription.5] Sink done reconciliationQueues \(modelName) \(reconciliationQueues.get().count)")
        }
    }

    func start() {
        reconciliationQueues.get().values.forEach { $0.start() }
        eventReconciliationQueueTopic.send(.started)
    }

    func pause() {
        reconciliationQueues.get().values.forEach { $0.pause() }
        eventReconciliationQueueTopic.send(.paused)
    }

    func offer(_ remoteModels: [MutationSync<AnyModel>], modelName: ModelName) {
        guard let queue = reconciliationQueues.get()[modelName] else {
            // TODO: Error handling
            return
        }

        queue.enqueue(remoteModels)
    }

    private func onReceiveCompletion(completed: Subscribers.Completion<DataStoreError>) {
        connectionStatusSerialQueue.async {
            self.reconciliationQueueConnectionStatus = [:]
        }
        switch completed {
        case .failure(let error):
            eventReconciliationQueueTopic.send(completion: .failure(error))
        case .finished:
            eventReconciliationQueueTopic.send(completion: .finished)
        }
    }

    private func onReceiveValue(receiveValue: ModelReconciliationQueueEvent) {
        switch receiveValue {
        case .mutationEvent(let event):
            eventReconciliationQueueTopic.send(.mutationEventApplied(event))
        case .mutationEventDropped(let modelName, let error):
            eventReconciliationQueueTopic.send(.mutationEventDropped(modelName: modelName, error: error))
        case .connected(modelName: let modelName):
            connectionStatusSerialQueue.async {
                self.log.verbose("[InitializeSubscription.4] .connected \(modelName)")
                self.reconciliationQueueConnectionStatus[modelName] = true
                if self.isInitialized {
                    self.log.verbose("[InitializeSubscription.6] connected isInitialized")
                    self.eventReconciliationQueueTopic.send(.initialized)
                }
            }
        case .disconnected(modelName: let modelName, reason: .operationDisabled),
             .disconnected(modelName: let modelName, reason: .unauthorized):
            connectionStatusSerialQueue.async {
                self.log.verbose("[InitializeSubscription.4] subscription disconnected [\(modelName)] reason: [\(receiveValue)]")
                // A disconnected subscription due to operation disabled or unauthorized will still contribute
                // to the overall state of the reconciliation queue system on sending the `.initialized` event
                // since subscriptions may be disabled and have to reconcile locally sourced mutation evemts.
                self.reconciliationQueueConnectionStatus[modelName] = true
                if self.isInitialized {
                    self.log.verbose("[InitializeSubscription.6] disconnected isInitialized")
                    self.eventReconciliationQueueTopic.send(.initialized)
                }
            }
        default:
            break
        }
    }

    func cancel() {
        modelReconciliationQueueSinks.get().values.forEach { $0.cancel() }
        reconciliationQueues.get().values.forEach { $0.cancel()}
        connectionStatusSerialQueue.sync {
            self.reconciliationQueues.set([:])
            self.modelReconciliationQueueSinks.set([:])
        }
    }

    private func dispatchSyncQueriesReady() {
        let syncQueriesReadyPayload = HubPayload(eventName: HubPayload.EventName.DataStore.syncQueriesReady)
        Amplify.Hub.dispatch(to: .dataStore, payload: syncQueriesReadyPayload)
    }

}

extension AWSIncomingEventReconciliationQueue: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.analytics.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}

// MARK: - Static factory
extension AWSIncomingEventReconciliationQueue {
    static let factory: IncomingEventReconciliationQueueFactory = {
        modelSchemas, api, storageAdapter, syncExpressions, auth, authModeStrategy, _, disableSubscriptions in
        await AWSIncomingEventReconciliationQueue(modelSchemas: modelSchemas,
                                                  api: api,
                                                  storageAdapter: storageAdapter,
                                                  syncExpressions: syncExpressions,
                                                  auth: auth,
                                                  authModeStrategy: authModeStrategy,
                                                  modelReconciliationQueueFactory: nil,
                                                  disableSubscriptions: disableSubscriptions)
    }
}

// MARK: - AWSIncomingEventReconciliationQueue + Resettable
extension AWSIncomingEventReconciliationQueue: Resettable {

    func reset() async {
        for queue in reconciliationQueues.get().values {
            guard let queue = queue as? Resettable else {
                continue
            }
            log.verbose("Resetting reconciliationQueue")
            await queue.reset()
            log.verbose("Resetting reconciliationQueue: finished")
        }

        log.verbose("Resetting reconcileAndSaveQueue")
        reconcileAndSaveQueue.cancelAllOperations()
        // Reset is used in internal testing only. Some operations get kicked off at this point and do not finish
        // We're sometimes hitting a deadlock when waiting for them to finish. Commenting this out and letting
        // the tests continue onto the next works pretty well, but ideally ReconcileAndLocalSaveOperation's should 
        // always finish. We can uncomment this to explore a better fix that will still gives us test stability.
        // reconcileAndSaveQueue.waitUntilOperationsAreFinished()
        log.verbose("Resetting reconcileAndSaveQueue: finished")

        log.verbose("Cancelling AWSIncomingEventReconciliationQueue")
        cancel()
        log.verbose("Cancelling AWSIncomingEventReconciliationQueue: finished")
    }

}
