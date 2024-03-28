//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension DataStoreCategory: DataStoreBaseBehavior {

    @discardableResult
    public func save<M: Model>(_ model: M,
                               where condition: QueryPredicate? = nil) async throws -> M {
        try await plugin.save(model, where: condition)
    }

    public func query<M: Model>(_ modelType: M.Type,
                                byId id: String) async throws -> M? {
        try await plugin.query(modelType, byId: id)
    }

    public func query<M: Model>(_ modelType: M.Type,
                                byIdentifier id: String) async throws -> M?
        where M: ModelIdentifiable, M.IdentifierFormat == ModelIdentifierFormat.Default {
            try await plugin.query(modelType, byIdentifier: id)
    }

    public func query<M: Model>(_ modelType: M.Type,
                                byIdentifier identifier: ModelIdentifier<M, M.IdentifierFormat>)
        async throws -> M? where M: ModelIdentifiable {
            try await plugin.query(modelType, byIdentifier: identifier)
    }

    public func query<M: Model>(_ modelType: M.Type,
                                where predicate: QueryPredicate? = nil,
                                sort sortInput: QuerySortInput? = nil,
                                paginate paginationInput: QueryPaginationInput? = nil) async throws -> [M] {
        try await plugin.query(modelType, where: predicate, sort: sortInput, paginate: paginationInput)
    }

    public func delete<M: Model>(_ model: M,
                                 where predicate: QueryPredicate? = nil) async throws {
        try await plugin.delete(model, where: predicate)
    }

    public func delete<M: Model>(_ modelType: M.Type,
                                 withId id: String,
                                 where predicate: QueryPredicate? = nil) async throws {
        try await plugin.delete(modelType, withId: id, where: predicate)
    }

    public func delete<M: Model>(_ modelType: M.Type,
                                 withIdentifier id: String,
                                 where predicate: QueryPredicate? = nil) async throws
        where M: ModelIdentifiable, M.IdentifierFormat == ModelIdentifierFormat.Default {
            try await plugin.delete(modelType, withIdentifier: id, where: predicate)
    }

    public func delete<M: Model>(_ modelType: M.Type,
                                 withIdentifier id: ModelIdentifier<M, M.IdentifierFormat>,
                                 where predicate: QueryPredicate? = nil) async throws where M: ModelIdentifiable {
        try await plugin.delete(modelType, withIdentifier: id, where: predicate)
    }

    public func delete<M: Model>(_ modelType: M.Type,
                                 where predicate: QueryPredicate) async throws {
        try await plugin.delete(modelType, where: predicate)
    }

    public func start() async throws {
        try await plugin.start()
    }

    public func stop() async throws {
        try await plugin.stop()
    }

    public func clear() async throws {
        try await plugin.clear()
    }
}
