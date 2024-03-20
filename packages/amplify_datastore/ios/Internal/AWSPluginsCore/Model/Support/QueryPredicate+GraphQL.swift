//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

public typealias GraphQLFilter = [String: Any]

protocol GraphQLFilterConvertible {
    func graphQLFilter(for modelSchema: ModelSchema?) -> GraphQLFilter
}

// Convert QueryPredicate to GraphQLFilter JSON, and GraphQLFilter JSON to GraphQLFilter
public struct GraphQLFilterConverter {

    /// Serialize the translated GraphQL query variable object to JSON string.
    /// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
    ///   by host applications. The behavior of this may change without warning.
    public static func toJSON(_ queryPredicate: QueryPredicate,
                              modelSchema: ModelSchema,
                              options: JSONSerialization.WritingOptions = []) throws -> String {
        let graphQLFilterData =
            try JSONSerialization.data(withJSONObject: queryPredicate.graphQLFilter(for: modelSchema),
                                       options: options)

        guard let serializedString = String(data: graphQLFilterData, encoding: .utf8) else {
            return Fatal.preconditionFailure("""
                Could not initialize String from the GraphQL representation of QueryPredicate:
                \(String(describing: graphQLFilterData))
                """)
        }

        return serializedString
    }

    @available(*, deprecated, message: """
    Use `toJSON(_:modelSchema:options)` instead. See https://github.com/aws-amplify/amplify-ios/pull/965 for more details.
    """)
    /// Serialize the translated GraphQL query variable object to JSON string.
    public static func toJSON(_ queryPredicate: QueryPredicate,
                              options: JSONSerialization.WritingOptions = []) throws -> String {
        let graphQLFilterData = try JSONSerialization.data(withJSONObject: queryPredicate.graphQLFilter,
                                                           options: options)

        guard let serializedString = String(data: graphQLFilterData, encoding: .utf8) else {
            return Fatal.preconditionFailure("""
                Could not initialize String from the GraphQL representation of QueryPredicate:
                \(String(describing: graphQLFilterData))
                """)
        }

        return serializedString
    }

    /// Deserialize the JSON string converted with `GraphQLFilterConverter.toJSON()` to `GraphQLFilter`
    public static func fromJSON(_ value: String) throws -> GraphQLFilter {
        let data = Data(value.utf8)
        guard let filter = try JSONSerialization.jsonObject(with: data) as? GraphQLFilter else {
            return Fatal.preconditionFailure("Could not serialize to GraphQLFilter from: \(self))")
        }

        return filter
    }
}

/// Extension to translate a `QueryPredicate` into a GraphQL query variables object
extension QueryPredicate {

    /// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
    ///   by host applications. The behavior of this may change without warning.
    public func graphQLFilter(for modelSchema: ModelSchema?) -> GraphQLFilter {
        if let operation = self as? QueryPredicateOperation {
            return operation.graphQLFilter(for: modelSchema)
        } else if let group = self as? QueryPredicateGroup {
            return group.graphQLFilter(for: modelSchema)
        } else if let constant = self as? QueryPredicateConstant {
            return constant.graphQLFilter(for: modelSchema)
        }

        return Fatal.preconditionFailure(
            "Could not find QueryPredicateOperation or QueryPredicateGroup for \(String(describing: self))")
    }

    @available(*, deprecated, message: """
    Use `graphQLFilter(for:)` instead. See https://github.com/aws-amplify/amplify-ios/pull/965 for more details.
    """)
    public var graphQLFilter: GraphQLFilter {
        if let operation = self as? QueryPredicateOperation {
            return operation.graphQLFilter(for: nil)
        } else if let group = self as? QueryPredicateGroup {
            return group.graphQLFilter(for: nil)
        }

        return Fatal.preconditionFailure(
            "Could not find QueryPredicateOperation or QueryPredicateGroup for \(String(describing: self))")
    }
}

