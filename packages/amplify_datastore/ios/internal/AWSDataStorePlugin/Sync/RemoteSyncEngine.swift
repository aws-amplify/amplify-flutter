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

// swiftlint:disable type_body_length file_length
class RemoteSyncEngine: RemoteSyncEngineBehavior {

    weak var storageAdapter: StorageEngineAdapter?

    private var dataStoreConfiguration: DataStoreConfiguration

    // Authorization mode strategy
    private var authModeStrategy: AuthModeStrategy

    // Assigned at `start`
    weak var api: APICategoryGraphQLBehavior?
    weak var auth: AuthCategoryBehavior?

    // Assigned and released inside `performInitialQueries`, but we maintain a reference so we can `reset`
    private var initialSyncOrchestrator: InitialSyncOrchestrator?
    private let initialSyncOrchestratorFactory: InitialSyncOrchestratorFactory

    var syncEventEmitter: SyncEventEmitter?
    var readyEventEmitter: ReadyEventEmitter?

    private let mutationEventIngester: MutationEventIngester
    let mutationEventPublisher: MutationEventPublisher
    private let outgoingMutationQueue: OutgoingMutationQueueBehavior
    private var outgoingMutationQueueSink: AnyCancellable?

    private var reconciliationQueueSink: AnyCancellable?
    private var syncEventEmitterSink: AnyCancellable?
    private var readyEventEmitterSink: AnyCancellable?

    let remoteSyncTopicPublisher: PassthroughSubject<RemoteSyncEngineEvent, DataStoreError>
    var publisher: AnyPublisher<RemoteSyncEngineEvent, DataStoreError> {
        return remoteSyncTopicPublisher.eraseToAnyPublisher()
    }

    /// Synchronizes startup operations
    let taskQueue = TaskQueue<Void>()

    // Assigned at `setUpCloudSubscriptions`
    var reconciliationQueue: IncomingEventReconciliationQueue?
    var reconciliationQueueFactory: IncomingEventReconciliationQueueFactory

    let stateMachine: StateMachine<State, Action>
    private var stateMachineSink: AnyCancellable?

    var networkReachabilityPublisher: AnyPublisher<ReachabilityUpdate, Never>?
    private var networkReachabilitySink: AnyCancellable?
    var mutationRetryNotifier: MutationRetryNotifier?
    let requestRetryablePolicy: RequestRetryablePolicy
    var currentAttemptNumber: Int

    var finishedCompletionBlock: DataStoreCallback<Void>?

    /// Initializes the CloudSyncEngine with the specified storageAdapter as the provider for persistence of
    /// MutationEvents, sync metadata, and conflict resolution metadata. Immediately initializes the incoming mutation
    /// queue so it can begin accepting incoming mutations from DataStore.
    convenience init(storageAdapter: StorageEngineAdapter,
                     dataStoreConfiguration: DataStoreConfiguration,
                     outgoingMutationQueue: OutgoingMutationQueueBehavior? = nil,
                     initialSyncOrchestratorFactory: InitialSyncOrchestratorFactory? = nil,
                     reconciliationQueueFactory: IncomingEventReconciliationQueueFactory? = nil,
                     stateMachine: StateMachine<State, Action>? = nil,
                     networkReachabilityPublisher: AnyPublisher<ReachabilityUpdate, Never>? = nil,
                     requestRetryablePolicy: RequestRetryablePolicy? = nil) throws {

        let mutationDatabaseAdapter = try AWSMutationDatabaseAdapter(storageAdapter: storageAdapter)
        let awsMutationEventPublisher = AWSMutationEventPublisher(eventSource: mutationDatabaseAdapter)

        // initialize auth strategy
        let resolvedAuthStrategy: AuthModeStrategy = dataStoreConfiguration.authModeStrategyType.resolveStrategy()

        let outgoingMutationQueue = outgoingMutationQueue ??
            OutgoingMutationQueue(storageAdapter: storageAdapter,
                                  dataStoreConfiguration: dataStoreConfiguration,
                                  authModeStrategy: resolvedAuthStrategy)
        // swiftlint:disable line_length
        let reconciliationQueueFactory = reconciliationQueueFactory ??
        AWSIncomingEventReconciliationQueue.init(modelSchemas:api:storageAdapter:syncExpressions:auth:authModeStrategy:modelReconciliationQueueFactory:disableSubscriptions:)
        // swiftlint:enable line_length
        let initialSyncOrchestratorFactory = initialSyncOrchestratorFactory ??
            AWSInitialSyncOrchestrator.init(dataStoreConfiguration:authModeStrategy:api:reconciliationQueue:storageAdapter:)

        let resolver = RemoteSyncEngine.Resolver.resolve(currentState:action:)
        let stateMachine = stateMachine ?? StateMachine(initialState: .notStarted,
                                                        resolver: resolver)

        let requestRetryablePolicy = requestRetryablePolicy ?? RequestRetryablePolicy()

        self.init(storageAdapter: storageAdapter,
                  dataStoreConfiguration: dataStoreConfiguration,
                  authModeStrategy: resolvedAuthStrategy,
                  outgoingMutationQueue: outgoingMutationQueue,
                  mutationEventIngester: mutationDatabaseAdapter,
                  mutationEventPublisher: awsMutationEventPublisher,
                  initialSyncOrchestratorFactory: initialSyncOrchestratorFactory,
                  reconciliationQueueFactory: reconciliationQueueFactory,
                  stateMachine: stateMachine,
                  networkReachabilityPublisher: networkReachabilityPublisher,
                  requestRetryablePolicy: requestRetryablePolicy)
    }

