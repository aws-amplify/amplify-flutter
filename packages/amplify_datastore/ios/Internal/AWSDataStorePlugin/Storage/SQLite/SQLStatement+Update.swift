//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import SQLite

/// Represents a `update` SQL statement.
struct UpdateStatement: SQLStatement {

    let modelSchema: ModelSchema
    let conditionStatement: ConditionStatement?

    private let model: Model

    init(model: Model, modelSchema: ModelSchema, condition: QueryPredicate? = nil) {
        self.model = model
        self.modelSchema = modelSchema

        var conditionStatement: ConditionStatement?
        if let condition = condition {
            let statement = ConditionStatement(modelSchema: modelSchema,
                                               predicate: condition)
            conditionStatement = statement
        }

        self.conditionStatement = conditionStatement
    }

    var stringValue: String {
        let columns = updateColumns.map { $0.columnName() }

        let columnsStatement = columns.map { column in
            "  \(column) = ?"
        }

        var sql = """
        update "\(modelSchema.name)"
        set
        \(columnsStatement.joined(separator: ",\n"))
        where \(modelSchema.primaryKey.columnName()) = ?
        """

        if let conditionStatement = conditionStatement {
            sql = """
            \(sql)
            \(conditionStatement.stringValue)
            """
        }

        return sql
    }

    var variables: [Binding?] {
        var bindings = model.sqlValues(for: updateColumns, modelSchema: modelSchema)
        bindings.append(model.identifier(schema: modelSchema).stringValue)
        if let conditionStatement = conditionStatement {
            bindings.append(contentsOf: conditionStatement.variables)
        }
        return bindings
    }

    private var updateColumns: [ModelField] {
        modelSchema.columns.filter { !$0.isPrimaryKey }
    }
}
