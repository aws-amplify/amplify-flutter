//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

public typealias QueryPredicateResolver = () -> QueryPredicate

public struct DataStoreSyncExpression {
    let modelSchema: ModelSchema
    let modelPredicate: QueryPredicateResolver

    static public func syncExpression(_ modelSchema: ModelSchema,
                                      where predicate: @escaping QueryPredicateResolver) -> DataStoreSyncExpression {
        DataStoreSyncExpression(modelSchema: modelSchema, modelPredicate: predicate)
    }
}
