//
//  DataStoreBridge.swift
//  Pods
//
//  Created by Gupta, Praveen on 10/28/20.
//

import Foundation
import Amplify
import AmplifyPlugins

public class DataStoreBridge {
    
    func getPlugin() throws -> AWSDataStorePlugin {
        return try Amplify.DataStore.getPlugin(for: "awsDataStorePlugin") as! AWSDataStorePlugin
    }
    
    public func onQuery<M: Model>(_ modelType: M.Type,
                                modelSchema: ModelSchema,
                                where predicate: QueryPredicate? = nil,
                                sort sortInput: [QuerySortDescriptor]? = nil,
                                paginate paginationInput: QueryPaginationInput? = nil,
                                completion: DataStoreCallback<[M]>) throws {
        try getPlugin().query(modelType,
                          modelSchema: modelSchema,
                          where: predicate,
                          sort: sortInput,
                          paginate: paginationInput,
                          completion: completion)
    }
}
