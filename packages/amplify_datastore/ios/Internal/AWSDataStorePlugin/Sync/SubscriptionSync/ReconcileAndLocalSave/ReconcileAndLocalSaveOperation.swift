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
/// Reconciles an incoming model mutation with the stored model. If there is no conflict (e.g., the incoming model has
/// a later version than the stored model), then write the new data to the store.
class ReconcileAndLocalSaveOperation: AsynchronousOperation {

    /// Disambiguation for the version of the model incoming from the remote API
    typealias RemoteModel = MutationSync<AnyModel>

    /// Disambiguation for the sync metadata for the model stored in local datastore
    typealias LocalMetadata = MutationSyncMetadata

    /// Disambiguation for the version of the model that was applied to the local datastore. In the case of a create or
    /// update mutation, this represents the saved model. In the case of a delete mutation, this is the data that was
    /// sent from the remote API as part of the mutation.
    typealias AppliedModel = MutationSync<AnyModel>

    let id: UUID = UUID()
    private let workQueue = DispatchQueue(label: "com.amazonaws.ReconcileAndLocalSaveOperation",
                                          target: DispatchQueue.global())

    private weak var storageAdapter: StorageEngineAdapter?
    private let stateMachine: StateMachine<State, Action>
    private let remoteModels: [RemoteModel]
    private let modelSchema: ModelSchema
    private let stopwatch: Stopwatch
    private var stateMachineSink: AnyCancellable?
    private var cancellables: Set<AnyCancellable>
    private let mutationEventPublisher: PassthroughSubject<ReconcileAndLocalSaveOperationEvent, DataStoreError>
    public var publisher: AnyPublisher<ReconcileAndLocalSaveOperationEvent, DataStoreError> {
        return mutationEventPublisher.eraseToAnyPublisher()
    }

    var isEagerLoad: Bool = true

    init(modelSchema: ModelSchema,
         remoteModels: [RemoteModel],
         storageAdapter: StorageEngineAdapter?,
         stateMachine: StateMachine<State, Action>? = nil) {
        self.modelSchema = modelSchema
        self.remoteModels = remoteModels
        self.storageAdapter = storageAdapter
        self.stopwatch = Stopwatch()
        self.stateMachine = stateMachine ?? StateMachine(initialState: .waiting,
                                                         resolver: Resolver.resolve(currentState:action:))
        self.mutationEventPublisher = PassthroughSubject<ReconcileAndLocalSaveOperationEvent, DataStoreError>()

        self.cancellables = Set<AnyCancellable>()

        // `isEagerLoad` is true by default, unless the models contain the rootPath
        // which is indication that codegenerated model types support for lazy loading.
        if isEagerLoad && ModelRegistry.modelType(from: modelSchema.name)?.rootPath != nil {
            self.isEagerLoad = false
        }

        super.init()

        self.stateMachineSink = self.stateMachine
            .$state
            .sink { [weak self] newState in
                guard let self = self else {
                    return
                }
                self.log.verbose("New state: \(newState)")
                self.workQueue.async {
                    self.respond(to: newState)
                }
            }
    }

