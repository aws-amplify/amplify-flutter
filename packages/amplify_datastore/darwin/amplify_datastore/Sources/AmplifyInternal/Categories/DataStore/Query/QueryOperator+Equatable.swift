//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension QueryOperator: Equatable {
    public static func == (lhs: QueryOperator, rhs: QueryOperator) -> Bool {
        switch (lhs, rhs) {
        case let (.contains(one), .contains(other)),
             let (.beginsWith(one), .beginsWith(other)):
            return one == other
        case let (.equals(one), .equals(other)),
             let (.notEqual(one), .notEqual(other)):
            return PersistableHelper.isEqual(one, other)
        case let (.greaterOrEqual(one), .greaterOrEqual(other)),
             let (.greaterThan(one), .greaterThan(other)),
             let (.lessOrEqual(one), .lessOrEqual(other)),
             let (.lessThan(one), .lessThan(other)):
            return PersistableHelper.isEqual(one, other)
        case let (.between(oneStart, oneEnd), .between(otherStart, otherEnd)):
            return PersistableHelper.isEqual(oneStart, otherStart)
                && PersistableHelper.isEqual(oneEnd, otherEnd)
        default:
            return false
        }
    }

}
