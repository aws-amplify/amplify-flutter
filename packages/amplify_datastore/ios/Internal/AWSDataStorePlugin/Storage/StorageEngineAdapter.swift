//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import AWSPluginsCore

protocol StorageEngineAdapter: AnyObject, ModelStorageBehavior, ModelStorageErrorBehavior, StorageEngineMigrationAdapter {

    static var maxNumberOfPredicates: Int { get }

    // MARK: - Async APIs
    func save(untypedModel: Model, eagerLoad: Bool, completion: @escaping DataStoreCallback<Model>)

    func delete(untypedModelType modelType: Model.Type,
                modelSchema: ModelSchema,
                withIdentifier identifier: ModelIdentifierProtocol,
                condition: QueryPredicate?,
                completion: DataStoreCallback<Void>)

    func delete<M: Model>(_ modelType: M.Type,
                          modelSchema: ModelSchema,
                          filter: QueryPredicate,
                          completion: @escaping DataStoreCallback<[M]>)

    func query(modelSchema: ModelSchema,
               predicate: QueryPredicate?,
               eagerLoad: Bool,
               completion: DataStoreCallback<[Model]>)

    // MARK: - Synchronous APIs

    func save<M: Model>(_ model: M,
                        modelSchema: ModelSchema,
                        condition: QueryPredicate?,
                        eagerLoad: Bool) -> DataStoreResult<M>

    func exists(_ modelSchema: ModelSchema,
                withIdentifier id: ModelIdentifierProtocol,
                predicate: QueryPredicate?) throws -> Bool

    func queryMutationSync(for models: [Model], modelName: String) throws -> [MutationSync<AnyModel>]

    func queryMutationSync(forAnyModel anyModel: AnyModel) throws -> MutationSync<AnyModel>?

    func queryMutationSyncMetadata(for modelId: String, modelName: String) throws -> MutationSyncMetadata?

    func queryMutationSyncMetadata(for modelIds: [String], modelName: String) throws -> [MutationSyncMetadata]

    func queryModelSyncMetadata(for modelSchema: ModelSchema) throws -> ModelSyncMetadata?

    func transaction(_ basicClosure: BasicThrowableClosure) throws

    func clear(completion: @escaping DataStoreCallback<Void>)
}

protocol StorageEngineMigrationAdapter {

    @discardableResult func removeStore(for modelSchema: ModelSchema) throws -> String

    @discardableResult func createStore(for modelSchema: ModelSchema) throws -> String

    @discardableResult func emptyStore(for modelSchema: ModelSchema) throws -> String

    @discardableResult func renameStore(from: ModelSchema, toModelSchema: ModelSchema) throws -> String
}

extension StorageEngineAdapter {

    func delete<M: Model>(_ modelType: M.Type,
                          filter predicate: QueryPredicate,
                          completion: @escaping DataStoreCallback<[M]>) {
        delete(modelType, modelSchema: modelType.schema, filter: predicate, completion: completion)
    }

    func delete(untypedModelType modelType: Model.Type,
                withIdentifier identifier: ModelIdentifierProtocol,
                condition: QueryPredicate? = nil,
                completion: DataStoreCallback<Void>) {
        delete(untypedModelType: modelType,
               modelSchema: modelType.schema,
               withIdentifier: identifier,
               condition: condition,
               completion: completion)
    }
}
