//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Protocol that indicates concrete types conforming to it can be used a predicate member.
public protocol QueryPredicate: Evaluable, Encodable {}

public enum QueryPredicateGroupType: String, Encodable {
    case and
    case or
    case not
}

/// The `not` function is used to wrap a `QueryPredicate` in a `QueryPredicateGroup` of type `.not`.
/// - Parameter predicate: the `QueryPredicate` (either operation or group)
/// - Returns: `QueryPredicateGroup` of type `.not`
public func not<Predicate: QueryPredicate>(_ predicate: Predicate) -> QueryPredicateGroup {
    return QueryPredicateGroup(type: .not, predicates: [predicate])
}

/// The case `.all` is a predicate used as an argument to select all of a single modeltype. We
/// chose `.all` instead of `nil` because we didn't want to use the implicit nature of `nil` to
/// specify an action applies to an entire data set.
public enum QueryPredicateConstant: QueryPredicate, Encodable {
    case all
    public func evaluate(target: Model) -> Bool {
        return true
    }
}

public class QueryPredicateGroup: QueryPredicate, Encodable {
    public internal(set) var type: QueryPredicateGroupType
    public internal(set) var predicates: [QueryPredicate]

    public init(type: QueryPredicateGroupType = .and,
                predicates: [QueryPredicate] = []) {
        self.type = type
        self.predicates = predicates
    }

    public func and(_ predicate: QueryPredicate) -> QueryPredicateGroup {
        if case .and = type {
            predicates.append(predicate)
            return self
        }
        return QueryPredicateGroup(type: .and, predicates: [self, predicate])
    }

    public func or(_ predicate: QueryPredicate) -> QueryPredicateGroup {
        if case .or = type {
            predicates.append(predicate)
            return self
        }
        return QueryPredicateGroup(type: .or, predicates: [self, predicate])
    }

    public static func && (lhs: QueryPredicateGroup, rhs: QueryPredicate) -> QueryPredicateGroup {
        return lhs.and(rhs)
    }

    public static func || (lhs: QueryPredicateGroup, rhs: QueryPredicate) -> QueryPredicateGroup {
        return lhs.or(rhs)
    }

    public static prefix func ! (rhs: QueryPredicateGroup) -> QueryPredicateGroup {
        return not(rhs)
    }

    public func evaluate(target: Model) -> Bool {
        switch type {
        case .or:
            for predicate in predicates {
                if predicate.evaluate(target: target) {
                    return true
                }
            }
            return false
        case .and:
            for predicate in predicates {
                if !predicate.evaluate(target: target) {
                    return false
                }
            }
            return true
        case .not:
            let predicate = predicates[0]
            return !predicate.evaluate(target: target)
        }
    }

    // MARK: - Encodable conformance

    private enum CodingKeys: String, CodingKey {
        case type
        case predicates
    }

    struct AnyQueryPredicate: Encodable {
        private let _encode: (Encoder) throws -> Void

        init(_ base: QueryPredicate) {
            _encode = base.encode
        }

        func encode(to encoder: Encoder) throws {
            try _encode(encoder)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type.rawValue, forKey: .type)

        let anyPredicates = predicates.map(AnyQueryPredicate.init)
        try container.encode(anyPredicates, forKey: .predicates)
    }

}

public class QueryPredicateOperation: QueryPredicate, Encodable {

    public let field: String
    public let `operator`: QueryOperator

    public init(field: String, operator: QueryOperator) {
        self.field = field
        self.operator = `operator`
    }

    public func and(_ predicate: QueryPredicate) -> QueryPredicateGroup {
        let group = QueryPredicateGroup(type: .and, predicates: [self, predicate])
        return group
    }

    public func or(_ predicate: QueryPredicate) -> QueryPredicateGroup {
        let group = QueryPredicateGroup(type: .or, predicates: [self, predicate])
        return group
    }

    public static func && (lhs: QueryPredicateOperation, rhs: QueryPredicate) -> QueryPredicateGroup {
        return lhs.and(rhs)
    }

    public static func || (lhs: QueryPredicateOperation, rhs: QueryPredicate) -> QueryPredicateGroup {
        return lhs.or(rhs)
    }

    public static prefix func ! (rhs: QueryPredicateOperation) -> QueryPredicateGroup {
        return not(rhs)
    }

    public func evaluate(target: Model) -> Bool {
        guard let fieldValue = target[field] else {
            return false
        }

        guard let value = fieldValue else {
            return false
        }

        if let booleanValue = value as? Bool {
            return self.operator.evaluate(target: booleanValue)
        }

        if let doubleValue = value as? Double {
            return self.operator.evaluate(target: doubleValue)
        }

        if let intValue = value as? Int {
            return self.operator.evaluate(target: intValue)
        }

        if let timeValue = value as? Temporal.Time {
            return self.operator.evaluate(target: timeValue)
        }

        if let enumValue = value as? EnumPersistable {
            return self.operator.evaluate(target: enumValue.rawValue)
        }

        return self.operator.evaluate(target: value)
    }
}
