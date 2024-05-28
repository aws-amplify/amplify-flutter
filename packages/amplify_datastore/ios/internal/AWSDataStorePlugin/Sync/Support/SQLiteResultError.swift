//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import SQLite
import SQLite3
import Amplify

/// Checks for specific SQLLite error codes
/// See https://sqlite.org/rescode.html#primary_result_code_list
enum SQLiteResultError {

    /// Constraint Violation, such as foreign key constraint violation, occurs when trying to process a SQL statement
    /// where the insert/update statement is performed for a child object and its parent does not exist.
    /// See https://sqlite.org/rescode.html#constraint for more details
    case constraintViolation(statement: Statement?)

    /// Represents a SQLite specific [error code](https://sqlite.org/rescode.html)
    ///
    /// - message: English-language text that describes the error
    /// - code: SQLite [error code](https://sqlite.org/rescode.html#primary_result_code_list)
    /// - statement: the statement which produced the error
    case error(message: String, code: Int32, statement: Statement?)

    init?(from dataStoreError: DataStoreError) {
        guard case let .invalidOperation(error) = dataStoreError,
              let resultError = error as? Result,
              case .error(let message, let code, let statement) = resultError else {
            return nil
        }

        if code == SQLITE_CONSTRAINT {
            self = .constraintViolation(statement: statement)
            return
        }

        self = .error(message: message, code: code, statement: statement)
    }
}