    init(storageAdapter: StorageEngineAdapter,
         dataStoreConfiguration: DataStoreConfiguration,
         authModeStrategy: AuthModeStrategy,
         outgoingMutationQueue: OutgoingMutationQueueBehavior,
         mutationEventIngester: MutationEventIngester,
         mutationEventPublisher: MutationEventPublisher,
         initialSyncOrchestratorFactory: @escaping InitialSyncOrchestratorFactory,
         reconciliationQueueFactory: @escaping IncomingEventReconciliationQueueFactory,
         stateMachine: StateMachine<State, Action>,
         networkReachabilityPublisher: AnyPublisher<ReachabilityUpdate, Never>?,
         requestRetryablePolicy: RequestRetryablePolicy) {
        self.storageAdapter = storageAdapter
        self.dataStoreConfiguration = dataStoreConfiguration
        self.authModeStrategy = authModeStrategy
        self.mutationEventIngester = mutationEventIngester
        self.mutationEventPublisher = mutationEventPublisher
        self.outgoingMutationQueue = outgoingMutationQueue
        self.initialSyncOrchestratorFactory = initialSyncOrchestratorFactory
        self.reconciliationQueueFactory = reconciliationQueueFactory
        self.remoteSyncTopicPublisher = PassthroughSubject<RemoteSyncEngineEvent, DataStoreError>()
        self.networkReachabilityPublisher = networkReachabilityPublisher
        self.requestRetryablePolicy = requestRetryablePolicy

        self.currentAttemptNumber = 1

        self.stateMachine = stateMachine
        self.stateMachineSink = self.stateMachine
            .$state
            .sink { [weak self] newState in
                guard let self = self else {
                    return
                }
                self.log.verbose("New state: \(newState)")
                self.taskQueue.async {
                    await self.respond(to: newState)
                }
        }

        self.authModeStrategy.authDelegate = self
    }

    // swiftlint:disable cyclomatic_complexity
    /// Listens to incoming state changes and invokes the appropriate asynchronous methods in response.
    private func respond(to newState: State) async {
        log.verbose("\(#function): \(newState)")

        switch newState {
        case .notStarted:
            break
        case .pausingSubscriptions:
            pauseSubscriptions()
        case .pausingMutationQueue:
            pauseMutations()
        case .clearingStateOutgoingMutations(let storageAdapter):
            clearStateOutgoingMutations(storageAdapter: storageAdapter)
        case .initializingSubscriptions(let api, let storageAdapter):
            await initializeSubscriptions(api: api, storageAdapter: storageAdapter)
        case .performingInitialSync:
            performInitialSync()
        case .activatingCloudSubscriptions:
            activateCloudSubscriptions()
        case .activatingMutationQueue(let api, let mutationEventPublisher, let reconciliationQueue):
            startMutationQueue(api: api,
                               mutationEventPublisher: mutationEventPublisher,
                               reconciliationQueue: reconciliationQueue)
        case .notifyingSyncStarted:
            notifySyncStarted()

        case .syncEngineActive:
            log.debug("RemoteSyncEngine SyncEngineActive")

        case .cleaningUp(let error):
            cleanup(error: error)

        case .cleaningUpForTermination:
            cleanupForTermination()

        case .schedulingRestart(let error):
            scheduleRestartOrTerminate(error: error)

        case .terminate:
            terminate()
        }
    }
    // swiftlint:enable cyclomatic_complexity

