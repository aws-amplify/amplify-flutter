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

typealias StorageEngineBehaviorFactory =
    (Bool,
    DataStoreConfiguration,
    String,
    String,
    String,
    UserDefaults) throws -> StorageEngineBehavior

// swiftlint:disable type_body_length
final class StorageEngine: StorageEngineBehavior {
    // TODO: Make this private once we get a mutation flow that passes the type of mutation as needed
    let storageAdapter: StorageEngineAdapter
    var syncEngine: RemoteSyncEngineBehavior?
    let validAPIPluginKey: String
    let validAuthPluginKey: String
    var signInListener: UnsubscribeToken?
    let isSyncEnabled: Bool

    let dataStoreConfiguration: DataStoreConfiguration
    private let operationQueue: OperationQueue

    var iSyncEngineSink: Any?
    var syncEngineSink: AnyCancellable? {
        get {
            if let iSyncEngineSink = iSyncEngineSink as? AnyCancellable {
                return iSyncEngineSink
            }
            return nil
        }
        set {
            iSyncEngineSink = newValue
        }
    }

    var iStorageEnginePublisher: Any?
    var storageEnginePublisher: PassthroughSubject<StorageEngineEvent, DataStoreError> {
        get {
            if iStorageEnginePublisher == nil {
                iStorageEnginePublisher = PassthroughSubject<StorageEngineEvent, DataStoreError>()
            }
            // swiftlint:disable:next force_cast
            return iStorageEnginePublisher as! PassthroughSubject<StorageEngineEvent, DataStoreError>
        }
        set {
            iStorageEnginePublisher = newValue
        }
    }

    var publisher: AnyPublisher<StorageEngineEvent, DataStoreError> {
        return storageEnginePublisher.eraseToAnyPublisher()
    }

    static var systemModelSchemas: [ModelSchema] {
        return [
            ModelSyncMetadata.schema,
            MutationEvent.schema,
            MutationSyncMetadata.schema
        ]
    }

    // Internal initializer used for testing, to allow lazy initialization of the SyncEngine. Note that the provided
    // storageAdapter must have already been set up with system models
    init(storageAdapter: StorageEngineAdapter,
         dataStoreConfiguration: DataStoreConfiguration,
         syncEngine: RemoteSyncEngineBehavior?,
         validAPIPluginKey: String,
         validAuthPluginKey: String,
         isSyncEnabled: Bool = false
    ) {
        self.storageAdapter = storageAdapter
        self.dataStoreConfiguration = dataStoreConfiguration
        self.syncEngine = syncEngine
        self.validAPIPluginKey = validAPIPluginKey
        self.validAuthPluginKey = validAuthPluginKey
        self.isSyncEnabled = isSyncEnabled

        let operationQueue = OperationQueue()
        operationQueue.name = "com.amazonaws.StorageEngine"
        self.operationQueue = operationQueue
    }

    convenience init(isSyncEnabled: Bool,
                     dataStoreConfiguration: DataStoreConfiguration,
                     validAPIPluginKey: String = "awsAPIPlugin",
                     validAuthPluginKey: String = "awsCognitoAuthPlugin",
                     modelRegistryVersion: String,
                     userDefault: UserDefaults = UserDefaults.standard) throws {

        let key = kCFBundleNameKey as String
        let databaseName = Bundle.main.object(forInfoDictionaryKey: key) as? String ?? "app"

        let storageAdapter = try SQLiteStorageEngineAdapter(version: modelRegistryVersion, databaseName: databaseName)

        try storageAdapter.setUp(modelSchemas: StorageEngine.systemModelSchemas)

        self.init(
            storageAdapter: storageAdapter,
            dataStoreConfiguration: dataStoreConfiguration,
            syncEngine: nil,
            validAPIPluginKey: validAPIPluginKey,
            validAuthPluginKey: validAuthPluginKey,
            isSyncEnabled: isSyncEnabled
        )
        self.storageEnginePublisher = PassthroughSubject<StorageEngineEvent, DataStoreError>()
    }

    func onReceiveCompletion(receiveCompletion: Subscribers.Completion<DataStoreError>) {
        switch receiveCompletion {
        case .failure(let dataStoreError):
            log.debug("RemoteSyncEngine publisher completed with error \(dataStoreError)")
        case .finished:
            log.debug("RemoteSyncEngine publisher completed successfully")
        }

        stopSync { result in
            switch result {
                case .success:
                    self.log.info("Stopping DataStore successful.")
                case .failure(let error):
                    self.log.error("Failed to stop StorageEngine with error: \(error)")
            }
        }
    }

