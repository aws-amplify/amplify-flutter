//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import SQLite

extension SQLiteStorageEngineAdapter {

    @discardableResult func createStore(for modelSchema: ModelSchema) throws -> String {
        guard let connection = connection else {
            throw DataStoreError.nilSQLiteConnection()
        }
        let createTableStatement = CreateTableStatement(modelSchema: modelSchema).stringValue
        let createIndexStatement = modelSchema.createIndexStatements()
        try connection.execute(createTableStatement)
        try connection.execute(createIndexStatement)
        return createTableStatement
    }

    @discardableResult func removeStore(for modelSchema: ModelSchema) throws -> String {
        guard let connection = connection else {
            throw DataStoreError.nilSQLiteConnection()
        }
        let dropStatement = DropTableStatement(modelSchema: modelSchema).stringValue
        try connection.execute(dropStatement)
        return dropStatement
    }

    @discardableResult func emptyStore(for modelSchema: ModelSchema) throws -> String {
        guard let connection = connection else {
            throw DataStoreError.nilSQLiteConnection()
        }
        let deleteStatement = DeleteStatement(modelSchema: modelSchema).stringValue
        try connection.execute(deleteStatement)
        return deleteStatement
    }

    @discardableResult func renameStore(from: ModelSchema, toModelSchema: ModelSchema) throws -> String {
        guard let connection = connection else {
            throw DataStoreError.nilSQLiteConnection()
        }
        let alterTableStatement = AlterTableStatement(from: from, toModelSchema: toModelSchema).stringValue
        try connection.execute(alterTableStatement)
        return alterTableStatement
    }
}
