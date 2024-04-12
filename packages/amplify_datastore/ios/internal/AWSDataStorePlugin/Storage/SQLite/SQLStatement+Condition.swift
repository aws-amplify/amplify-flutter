//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import SQLite

typealias SQLPredicate = (String, [Binding?])

/// Utility function that translates a `QueryPredicate` to well-formatted SQL conditions.
/// It walks all nodes of a predicate tree and output the appropriate SQL statement.
///
/// - Parameters:
///   - modelSchema: the model schema of the `Model`
///   - predicate: the query predicate
/// - Returns: a tuple containing the SQL string and the associated values
private func translateQueryPredicate(from modelSchema: ModelSchema,
                                     predicate: QueryPredicate,
                                     namespace: Substring? = nil) -> SQLPredicate {
    var sql: [String] = []
    var bindings: [Binding?] = []
    let indentPrefix = "  "
    var indentSize = 1

    func translate(_ pred: QueryPredicate, predicateIndex: Int, groupType: QueryPredicateGroupType) {
        let indent = String(repeating: indentPrefix, count: indentSize)
        if let operation = pred as? QueryPredicateOperation {
            let column = resolveColumn(operation)
            if predicateIndex == 0 {
                sql.append("\(indent)\(operation.operator.sqlOperation(column: column))")
            } else {
                sql.append("\(indent)\(groupType.rawValue) \(operation.operator.sqlOperation(column: column))")
            }

            bindings.append(contentsOf: operation.operator.bindings)
        } else if let group = pred as? QueryPredicateGroup {
            var shouldClose = false

            if predicateIndex == 0 {
                sql.append("\(indent)(")
            } else {
                sql.append("\(indent)\(groupType.rawValue) (")
            }

            indentSize += 1
            shouldClose = true

            for index in 0 ..< group.predicates.count {
                translate(group.predicates[index], predicateIndex: index, groupType: group.type)
            }

            if shouldClose {
                indentSize -= 1
                sql.append("\(indent))")
            }
        } else if let constant = pred as? QueryPredicateConstant {
            if case .all = constant {
                sql.append("or 1 = 1")
            }
        }
    }

    func resolveColumn(_ operation: QueryPredicateOperation) -> String {
        let modelField = modelSchema.field(withName: operation.field)
        if let namespace = namespace, let modelField = modelField {
            return modelField.columnName(forNamespace: String(namespace))
        } else if let modelField = modelField {
            return modelField.columnName()
        } else if let namespace = namespace {
            return String(namespace).quoted() + "." + operation.field.quoted()
        }
        return operation.field.quoted()
    }

    // the very first `and` is always prepended, using -1 for if statement checking
    // the very first `and` is to connect `where` clause with translated QueryPredicate
    translate(predicate, predicateIndex: -1, groupType: .and)
    return (sql.joined(separator: "\n"), bindings)
}

/// Represents a partial SQL statement with query conditions. This type can be used to
/// compose `insert`, `update`, `delete` and `select` statements with conditions.
struct ConditionStatement: SQLStatement {

    let modelSchema: ModelSchema
    let stringValue: String
    let variables: [Binding?]

    init(modelSchema: ModelSchema, predicate: QueryPredicate, namespace: Substring? = nil) {
        self.modelSchema = modelSchema

        let (sql, variables) = translateQueryPredicate(from: modelSchema,
                                                       predicate: predicate,
                                                       namespace: namespace)
        self.stringValue = sql
        self.variables = variables
    }

}
