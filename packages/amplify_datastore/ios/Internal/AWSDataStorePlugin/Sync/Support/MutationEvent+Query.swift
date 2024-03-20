//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Dispatch

extension MutationEvent {
    static func pendingMutationEvents(
        forModel model: Model,
        storageAdapter: StorageEngineAdapter,
        completion: @escaping DataStoreCallback<[MutationEvent]>
    ) {
        pendingMutationEvents(
            forModels: [model],
            storageAdapter: storageAdapter,
            completion: completion
        )
    }

    static func pendingMutationEvents(
        forMutationEvent mutationEvent: MutationEvent,
        storageAdapter: StorageEngineAdapter,
        completion: @escaping DataStoreCallback<[MutationEvent]>
    ) {
        pendingMutationEvents(
            forMutationEvents: [mutationEvent],
            storageAdapter: storageAdapter,
            completion: completion
        )
    }

    static func pendingMutationEvents(
        forMutationEvents mutationEvents: [MutationEvent],
        storageAdapter: StorageEngineAdapter,
        completion: @escaping DataStoreCallback<[MutationEvent]>
    ) {
        pendingMutationEvents(
            for: mutationEvents.map { ($0.modelId, $0.modelName) },
            storageAdapter: storageAdapter,
            completion: completion
        )
    }

    static func pendingMutationEvents(
        forModels models: [Model],
        storageAdapter: StorageEngineAdapter,
        completion: @escaping DataStoreCallback<[MutationEvent]>
    ) {
        pendingMutationEvents(
            for: models.map { ($0.identifier, $0.modelName) },
            storageAdapter: storageAdapter,
            completion: completion
        )
    }

    private static func pendingMutationEvents(for modelIds: [(String, String)],
                                      storageAdapter: StorageEngineAdapter,
                                      completion: @escaping DataStoreCallback<[MutationEvent]>) {
        Task {
            let fields = MutationEvent.keys
            let predicate = (fields.inProcess == false || fields.inProcess == nil)
            let chunkedArrays = modelIds.chunked(into: SQLiteStorageEngineAdapter.maxNumberOfPredicates)
            var queriedMutationEvents: [MutationEvent] = []
            for chunkedArray in chunkedArrays {
                var queryPredicates: [QueryPredicateGroup] = []
                for (id, name) in chunkedArray {
                    let operation = fields.modelId == id && fields.modelName == name
                    queryPredicates.append(operation)
                }
                let groupedQueryPredicates =  QueryPredicateGroup(type: .or, predicates: queryPredicates)
                let final = QueryPredicateGroup(type: .and, predicates: [groupedQueryPredicates, predicate])
                let sort = QuerySortDescriptor(fieldName: fields.createdAt.stringValue, order: .ascending)

                do {
                    let mutationEvents = try await withCheckedThrowingContinuation { continuation in
                        storageAdapter.query(MutationEvent.self,
                                             predicate: final,
                                             sort: [sort],
                                             paginationInput: nil,
                                             eagerLoad: true) { result in
                            continuation.resume(with: result)
                        }
                    }

                    queriedMutationEvents.append(contentsOf: mutationEvents)
                } catch {
                    completion(.failure(causedBy: error))
                    return
                }
            }
            completion(.success(queriedMutationEvents))
        }
    }
}