extension QueryPredicateConstant: GraphQLFilterConvertible {
    func graphQLFilter(for modelSchema: ModelSchema?) -> GraphQLFilter {
        if self == .all {
            return [:]
        }
        return Fatal.preconditionFailure("Could not find QueryPredicateConstant \(self)")
    }
}

extension QueryPredicateOperation: GraphQLFilterConvertible {

    func graphQLFilter(for modelSchema: ModelSchema?) -> GraphQLFilter {
        let filterValue = [self.operator.graphQLOperator: self.operator.value]
        guard let modelSchema = modelSchema else {
            return [field: filterValue]
        }
        return [columnName(modelSchema): filterValue]
    }

    func columnName(_ modelSchema: ModelSchema) -> String {
        guard let modelField = modelSchema.field(withName: field) else {
            return field
        }
        let defaultFieldName = modelSchema.name.camelCased() + field.pascalCased() + "Id"
        switch modelField.association {
        case .belongsTo(_, let targetNames):
            guard targetNames.count == 1 else {
                preconditionFailure("QueryPredicate not supported on associated field with composite key: \(field)")
            }
            let targetName = targetNames.first ?? defaultFieldName
            return targetName
        case .hasOne(_, let targetNames):
            guard targetNames.count == 1 else {
                preconditionFailure("QueryPredicate not supported on associated field with composite key: \(field)")
            }
            let targetName = targetNames.first ?? defaultFieldName
            return targetName
        default:
            return field
        }
    }
}

extension QueryPredicateGroup: GraphQLFilterConvertible {

    func graphQLFilter(for modelSchema: ModelSchema?) -> GraphQLFilter {
        let logicalOperator = type.rawValue
        switch type {
        case .and, .or:
            var graphQLPredicateOperation = [logicalOperator: [Any]()]
            predicates.forEach { predicate in
                graphQLPredicateOperation[logicalOperator]?.append(predicate.graphQLFilter(for: modelSchema))
            }
            return graphQLPredicateOperation
        case .not:
            if let predicate = predicates.first {
                return [logicalOperator: predicate.graphQLFilter(for: modelSchema)]
            } else {
                return Fatal.preconditionFailure("Missing predicate for \(String(describing: self)) with type: \(type)")
            }
        }
    }
}

extension QueryOperator {
    var graphQLOperator: String {
        switch self {
        case .notEqual:
            return "ne"
        case .equals:
            return "eq"
        case .lessOrEqual:
            return "le"
        case .lessThan:
            return "lt"
        case .greaterOrEqual:
            return "ge"
        case .greaterThan:
            return "gt"
        case .contains:
            return "contains"
        case .between:
            return "between"
        case .beginsWith:
            return "beginsWith"
        case .notContains:
            return "notContains"
        }
    }

    var value: Any? {
        switch self {
        case .notEqual(let value),
             .equals(let value):
            if let value = value {
                return value.graphQLValue()
            }

            return nil
        case .lessOrEqual(let value),
             .lessThan(let value),
             .greaterOrEqual(let value),
             .greaterThan(let value):
            return value.graphQLValue()
        case .contains(let value):
            return value
        case .between(let start, let end):
            return [start.graphQLValue(), end.graphQLValue()]
        case .beginsWith(let value):
            return value
        case .notContains(let value):
            return value
        }
    }
}

extension Persistable {
    internal func graphQLValue() -> Any {
        switch self {
        case is Bool:
            return self
        case let double as Double:
            return Decimal(double)
        case is Int:
            return self
        case is String:
            return self
        case let temporalDate as Temporal.Date:
            return temporalDate.iso8601String
        case let temporalDateTime as Temporal.DateTime:
            return temporalDateTime.iso8601String
        case let temporalTime as Temporal.Time:
            return temporalTime.iso8601String
        default:
            return Fatal.preconditionFailure("""
            Value \(String(describing: self)) of type \(String(describing: type(of: self))) \
            is not a compatible type.
            """)
        }
    }
}
