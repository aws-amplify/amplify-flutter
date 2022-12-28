// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify
import AmplifyPlugins
import Combine

public class DataStoreBridge {
    func getPlugin() throws -> AWSDataStorePlugin {
        return try Amplify.DataStore.getPlugin(for: "awsDataStorePlugin") as! AWSDataStorePlugin
    }

    func onQuery<M: Model>(_ modelType: M.Type,
                           modelSchema: ModelSchema,
                           where predicate: QueryPredicate? = nil,
                           sort sortInput: [QuerySortDescriptor]? = nil,
                           paginate paginationInput: QueryPaginationInput? = nil,
                           completion: DataStoreCallback<[M]>) throws
    {
        try getPlugin().query(modelType,
                              modelSchema: modelSchema,
                              where: predicate,
                              sort: sortInput,
                              paginate: paginationInput,
                              completion: completion)
    }

    func onSave<M: Model>(serializedModel: M,
                           modelSchema: ModelSchema,
                           where predicate: QueryPredicate? = nil,
                           completion: @escaping DataStoreCallback<M>) throws
    {
        try getPlugin().save(serializedModel,
                             modelSchema: modelSchema,
                             where: predicate,
                             completion: completion)
    }

    func onDelete(serializedModel: FlutterSerializedModel,
                  modelSchema: ModelSchema,
                  where predicate: QueryPredicate? = nil,
                  completion: @escaping DataStoreCallback<Void>) throws
    {
        try getPlugin().delete(serializedModel,
                               modelSchema: modelSchema,
                               where: predicate,
                               completion: completion)
    }

    func onObserve() throws -> AnyPublisher<MutationEvent, DataStoreError> {
        return try getPlugin().publisher
    }

    func onClear(completion: @escaping DataStoreCallback<Void>) throws {
        try getPlugin().clear(completion: completion)
    }

    func onStart(completion: @escaping DataStoreCallback<Void>) throws {
        try getPlugin().start(completion: completion)
    }

    func onStop(completion: @escaping DataStoreCallback<Void>) throws {
        try getPlugin().stop(completion: completion)
    }
}
