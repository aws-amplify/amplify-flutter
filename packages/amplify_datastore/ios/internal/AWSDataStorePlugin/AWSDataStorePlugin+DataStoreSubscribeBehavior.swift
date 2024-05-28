//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine

extension AWSDataStorePlugin: DataStoreSubscribeBehavior {

    public var publisher: AnyPublisher<MutationEvent, DataStoreError> {
        _ = initStorageEngineAndStartSync()
        // Force-unwrapping: The optional 'dataStorePublisher' is expected
        // to exist for deployment targets >=iOS13.0
        return dataStorePublisher!.publisher
    }

    public func publisher(for modelName: ModelName) -> AnyPublisher<MutationEvent, DataStoreError> {
        return publisher.filter { $0.modelName == modelName }.eraseToAnyPublisher()
    }

    public func observe<M: Model>(_ modelType: M.Type) -> AmplifyAsyncThrowingSequence<MutationEvent> {
        let runner = ObserveTaskRunner(publisher: publisher(for: modelType.modelName))
        return runner.sequence
    }

    public func observeQuery<M: Model>(for modelType: M.Type,
                                       where predicate: QueryPredicate?,
                                       sort sortInput: QuerySortInput?) -> AmplifyAsyncThrowingSequence<DataStoreQuerySnapshot<M>> {
        switch initStorageEngineAndTryStartSync() {
        case .success(let storageEngineBehavior):
            let modelSchema = modelType.schema
            guard let dataStorePublisher = dataStorePublisher else {
                return Fatal.preconditionFailure("`dataStorePublisher` is expected to exist for deployment targets >=iOS13.0")
            }
            guard let dispatchedModelSyncedEvent = dispatchedModelSyncedEvents[modelSchema.name] else {
                return Fatal.preconditionFailure("`dispatchedModelSyncedEvent` is expected to exist for \(modelSchema.name)")
            }
            let request = ObserveQueryRequest(options: [])
            let taskRunner = ObserveQueryTaskRunner(request: request,
                                                    modelType: modelType,
                                                    modelSchema: modelType.schema,
                                                    predicate: predicate,
                                                    sortInput: sortInput?.asSortDescriptors(),
                                                    storageEngine: storageEngineBehavior,
                                                    dataStorePublisher: dataStorePublisher,
                                                    dataStoreConfiguration: configuration.pluginConfiguration,
                                                    dispatchedModelSyncedEvent: dispatchedModelSyncedEvent,
                                                    dataStoreStatePublisher: dataStoreStateSubject.eraseToAnyPublisher())
            return taskRunner.sequence
        case .failure(let error):
            return Fatal.preconditionFailure("Unable to get storage adapter \(error.localizedDescription)")
        }

    }

}