    func onReceive(receiveValue: RemoteSyncEngineEvent) {
        switch receiveValue {
        case .storageAdapterAvailable:
            break
        case .subscriptionsPaused:
            break
        case .mutationsPaused:
            break
        case .clearedStateOutgoingMutations:
            break
        case .subscriptionsInitialized:
            break
        case .performedInitialSync:
            break
        case .subscriptionsActivated:
            break
        case .mutationQueueStarted:
            break
        case .syncStarted:
            break
        case .cleanedUp:
            break
        case .cleanedUpForTermination:
            break
        case .mutationEvent(let mutationEvent):
            storageEnginePublisher.send(.mutationEvent(mutationEvent))
        case .modelSyncedEvent(let modelSyncedEvent):
            storageEnginePublisher.send(.modelSyncedEvent(modelSyncedEvent))
        case .syncQueriesReadyEvent:
            storageEnginePublisher.send(.syncQueriesReadyEvent)
        case .readyEvent:
            storageEnginePublisher.send(.readyEvent)
        case .schedulingRestart:
            break
        }
    }

    func setUp(modelSchemas: [ModelSchema]) throws {
        try storageAdapter.setUp(modelSchemas: modelSchemas)
    }

    func applyModelMigrations(modelSchemas: [ModelSchema]) throws {
        try storageAdapter.applyModelMigrations(modelSchemas: modelSchemas)
    }

    public func save<M: Model>(_ model: M,
                               modelSchema: ModelSchema,
                               condition: QueryPredicate? = nil,
                               eagerLoad: Bool = true,
                               completion: @escaping DataStoreCallback<M>) {

        // TODO: Refactor this into a proper request/result where the result includes metadata like the derived
        // mutation type
        let modelExists: Bool
        do {
            modelExists = try storageAdapter.exists(modelSchema,
                                                    withIdentifier: model.identifier(schema: modelSchema),
                                                    predicate: nil)
        } catch {
            let dataStoreError = DataStoreError.invalidOperation(causedBy: error)
            completion(.failure(dataStoreError))
            return
        }

        let mutationType = modelExists ? MutationEvent.MutationType.update : .create

        // If it is `create`, and there is a condition, and that condition is not `.all`, fail the request
        if mutationType == .create, let condition = condition, !condition.isAll {
            let dataStoreError = DataStoreError.invalidCondition(
                "Cannot apply a condition on model which does not exist.",
                "Save the model instance without a condition first.")
            completion(.failure(causedBy: dataStoreError))
            return
        }

        do {
            try storageAdapter.transaction {
                let result = self.storageAdapter.save(model, 
                                                      modelSchema: modelSchema,
                                                      condition: condition,
                                                      eagerLoad: eagerLoad)
                guard modelSchema.isSyncable else {
                    completion(result)
                    return
                }

                guard case .success(let savedModel) = result else {
                    completion(result)
                    return
                }

                guard let syncEngine else {
                    let message = "No SyncEngine available to sync mutation event, rollback save."
                    self.log.verbose("\(#function) \(message) : \(savedModel)")
                    throw DataStoreError.internalOperation(
                        message,
                        "`DataStore.save()` was interrupted. `DataStore.stop()` may have been called.",
                        nil)
                }
                self.log.verbose("\(#function) syncing mutation for \(savedModel)")
                self.syncMutation(of: savedModel,
                                  modelSchema: modelSchema,
                                  mutationType: mutationType,
                                  predicate: condition,
                                  syncEngine: syncEngine,
                                  completion: completion)
            }
        } catch {
            completion(.failure(causedBy: error))
        }
    }

    func save<M: Model>(_ model: M,
                        condition: QueryPredicate? = nil,
                        eagerLoad: Bool = true,
                        completion: @escaping DataStoreCallback<M>) {
        save(model,
             modelSchema: model.schema,
             condition: condition,
             eagerLoad: eagerLoad,
             completion: completion)
    }

    @available(*, deprecated, message: "Use delete(:modelSchema:withIdentifier:predicate:completion")
    func delete<M: Model>(_ modelType: M.Type,
                          modelSchema: ModelSchema,
                          withId id: Model.Identifier,
                          condition: QueryPredicate? = nil,
                          completion: @escaping (DataStoreResult<M?>) -> Void) {
        let cascadeDeleteOperation = CascadeDeleteOperation(storageAdapter: storageAdapter,
                                                            syncEngine: syncEngine,
                                                            modelType: modelType, modelSchema: modelSchema,
                                                            withIdentifier: DefaultModelIdentifier<M>.makeDefault(id: id),
                                                            condition: condition) { completion($0) }
        operationQueue.addOperation(cascadeDeleteOperation)
    }