    func start(api: APICategoryGraphQLBehavior, auth: AuthCategoryBehavior?) {
        guard storageAdapter != nil else {
            log.error(error: DataStoreError.nilStorageAdapter())
            remoteSyncTopicPublisher.send(completion: .failure(DataStoreError.nilStorageAdapter()))
            return
        }
        self.api = api
        self.auth = auth

        if networkReachabilityPublisher == nil,
            let reachability = api as? APICategoryReachabilityBehavior {
            do {
                networkReachabilityPublisher = try reachability.reachabilityPublisher()
            } catch {
                log.error("\(#function): Unable to listen on reachability: \(error)")
            }
        }

        networkReachabilitySink =
            networkReachabilityPublisher?
            .sink { [weak self] in self?.onReceiveNetworkStatus(networkStatus: $0) }

        remoteSyncTopicPublisher.send(.storageAdapterAvailable)
        stateMachine.notify(action: .receivedStart)
    }

    func stop(completion: @escaping DataStoreCallback<Void>) {
        if finishedCompletionBlock == nil {
            finishedCompletionBlock = completion
        }
        stateMachine.notify(action: .finished)
    }

    func isSyncing() -> Bool {
        if case .notStarted = stateMachine.state {
            return false
        }
        return true
    }

    func terminate() {
        remoteSyncTopicPublisher.send(completion: .finished)
        cleanup()
        if let completionBlock = finishedCompletionBlock {
            completionBlock(.successfulVoid)
            finishedCompletionBlock = nil
        }
    }

    func submit(_ mutationEvent: MutationEvent, completion: @escaping (Result<MutationEvent, DataStoreError>) -> Void) {
        mutationEventIngester.submit(mutationEvent: mutationEvent, completion: completion)
    }

