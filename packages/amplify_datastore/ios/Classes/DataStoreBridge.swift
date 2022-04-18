/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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

    func onQueryByIdentifier(
        modelSchema: ModelSchema,
        identifier: ModelIdentifier<FlutterSerializedModel, FlutterSerializedModel.IdentifierFormat>,
        completion: DataStoreCallback<FlutterSerializedModel?>) throws {
            try getPlugin().query(
                FlutterSerializedModel.self,
                modelSchema: modelSchema,
                byIdentifier: identifier,
                completion: completion
            )
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