    func delete<M: Model>(_ modelType: M.Type,
                          modelSchema: ModelSchema,
                          withIdentifier identifier: ModelIdentifierProtocol,
                          condition: QueryPredicate?,
                          completion: @escaping DataStoreCallback<M?>) {
        let cascadeDeleteOperation = CascadeDeleteOperation(storageAdapter: storageAdapter,
                                                            syncEngine: syncEngine,
                                                            modelType: modelType, modelSchema: modelSchema,
                                                            withIdentifier: identifier,
                                                            condition: condition) { completion($0) }
        operationQueue.addOperation(cascadeDeleteOperation)

    }

    func delete<M: Model>(_ modelType: M.Type,
                          modelSchema: ModelSchema,
                          filter: QueryPredicate,
                          completion: @escaping DataStoreCallback<[M]>) {
        let cascadeDeleteOperation = CascadeDeleteOperation(storageAdapter: storageAdapter,
                                                            syncEngine: syncEngine,
                                                            modelType: modelType,
                                                            modelSchema: modelSchema,
                                                            filter: filter) { completion($0) }
        operationQueue.addOperation(cascadeDeleteOperation)
    }

    func query<M: Model>(_ modelType: M.Type,
                         modelSchema: ModelSchema,
                         predicate: QueryPredicate?,
                         sort: [QuerySortDescriptor]?,
                         paginationInput: QueryPaginationInput?,
                         eagerLoad: Bool = true,
                         completion: (DataStoreResult<[M]>) -> Void) {
        return storageAdapter.query(modelType,
                                    modelSchema: modelSchema,
                                    predicate: predicate,
                                    sort: sort,
                                    paginationInput: paginationInput,
                                    eagerLoad: eagerLoad,
                                    completion: completion)
    }

    func query<M: Model>(_ modelType: M.Type,
                         predicate: QueryPredicate? = nil,
                         sort: [QuerySortDescriptor]? = nil,
                         paginationInput: QueryPaginationInput? = nil,
                         eagerLoad: Bool = true,
                         completion: DataStoreCallback<[M]>) {
        query(modelType,
              modelSchema: modelType.schema,
              predicate: predicate,
              sort: sort,
              paginationInput: paginationInput,
              eagerLoad: eagerLoad,
              completion: completion)
    }

    func clear(completion: @escaping DataStoreCallback<Void>) {
        if let syncEngine = syncEngine {
            syncEngine.stop(completion: { _ in
                self.syncEngine = nil
                self.storageAdapter.clear(completion: completion)
            })
        } else {
            storageAdapter.clear(completion: completion)
        }
    }

    func stopSync(completion: @escaping DataStoreCallback<Void>) {
        if let syncEngine = syncEngine {
            syncEngine.stop { _ in
                self.syncEngine = nil
                completion(.successfulVoid)
            }
        } else {
            completion(.successfulVoid)
        }
    }

    @available(iOS 13.0, *)
    private func syncMutation<M: Model>(of savedModel: M,
                                        modelSchema: ModelSchema,
                                        mutationType: MutationEvent.MutationType,
                                        predicate: QueryPredicate? = nil,
                                        syncEngine: RemoteSyncEngineBehavior,
                                        completion: @escaping DataStoreCallback<M>) {
        let mutationEvent: MutationEvent
        do {
            var graphQLFilterJSON: String?
            if let predicate = predicate {
                graphQLFilterJSON = try GraphQLFilterConverter.toJSON(predicate,
                                                                      modelSchema: modelSchema)
            }

            mutationEvent = try MutationEvent(model: savedModel,
                                              modelSchema: modelSchema,
                                              mutationType: mutationType,
                                              graphQLFilterJSON: graphQLFilterJSON)

        } catch {
            let dataStoreError = DataStoreError(error: error)
            completion(.failure(dataStoreError))
            return
        }

        let mutationEventCallback: DataStoreCallback<MutationEvent> = { result in
            switch result {
            case .failure(let dataStoreError):
                completion(.failure(dataStoreError))
            case .success(let mutationEvent):
                self.log.verbose("\(#function) successfully submitted \(mutationEvent.modelName) to sync engine \(mutationEvent)")
                completion(.success(savedModel))
            }
        }

        submitToSyncEngine(mutationEvent: mutationEvent,
                           syncEngine: syncEngine,
                           completion: mutationEventCallback)
    }

    private func submitToSyncEngine(mutationEvent: MutationEvent,
                                    syncEngine: RemoteSyncEngineBehavior,
                                    completion: @escaping DataStoreCallback<MutationEvent>) {
        Task {
            syncEngine.submit(mutationEvent, completion: completion)
        }
    }

}

extension StorageEngine: Resettable {
    func reset() async {
        // TOOD: Perform cleanup on StorageAdapter, including releasing its `Connection` if needed
        if let resettable = syncEngine as? Resettable {
            log.verbose("Resetting syncEngine")
            await resettable.reset()
            self.log.verbose("Resetting syncEngine: finished")
        }
    }
}

extension StorageEngine: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
