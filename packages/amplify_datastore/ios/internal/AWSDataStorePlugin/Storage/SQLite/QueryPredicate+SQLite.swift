//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import SQLite

extension QueryOperator {

    func sqlOperation(column: String) -> String {
        switch self {
        case .notEqual(let value):
            return value == nil ? "\(column) is not null" : "\(column) <> ?"
        case .equals(let value):
            return value == nil ? "\(column) is null" : "\(column) = ?"
        case .lessOrEqual:
            return "\(column) <= ?"
        case .lessThan:
            return "\(column) < ?"
        case .greaterOrEqual:
            return "\(column) >= ?"
        case .greaterThan:
            return "\(column) > ?"
        case .between:
            return "\(column) between ? and ?"
        case .beginsWith:
            return "instr(\(column), ?) = 1"
        case .contains:
            return "instr(\(column), ?) > 0"
        case .notContains:
            return "instr(\(column), ?) = 0"
        }
    }

    var bindings: [Binding?] {
        switch self {
        case let .between(start, end):
            return [start.asBinding(), end.asBinding()]
        case .notEqual(let value), .equals(let value):
            return value == nil ? [] : [value?.asBinding()]
        case .lessOrEqual(let value),
             .lessThan(let value),
             .greaterOrEqual(let value),
             .greaterThan(let value):
            return [value.asBinding()]
        case .contains(let value),
            .beginsWith(let value),
            .notContains(let value):
            return [value.asBinding()]
        }
    }
}

extension QueryPredicate {
    var isAll: Bool {
        if let allPredicate = self as? QueryPredicateConstant, allPredicate == .all {
            return true
        } else {
            return false
        }
    }
}
