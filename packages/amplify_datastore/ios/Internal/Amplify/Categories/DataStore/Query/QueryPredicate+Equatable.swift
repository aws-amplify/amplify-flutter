//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

private func isEqual(_ one: QueryPredicate?, to other: QueryPredicate?) -> Bool {
    if one == nil && other == nil {
        return true
    }
    if let one = one as? QueryPredicateOperation, let other = other as? QueryPredicateOperation {
        return one == other
    }
    if let one = one as? QueryPredicateGroup, let other = other as? QueryPredicateGroup {
        return one == other
    }
    return false
}

extension QueryPredicateOperation: Equatable {

    public static func == (lhs: QueryPredicateOperation, rhs: QueryPredicateOperation) -> Bool {
        return lhs.field == rhs.field && lhs.operator == rhs.operator
    }

}

extension QueryPredicateGroup: Equatable {

    public static func == (lhs: QueryPredicateGroup, rhs: QueryPredicateGroup) -> Bool {
        return lhs.type == rhs.type
            && lhs.predicates.count == rhs.predicates.count
            && lhs.predicates.enumerated().first {
                !isEqual($0.element, to: rhs.predicates[$0.offset])
            } == nil
    }

}
