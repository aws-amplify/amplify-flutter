//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

/// Represents a `create index` SQL statement. The index is created based on the
/// secondary index present in the `ModelSchema`
struct CreateIndexStatement: SQLStatement {
    var modelSchema: ModelSchema

    // fields/column names which are used to create the index in SQLite table
    var fields: [ModelFieldName]

    // name of the secondary index
    var indexName: String

    init(modelSchema: ModelSchema, fields: [ModelFieldName], indexName: String?) {
        self.modelSchema = modelSchema
        self.fields = fields
        self.indexName = indexName ?? fields.joined(separator: "_") + "_pk"
    }

    var stringValue: String {
        return """
        create index if not exists \"\(indexName)\" on \"\(modelSchema.name)\" (\(fields.map { "\"\($0)\"" }.joined(separator: ", ")));
        """
    }
}
