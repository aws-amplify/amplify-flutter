//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public enum QueryOperator: Encodable {
    case notEqual(_ value: Persistable?)
    case equals(_ value: Persistable?)
    case lessOrEqual(_ value: Persistable)
    case lessThan(_ value: Persistable)
    case greaterOrEqual(_ value: Persistable)
    case greaterThan(_ value: Persistable)
    case contains(_ value: String)
    case notContains(_ value: String)
    case between(start: Persistable, end: Persistable)
    case beginsWith(_ value: String)

    public func evaluate(target: Any) -> Bool {
        switch self {
        case .notEqual(let predicateValue):
            return !PersistableHelper.isEqual(target, predicateValue)
        case .equals(let predicateValue):
            return PersistableHelper.isEqual(target, predicateValue)
        case .lessOrEqual(let predicateValue):
            return PersistableHelper.isLessOrEqual(target, predicateValue)
        case .lessThan(let predicateValue):
            return PersistableHelper.isLessThan(target, predicateValue)
        case .greaterOrEqual(let predicateValue):
            return PersistableHelper.isGreaterOrEqual(target, predicateValue)
        case .greaterThan(let predicateValue):
            return PersistableHelper.isGreaterThan(target, predicateValue)
        case .contains(let predicateString):
            if let targetString = target as? String {
                return targetString.contains(predicateString)
            }
            return false
        case .notContains(let predicateString):
            if let targetString = target as? String {
                return !targetString.contains(predicateString)
            }
        case .between(let start, let end):
            return PersistableHelper.isBetween(start, end, target)
        case .beginsWith(let predicateValue):
            if let targetString = target as? String {
                return targetString.starts(with: predicateValue)
            }
        }
        return false
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case value
        case start
        case end
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        switch self {
        case .notEqual(let value):
            try container.encode("notEqual", forKey: .type)
            if let value = value {
                try container.encode(value, forKey: .value)
            }
        case .equals(let value):
            try container.encode("equals", forKey: .type)
            if let value = value {
                try container.encode(value, forKey: .value)
            }
        case .lessOrEqual(let value):
            try container.encode("lessOrEqual", forKey: .type)
            try container.encode(value, forKey: .value)

        case .lessThan(let value):
            try container.encode("lessThan", forKey: .type)
            try container.encode(value, forKey: .value)

        case .greaterOrEqual(let value):
            try container.encode("greaterOrEqual", forKey: .type)
            try container.encode(value, forKey: .value)

        case .greaterThan(let value):
            try container.encode("greaterThan", forKey: .type)
            try container.encode(value, forKey: .value)

        case .contains(let value):
            try container.encode("contains", forKey: .type)
            try container.encode(value, forKey: .value)

        case .notContains(let value):
            try container.encode("notContains", forKey: .type)
            try container.encode(value, forKey: .value)

        case .between(let start, let end):
            try container.encode("between", forKey: .type)
            try container.encode(start, forKey: .start)
            try container.encode(end, forKey: .end)

        case .beginsWith(let value):
            try container.encode("beginsWith", forKey: .type)
            try container.encode(value, forKey: .value)
        }
    }
}
