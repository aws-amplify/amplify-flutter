//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

/// Represents a `create table` SQL statement. The table is created based on the `ModelSchema`
struct CreateTableStatement: SQLStatement {

    let modelSchema: ModelSchema

    init(modelSchema: ModelSchema) {
        self.modelSchema = modelSchema
    }

    var stringValue: String {
        let name = modelSchema.name
        var statement = #"create table if not exists "\#(name)" (\#n"#

        let primaryKey = modelSchema.primaryKey
        let columns = modelSchema.columns
        let foreignKeys = modelSchema.foreignKeys

        for (index, column) in columns.enumerated() {
            statement += "  \"\(column.sqlName)\" \(column.sqlType.rawValue)"
            if column.name == primaryKey.name {
                statement += " primary key"
            }

            if column.isRequired {
                statement += " not null"
            }
            if column.isOneToOne && column.isForeignKey {
                statement += " unique"
            }

            let isNotLastColumn = index < columns.endIndex - 1
            if isNotLastColumn {
                statement += ",\n"
            }
        }

        let hasForeignKeys = !foreignKeys.isEmpty
        if hasForeignKeys {
            statement += ",\n"
        }

        for (index, foreignKey) in foreignKeys.enumerated() {
            statement += "  foreign key(\"\(foreignKey.sqlName)\") "
            let associatedModel = foreignKey.requiredAssociatedModelName
            guard let schema = ModelRegistry.modelSchema(from: associatedModel) else {
                return Fatal.preconditionFailure("""
                Could not retrieve schema for the model \(associatedModel), verify that datastore is initialized.
                """)
            }
            let associatedId = schema.primaryKey
            let associatedModelName = schema.name
            statement += "references \"\(associatedModelName)\"(\"\(associatedId.sqlName)\")\n"
            statement += "    on delete cascade"
            let isNotLastKey = index < foreignKeys.endIndex - 1
            if isNotLastKey {
                statement += "\n"
            }
        }

        statement += "\n);"
        return statement
    }
}