    // MARK: - Startup sequence
    private func pauseSubscriptions() {
        log.debug(#function)
        reconciliationQueue?.pause()

        remoteSyncTopicPublisher.send(.subscriptionsPaused)
        stateMachine.notify(action: .pausedSubscriptions)
    }

    private func pauseMutations() {
        log.debug(#function)
        outgoingMutationQueue.stopSyncingToCloud {
            self.remoteSyncTopicPublisher.send(.mutationsPaused)
            if let storageAdapter = self.storageAdapter {
                self.stateMachine.notify(action: .pausedMutationQueue(storageAdapter))
            }
        }
    }

    private func clearStateOutgoingMutations(storageAdapter: StorageEngineAdapter) {
        log.debug(#function)
        let mutationEventClearState = MutationEventClearState(storageAdapter: storageAdapter)
        mutationEventClearState.clearStateOutgoingMutations {
            if let api = self.api {
                self.remoteSyncTopicPublisher.send(.clearedStateOutgoingMutations)
                self.stateMachine.notify(action: .clearedStateOutgoingMutations(api, storageAdapter))
            }
        }
    }

    private func initializeSubscriptions(api: APICategoryGraphQLBehavior,
                                         storageAdapter: StorageEngineAdapter) async {
        log.debug("[InitializeSubscription] \(#function)")
        let syncableModelSchemas = ModelRegistry.modelSchemas.filter { $0.isSyncable }
        reconciliationQueue = await reconciliationQueueFactory(syncableModelSchemas,
                                                               api,
                                                               storageAdapter,
                                                               dataStoreConfiguration.syncExpressions,
                                                               auth,
                                                               authModeStrategy,
                                                               nil,
                                                               dataStoreConfiguration.disableSubscriptions)
        reconciliationQueueSink = reconciliationQueue?
            .publisher
            .sink(
                receiveCompletion: { [weak self] in self?.onReceiveCompletion(receiveCompletion: $0) },
                receiveValue: { [weak self] in self?.onReceive(receiveValue: $0) }
            )
    }

    private func performInitialSync() {
        log.debug("[InitializeSubscription.6] \(#function)")

        let initialSyncOrchestrator = initialSyncOrchestratorFactory(dataStoreConfiguration,
                                                                     authModeStrategy,
                                                                     api,
                                                                     reconciliationQueue,
                                                                     storageAdapter)

        // Hold a reference so we can `reset` while initial sync is in process
        self.initialSyncOrchestrator = initialSyncOrchestrator

        syncEventEmitter = SyncEventEmitter(initialSyncOrchestrator: initialSyncOrchestrator,
                                            reconciliationQueue: reconciliationQueue)

        syncEventEmitterSink = syncEventEmitter?
            .publisher
            .sink(
                receiveCompletion: { _ in },
                receiveValue: { [weak self] in self?.onReceive(receiveValue: $0) }
            )

        readyEventEmitter = ReadyEventEmitter(remoteSyncEnginePublisher: publisher)
        readyEventEmitterSink = readyEventEmitter?
            .publisher.sink(
                receiveCompletion: { _ in },
                receiveValue: { [weak self] in self?.onReceive(receiveValue: $0) }
            )

        initialSyncOrchestrator.sync { [weak self] result in
            guard let self = self else {
                return
            }

            if case .failure(let dataStoreError) = result {
                self.log.error(dataStoreError.errorDescription)
                self.log.error(dataStoreError.recoverySuggestion)
                if let underlyingError = dataStoreError.underlyingError {
                    self.log.error("\(underlyingError)")
                }

                self.stateMachine.notify(action: .errored(dataStoreError))
            } else {
                self.log.info("Successfully finished sync")

                self.remoteSyncTopicPublisher.send(.performedInitialSync)
                self.stateMachine.notify(action: .performedInitialSync)
            }
            self.initialSyncOrchestrator = nil
        }
    }

    private func activateCloudSubscriptions() {
        log.debug(#function)
        guard let reconciliationQueue = reconciliationQueue else {
            let error = DataStoreError.internalOperation("reconciliationQueue is unexpectedly `nil`", "", nil)
            stateMachine.notify(action: .errored(error))
            return
        }

        reconciliationQueue.start()
    }

    private func startMutationQueue(api: APICategoryGraphQLBehavior,
                                    mutationEventPublisher: MutationEventPublisher,
                                    reconciliationQueue: IncomingEventReconciliationQueue?) {
        log.debug(#function)
        outgoingMutationQueue.startSyncingToCloud(api: api,
                                                  mutationEventPublisher: mutationEventPublisher,
                                                  reconciliationQueue: reconciliationQueue)

        remoteSyncTopicPublisher.send(.mutationQueueStarted)
        stateMachine.notify(action: .activatedMutationQueue)
    }

    private func cleanup(error: AmplifyError) {
        cleanup()
        outgoingMutationQueue.stopSyncingToCloud {
            self.remoteSyncTopicPublisher.send(.cleanedUp)
            self.stateMachine.notify(action: .cleanedUp(error))
        }
    }

    private func cleanupForTermination() {
        cleanup()
        outgoingMutationQueue.stopSyncingToCloud {
            self.mutationEventPublisher.cancel()
            self.remoteSyncTopicPublisher.send(.cleanedUpForTermination)
            self.stateMachine.notify(action: .cleanedUpForTermination)
        }
    }

    /// Must be invoked from workQueue (as in during a `respond` call
    private func notifySyncStarted() {
        resetCurrentAttemptNumber()
        log.verbose("[Lifecycle event 5]: syncStarted")
        Amplify.Hub.dispatch(to: .dataStore,
                             payload: HubPayload(eventName: HubPayload.EventName.DataStore.syncStarted))

        remoteSyncTopicPublisher.send(.syncStarted)
        stateMachine.notify(action: .notifiedSyncStarted)
    }

    private func onReceiveNetworkStatus(networkStatus: ReachabilityUpdate) {
        let networkStatusEvent = NetworkStatusEvent(active: networkStatus.isOnline)
        let networkStatusEventPayload = HubPayload(eventName: HubPayload.EventName.DataStore.networkStatus,
                                                   data: networkStatusEvent)
        Amplify.Hub.dispatch(to: .dataStore, payload: networkStatusEventPayload)
    }

    /// Must be invoked from workQueue (as during a `respond` call)
    func cleanup() {
        reconciliationQueue?.cancel()
        reconciliationQueue = nil
        reconciliationQueueSink = nil
        syncEventEmitter = nil
        syncEventEmitterSink = nil
        readyEventEmitter = nil
    }
}

extension RemoteSyncEngine: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}

extension RemoteSyncEngine: Resettable {
    func reset() async {
        let mirror = Mirror(reflecting: self)
        for child in mirror.children {
            let label = child.label ?? "some RemoteSyncEngine child"
            guard label != "api",
                  label != "auth" else {
                log.verbose("Not resetting \(label) from RemoteSyncEngine")
                continue
            }

            if let resettable = child.value as? Resettable {
                log.verbose("Resetting \(label)")
                await resettable.reset()
                self.log.verbose("Resetting \(label): finished")
            }
        }
    }
}
// swiftlint:enable type_body_length file_length
