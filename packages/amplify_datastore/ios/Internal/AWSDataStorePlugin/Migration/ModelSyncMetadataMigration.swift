//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import SQLite
import AWSPluginsCore

class ModelSyncMetadataMigration: ModelMigration {

    weak var storageAdapter: SQLiteStorageEngineAdapter?

    func apply() throws {
        try performModelMetadataSyncPredicateUpgrade()
    }

    init(storageAdapter: SQLiteStorageEngineAdapter? = nil) {
        self.storageAdapter = storageAdapter
    }

    /// Add the new syncPredicate column for the ModelSyncMetadata system table.
    ///
    /// ModelSyncMetadata's syncPredicate column was added in Amplify version 2.22.0 to
    /// support a bug fix related to persisting the sync predicate of the sync expression.
    /// Apps before upgrading to this version of the plugin will have created the table already.
    /// Upgraded apps will not re-create the table with the CreateTableStatement, neither will throw an error
    /// (CreateTableStatement is run with 'create table if not exists' doing a no-op). This function
    /// checks if the column exists on the table, and if it doesn't, alter the table to add the new column.
    ///
    /// For more details, see https://github.com/aws-amplify/amplify-swift/pull/2757.
    /// - Returns: `true` if upgrade occured, `false` otherwise.
    @discardableResult
    func performModelMetadataSyncPredicateUpgrade() throws -> Bool {
        do {
            guard let field = ModelSyncMetadata.schema.field(
                withName: ModelSyncMetadata.keys.syncPredicate.stringValue) else {
                log.error("Could not find corresponding ModelField from ModelSyncMetadata for syncPredicate")
                return false
            }
            let exists = try columnExists(modelSchema: ModelSyncMetadata.schema,
                                          field: field)
            guard !exists else {
                log.debug("Detected ModelSyncMetadata table has syncPredicate column. No migration needed")
                return false
            }

            log.debug("Detected ModelSyncMetadata table exists without syncPredicate column.")
            guard let storageAdapter = storageAdapter else {
                log.debug("Missing SQLiteStorageEngineAdapter for model migration")
                throw DataStoreError.nilStorageAdapter()
            }
            guard let connection = storageAdapter.connection else {
                throw DataStoreError.nilSQLiteConnection()
            }
            let addColumnStatement = AlterTableAddColumnStatement(
                modelSchema: ModelSyncMetadata.schema,
                field: field).stringValue
            try connection.execute(addColumnStatement)
            log.debug("ModelSyncMetadata table altered to add syncPredicate column.")
            return true
        } catch {
            throw DataStoreError.invalidOperation(causedBy: error)
        }
    }

    func columnExists(modelSchema: ModelSchema, field: ModelField) throws -> Bool {
        guard let storageAdapter = storageAdapter else {
            log.debug("Missing SQLiteStorageEngineAdapter for model migration")
            throw DataStoreError.nilStorageAdapter()
        }
        guard let connection = storageAdapter.connection else {
            throw DataStoreError.nilSQLiteConnection()
        }

        let tableInfoStatement = TableInfoStatement(modelSchema: modelSchema)
        do {
            let existingColumns = try connection.prepare(tableInfoStatement.stringValue).run()
            let columnToFind = field.name
            var columnExists = false
            for column in existingColumns {
                // The second element is the column name
                if column.count >= 2,
                    let columnName = column[1],
                    let columNameString = columnName as? String,
                    columnToFind == columNameString {
                    columnExists = true
                    break
                }
            }
            return columnExists
        } catch {
            throw DataStoreError.invalidOperation(causedBy: error)
        }
    }
}

extension ModelSyncMetadataMigration: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
