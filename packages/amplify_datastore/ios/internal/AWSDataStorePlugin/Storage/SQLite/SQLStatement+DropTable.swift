//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import SQLite

/// Represents a `drop table` SQL statement
struct DropTableStatement: SQLStatement {
    var modelSchema: ModelSchema

    var stringValue: String {
        return "DROP TABLE IF EXISTS \"\(modelSchema.name)\""
    }

    init(modelSchema: ModelSchema) {
        self.modelSchema = modelSchema
    }
}