    override func main() {
        log.verbose(#function)

        guard !isCancelled else {
            return
        }

        stopwatch.start()
        stateMachine.notify(action: .started(remoteModels))
    }

    /// Listens to incoming state changes and invokes the appropriate asynchronous methods in response.
    func respond(to newState: State) {
        log.verbose("\(#function): \(newState)")

        switch newState {
        case .waiting:
            break

        case .reconciling(let remoteModels):
            reconcile(remoteModels: remoteModels)

        case .inError(let error):
            // Maybe we have to notify the Hub?
            log.error(error: error)
            notifyFinished()

        case .finished:
            // Maybe we have to notify the Hub?
            notifyFinished()
        }
    }

    // MARK: - Responder methods

    /// The reconcile function incorporates incoming mutation events into the local database through the following steps:
    /// 1. Retrieve the local metadata of the models.
    /// 2. Generate dispositions based on incoming mutation events and local metadata.
    /// 3. Categorize dispositions into:
    ///   3.1 Apply metadata only for those with existing pending mutations.
    ///     3.1.1 Notify the count of these incoming mutation events as dropped items.
    ///   3.2 Apply incoming mutation and metadata for those without existing pending mutations.
    /// 4. Notify the final result.
    func reconcile(remoteModels: [RemoteModel]) {
        guard !isCancelled else {
            log.info("\(#function) - cancelled, aborting")
            return
        }

        guard let storageAdapter = storageAdapter else {
            let error = DataStoreError.nilStorageAdapter()
            notifyDropped(count: remoteModels.count, error: error)
            stateMachine.notify(action: .errored(error))
            return
        }

        guard !remoteModels.isEmpty else {
            stateMachine.notify(action: .reconciled)
            return
        }

        do {
            try storageAdapter.transaction {
                self.queryLocalMetadata(remoteModels)
                    .subscribe(on: workQueue)
                    .map { (remoteModels, localMetadatas) in
                        self.getDispositions(for: remoteModels, localMetadatas: localMetadatas)
                    }
                    .flatMap { dispositions in
                        self.queryPendingMutations(withModels: dispositions.map(\.remoteModel.model))
                            .map { pendingMutations in (pendingMutations, dispositions) }
                    }
                    .map { (pendingMutations, dispositions) in
                        self.separateDispositions(pendingMutations: pendingMutations, dispositions: dispositions)
                    }
                    .flatMap { (dispositions, dispositionOnlyApplyMetadata) in
                        self.waitAllPublisherFinishes(publishers: dispositionOnlyApplyMetadata.map(self.saveMetadata(disposition:)))
                            .flatMap { _ in self.applyRemoteModelsDispositions(dispositions) }
                    }
                    .sink(
                        receiveCompletion: {
                            if case .failure(let error) = $0 {
                                self.stateMachine.notify(action: .errored(error))
                            }
                        },
                        receiveValue: {
                            self.stateMachine.notify(action: .reconciled)
                        }
                    )
                    .store(in: &cancellables)
            }
        } catch let dataStoreError as DataStoreError {
            stateMachine.notify(action: .errored(dataStoreError))
        } catch {
            let dataStoreError = DataStoreError.invalidOperation(causedBy: error)
            stateMachine.notify(action: .errored(dataStoreError))
        }
    }

    func queryPendingMutations(withModels models: [Model]) -> Future<[MutationEvent], DataStoreError> {
        Future<[MutationEvent], DataStoreError> { promise in
            var result: Result<[MutationEvent], DataStoreError> = .failure(Self.unfulfilledDataStoreError())
            guard !self.isCancelled else {
                self.log.info("\(#function) - cancelled, aborting")
                result = .success([])
                promise(result)
                return
            }
            guard let storageAdapter = self.storageAdapter else {
                let error = DataStoreError.nilStorageAdapter()
                self.notifyDropped(count: models.count, error: error)
                result = .failure(error)
                promise(result)
                return
            }

            guard !models.isEmpty else {
                result = .success([])
                promise(result)
                return
            }

            MutationEvent.pendingMutationEvents(
                forModels: models,
                storageAdapter: storageAdapter
            ) { queryResult in
                switch queryResult {
                case .failure(let dataStoreError):
                    self.notifyDropped(count: models.count, error: dataStoreError)
                    result = .failure(dataStoreError)
                case .success(let mutationEvents):
                    result = .success(mutationEvents)
                }
                promise(result)
            }
        }
    }

    func separateDispositions(
        pendingMutations: [MutationEvent],
        dispositions: [RemoteSyncReconciler.Disposition]
    ) -> ([RemoteSyncReconciler.Disposition], [RemoteSyncReconciler.Disposition]) {
        guard !dispositions.isEmpty else {
            return ([], [])
        }


        let pendingMutationModelIds = Set(pendingMutations.map(\.modelId))

        let dispositionsToApply = dispositions.filter {
            !pendingMutationModelIds.contains($0.remoteModel.model.identifier)
        }

        let dispositionsOnlyApplyMetadata = dispositions.filter {
            pendingMutationModelIds.contains($0.remoteModel.model.identifier)
        }

        notifyDropped(count: dispositionsOnlyApplyMetadata.count)
        return (dispositionsToApply, dispositionsOnlyApplyMetadata)
    }

    func queryLocalMetadata(_ remoteModels: [RemoteModel]) -> Future<([RemoteModel], [LocalMetadata]), DataStoreError> {
        Future<([RemoteModel], [LocalMetadata]), DataStoreError> { promise in
            var result: Result<([RemoteModel], [LocalMetadata]), DataStoreError> =
                .failure(Self.unfulfilledDataStoreError())
            defer {
                promise(result)
            }
            guard !self.isCancelled else {
                self.log.info("\(#function) - cancelled, aborting")
                result = .success(([], []))
                return
            }
            guard let storageAdapter = self.storageAdapter else {
                let error = DataStoreError.nilStorageAdapter()
                self.notifyDropped(count: remoteModels.count, error: error)
                result = .failure(error)
                return
            }

            guard !remoteModels.isEmpty else {
                result = .success(([], []))
                return
            }

            do {
                let localMetadatas = try storageAdapter.queryMutationSyncMetadata(
                    for: remoteModels.map { $0.model.identifier },
                       modelName: self.modelSchema.name)
                result = .success((remoteModels, localMetadatas))
            } catch {
                let error = DataStoreError(error: error)
                self.notifyDropped(count: remoteModels.count, error: error)
                result = .failure(error)
                return
            }
        }
    }

    func getDispositions(for remoteModels: [RemoteModel],
                         localMetadatas: [LocalMetadata]) -> [RemoteSyncReconciler.Disposition] {
        guard !remoteModels.isEmpty else {
            return []
        }

        let dispositions = RemoteSyncReconciler.getDispositions(remoteModels,
                                                                localMetadatas: localMetadatas)
        notifyDropped(count: remoteModels.count - dispositions.count)
        return dispositions
    }

    func applyRemoteModelsDisposition(
        storageAdapter: StorageEngineAdapter,
        disposition: RemoteSyncReconciler.Disposition
    ) -> AnyPublisher<Result<Void, DataStoreError>, Never> {
        let operation: Future<ApplyRemoteModelResult, DataStoreError>
        switch disposition {
        case .create, .update:
            operation = self.save(storageAdapter: storageAdapter, remoteModel: disposition.remoteModel)
        case .delete:
            operation = self.delete(storageAdapter: storageAdapter, remoteModel: disposition.remoteModel)
        }

        return operation
            .flatMap { self.saveMetadata(storageAdapter: storageAdapter, result: $0, mutationType: disposition.mutationType) }
            .map { _ in Result.success(()) }
            .catch { Just<Result<Void, DataStoreError>>(.failure($0))}
            .eraseToAnyPublisher()
    }

    // TODO: refactor - move each the publisher constructions to its own utility method for readability of the
    // `switch` and a single method that you can invoke in the `map`
    func applyRemoteModelsDispositions(
        _ dispositions: [RemoteSyncReconciler.Disposition]
    ) -> Future<Void, DataStoreError> {
        guard !self.isCancelled else {
            self.log.info("\(#function) - cancelled, aborting")
            return Future { $0(.successfulVoid) }
        }

        guard let storageAdapter = self.storageAdapter else {
            let error = DataStoreError.nilStorageAdapter()
            self.notifyDropped(count: dispositions.count, error: error)
            return Future { $0(.failure(error)) }
        }

        guard !dispositions.isEmpty else {
            return Future { $0(.successfulVoid) }
        }

        let publishers = dispositions.map {
            applyRemoteModelsDisposition(storageAdapter: storageAdapter, disposition: $0)
        }

        return self.waitAllPublisherFinishes(publishers: publishers)
    }

    enum ApplyRemoteModelResult {
        case applied(RemoteModel)
        case dropped
    }

    private func delete(storageAdapter: StorageEngineAdapter,
                        remoteModel: RemoteModel) -> Future<ApplyRemoteModelResult, DataStoreError> {
        Future<ApplyRemoteModelResult, DataStoreError> { promise in
            guard let modelType = ModelRegistry.modelType(from: self.modelSchema.name) else {
                let error = DataStoreError.invalidModelName(self.modelSchema.name)
                promise(.failure(error))
                return
            }

            storageAdapter.delete(untypedModelType: modelType,
                                  modelSchema: self.modelSchema,
                                  withIdentifier: remoteModel.model.identifier(schema: self.modelSchema),
                                  condition: nil) { response in
                switch response {
                case .failure(let dataStoreError):
                    self.notifyDropped(error: dataStoreError)
                    if storageAdapter.shouldIgnoreError(error: dataStoreError) {
                        promise(.success(.dropped))
                    } else {
                        promise(.failure(dataStoreError))
                    }
                case .success:
                    promise(.success(.applied(remoteModel)))
                }
            }
        }
    }

    private func save(
        storageAdapter: StorageEngineAdapter,
        remoteModel: RemoteModel
    ) -> Future<ApplyRemoteModelResult, DataStoreError> {
        Future<ApplyRemoteModelResult, DataStoreError> { promise in
            storageAdapter.save(untypedModel: remoteModel.model.instance, eagerLoad: self.isEagerLoad) { response in
                switch response {
                case .failure(let dataStoreError):
                    self.notifyDropped(error: dataStoreError)
                    if storageAdapter.shouldIgnoreError(error: dataStoreError) {
                        promise(.success(.dropped))
                    } else {
                        promise(.failure(dataStoreError))
                    }
                case .success(let savedModel):
                    let anyModel: AnyModel
                    do {
                        anyModel = try savedModel.eraseToAnyModel()
                    } catch {
                        let dataStoreError = DataStoreError(error: error)
                        self.notifyDropped(error: dataStoreError)
                        promise(.failure(dataStoreError))
                        return
                    }
                    let inProcessModel = MutationSync(model: anyModel, syncMetadata: remoteModel.syncMetadata)
                    promise(.success(.applied(inProcessModel)))
                }
            }
        }
    }

    private func saveMetadata(
        disposition: RemoteSyncReconciler.Disposition
    ) -> AnyPublisher<Void, Never> {
        guard let storageAdapter = self.storageAdapter else {
            return Just(()).eraseToAnyPublisher()
        }
        return saveMetadata(storageAdapter: storageAdapter, remoteModel: disposition.remoteModel, mutationType: disposition.mutationType)
            .map { _ in () }
            .catch { _ in Just(()) }
            .eraseToAnyPublisher()
    }

    private func saveMetadata(
        storageAdapter: StorageEngineAdapter,
        result: ApplyRemoteModelResult,
        mutationType: MutationEvent.MutationType
    ) -> AnyPublisher<Void, DataStoreError> {
        if case let .applied(inProcessModel) = result {
            return self.saveMetadata(storageAdapter: storageAdapter, remoteModel: inProcessModel, mutationType: mutationType)
                .handleEvents( receiveOutput: { syncMetadata in
                    let appliedModel = MutationSync(model: inProcessModel.model, syncMetadata: syncMetadata)
                    self.notify(savedModel: appliedModel, mutationType: mutationType)
                }, receiveCompletion: { completion in
                    if case .failure(let error) = completion {
                        self.notifyDropped(error: error)
                    }
                })
                .map { _ in () }
                .eraseToAnyPublisher()

        }
        return Just(()).setFailureType(to: DataStoreError.self).eraseToAnyPublisher()
    }

    private func saveMetadata(
        storageAdapter: StorageEngineAdapter,
        remoteModel: RemoteModel,
        mutationType: MutationEvent.MutationType
    ) -> Future<MutationSyncMetadata, DataStoreError> {
        Future { promise in
            storageAdapter.save(remoteModel.syncMetadata,
                                condition: nil,
                                eagerLoad: self.isEagerLoad) { result in
                promise(result)
            }
        }
    }

    private func notifyDropped(count: Int = 1, error: DataStoreError? = nil) {
        for _ in 0 ..< count {
            mutationEventPublisher.send(.mutationEventDropped(modelName: modelSchema.name, error: error))
        }
    }

    private func notify(savedModel: AppliedModel,
                        mutationType: MutationEvent.MutationType) {
        let version = savedModel.syncMetadata.version

        // TODO: Dispatch/notify error if we can't erase to any model? Would imply an error in JSON decoding,
        // which shouldn't be possible this late in the process. Possibly notify global conflict/error handler?
        guard let json = try? savedModel.model.instance.toJSON() else {
            log.error("Could not notify mutation event")
            return
        }
        let modelIdentifier = savedModel.model.instance.identifier(schema: modelSchema).stringValue
        let mutationEvent = MutationEvent(modelId: modelIdentifier,
                                          modelName: modelSchema.name,
                                          json: json,
                                          mutationType: mutationType,
                                          version: version)

        let payload = HubPayload(eventName: HubPayload.EventName.DataStore.syncReceived,
                                 data: mutationEvent)
        Amplify.Hub.dispatch(to: .dataStore, payload: payload)

        mutationEventPublisher.send(.mutationEvent(mutationEvent))
    }

    private func notifyFinished() {
        if log.logLevel == .debug {
            log.debug("total time: \(stopwatch.stop())s")
        }
        mutationEventPublisher.send(completion: .finished)
        finish()
    }

    private static func unfulfilledDataStoreError(name: String = #function) -> DataStoreError {
        .unknown("\(name) did not fulfill promise", AmplifyErrorMessages.shouldNotHappenReportBugToAWS(), nil)
    }

    private func waitAllPublisherFinishes<T>(publishers: [AnyPublisher<T, Never>]) -> Future<Void, DataStoreError> {
        Future { promise in
            Publishers.MergeMany(publishers)
                .collect()
                .sink(receiveCompletion: { _ in
                    promise(.successfulVoid)
                }, receiveValue: { _ in  })
                .store(in: &self.cancellables)
        }
    }
}

extension ReconcileAndLocalSaveOperation: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}

enum ReconcileAndLocalSaveOperationEvent {
    case mutationEvent(MutationEvent)
    case mutationEventDropped(modelName: String, error: DataStoreError? = nil)
}
// swiftlint:enable type_body_length file_length
