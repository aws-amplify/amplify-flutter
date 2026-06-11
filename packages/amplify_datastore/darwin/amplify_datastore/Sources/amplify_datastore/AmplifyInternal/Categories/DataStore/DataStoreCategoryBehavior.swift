//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Combine

public typealias DataStoreCategoryBehavior = DataStoreBaseBehavior & DataStoreSubscribeBehavior

public protocol DataStoreBaseBehavior {

    /// Saves the model to storage. If sync is enabled, also initiates a sync of the mutation to the remote API
    @discardableResult
    func save<M: Model>(_ model: M,
                        where condition: QueryPredicate?) async throws -> M

    @available(*, deprecated, renamed: "query(byIdentifier:)")
    func query<M: Model>(_ modelType: M.Type,
                         byId id: String) async throws -> M?

    func query<M: Model>(_ modelType: M.Type,
                         byIdentifier id: String) async throws -> M?
        where M: ModelIdentifiable, M.IdentifierFormat == ModelIdentifierFormat.Default

    func query<M: Model>(_ modelType: M.Type,
                         byIdentifier id: ModelIdentifier<M, M.IdentifierFormat>) async throws -> M?
        where M: ModelIdentifiable

    func query<M: Model>(_ modelType: M.Type,
                         where predicate: QueryPredicate?,
                         sort sortInput: QuerySortInput?,
                         paginate paginationInput: QueryPaginationInput?) async throws -> [M]

    func delete<M: Model>(_ model: M,
                          where predicate: QueryPredicate?) async throws

    func delete<M: Model>(_ modelType: M.Type,
                          withId id: String,
                          where predicate: QueryPredicate?) async throws

    func delete<M: Model>(_ modelType: M.Type,
                          withIdentifier id: String,
                          where predicate: QueryPredicate?) async throws where M: ModelIdentifiable,
                                                                               M.IdentifierFormat == ModelIdentifierFormat.Default

    func delete<M: Model>(_ modelType: M.Type,
                          withIdentifier id: ModelIdentifier<M, M.IdentifierFormat>,
                          where predicate: QueryPredicate?) async throws where M: ModelIdentifiable

    func delete<M: Model>(_ modelType: M.Type,
                           where predicate: QueryPredicate) async throws

    /**
     Synchronization starts automatically whenever you run any DataStore operation (query(), save(), delete())
     however, you can explicitly begin the process with DatasStore.start()

     - parameter completion: callback to be invoked on success or failure
     */
    func start() async throws

    /**
     To stop the DataStore sync process, you can use DataStore.stop(). This ensures the real time subscription
     connection is closed when your app is no longer interested in updates, such as when you application is closed.
     This can also be used to modify DataStore sync expressions at runtime by calling stop(), then start()
     to force your sync expressions to be re-evaluated.

     - parameter completion: callback to be invoked on success or failure
     */
    func stop() async throws

    /**
     To clear local data from DataStore, use the clear method.

     - parameter completion: callback to be invoked on success or failure
     */
    func clear() async throws
}

public protocol DataStoreSubscribeBehavior {
    /// Returns an AmplifyAsyncThrowingSequence for model changes (create, updates, delete)
    /// - Parameter modelType: The model type to observe
    func observe<M: Model>(_ modelType: M.Type) -> AmplifyAsyncThrowingSequence<MutationEvent>

    /// Returns a Publisher for query snapshots.
    ///
    /// - Parameters:
    ///   - modelType: The model type to observe
    ///   - predicate: The predicate to match for filtered results
    ///   - sortInput: The field and order of data to be returned
    func observeQuery<M: Model>(for modelType: M.Type,
                                where predicate: QueryPredicate?,
                                sort sortInput: QuerySortInput?)
        -> AmplifyAsyncThrowingSequence<DataStoreQuerySnapshot<M>>
}
