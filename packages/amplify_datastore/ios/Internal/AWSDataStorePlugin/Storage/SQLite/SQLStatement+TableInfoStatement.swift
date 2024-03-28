//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import SQLite

struct TableInfoStatement: SQLStatement {
    let modelSchema: ModelSchema

    var stringValue: String {
        return "PRAGMA table_info(\"\(modelSchema.name)\");"
    }
}
