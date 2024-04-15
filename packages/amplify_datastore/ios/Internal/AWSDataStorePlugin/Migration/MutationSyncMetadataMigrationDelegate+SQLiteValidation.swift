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

extension SQLiteMutationSyncMetadataMigrationDelegate {

    // MARK: - Precondition

    /// Migration requires some hardcoded SQL statements that may break if the schema changes
    /// Ensure that the schemas used in this migration are as expected
    func preconditionCheck() throws {
        let fieldCount = 4
        let idField = "id"
        let deletedField = "deleted"
        let lastChangedAtField = "lastChangedAt"
        let versionField = "version"

        guard MutationSyncMetadata.schema.fields.count == fieldCount else {
            throw DataStoreError.internalOperation("MutationSyncMetadata schema has changed from 4 fields", "", nil)
        }

        guard MutationSyncMetadata.schema.fields[idField] != nil,
              MutationSyncMetadata.schema.fields[deletedField] != nil,
              MutationSyncMetadata.schema.fields[lastChangedAtField] != nil,
              MutationSyncMetadata.schema.fields[versionField] != nil else {
            throw DataStoreError.internalOperation("MutationSyncMetadata schema missing expected fields", "", nil)
        }

        guard MutationSyncMetadataMigration.MutationSyncMetadataCopy.schema.fields.count == fieldCount else {
            throw DataStoreError.internalOperation("MutationSyncMetadataCopy schema has changed from 4 fields", "", nil)
        }

        guard MutationSyncMetadataMigration.MutationSyncMetadataCopy.schema.fields[idField] != nil,
              MutationSyncMetadataMigration.MutationSyncMetadataCopy.schema.fields[deletedField] != nil,
              MutationSyncMetadataMigration.MutationSyncMetadataCopy.schema.fields[lastChangedAtField] != nil,
              MutationSyncMetadataMigration.MutationSyncMetadataCopy.schema.fields[versionField] != nil else {
            throw DataStoreError.internalOperation("MutationSyncMetadataCopy schema missing expected fields", "", nil)
        }
    }

    // MARK: - Needs Migration

    /// If there are no MutationSyncMetadata records, then it is not necessary to apply the migration since there is no
    /// data to migrate. If there is data, and the id's have already been migrated ( > 0 keys), then no migration needed
    func mutationSyncMetadataStoreEmptyOrMigrated() throws -> Bool {
        let records = try selectMutationSyncMetadataRecords()
        if records.metadataCount == 0 || records.metadataIdMatchNewKeyCount > 0 {
            log.debug("No MutationSyncMetadata migration needed.")
            return true
        }
        log.debug("Migration is needed. MutationSyncMetadata IDs need to be migrated to new key format.")
        return false
    }

    /// Retrieve the record count from the MutationSyncMetadata table for
    ///     1. the total number of records
    ///     2. the total number of records that have the `id` match `<modelName>|<modelId>`
    func selectMutationSyncMetadataRecords() throws -> (metadataCount: Int64, metadataIdMatchNewKeyCount: Int64) {
        guard let storageAdapter = storageAdapter else {
            log.debug("Missing SQLiteStorageEngineAdapter for model migration")
            throw DataStoreError.nilStorageAdapter()
        }
        guard let connection = storageAdapter.connection else {
            throw DataStoreError.nilSQLiteConnection()
        }
        let sql = """
        select (select count(1) as count from MutationSyncMetadata) as allRecords,
        (select count(1) as count from MutationSyncMetadata where id like '%|%') as newKeys
        """
        log.debug("Checking MutationSyncMetadata records, SQL: \(sql)")
        let rows = try connection.run(sql)
        let iter = rows.makeIterator()
        while let row = try iter.failableNext() {
            if let metadataCount = row[0] as? Int64, let metadataIdMatchNewKeyCount = row[1] as? Int64 {
                return (metadataCount, metadataIdMatchNewKeyCount)
            } else {
                log.verbose("Failed to iterate over records")
                throw DataStoreError.unknown("Failed to iterate over records", "", nil)
            }
        }

        throw DataStoreError.unknown("Failed to select MutationSyncMetadata records", "", nil)
    }

    // MARK: - Cannot Migrate

    func containsDuplicateIdsAcrossModels() throws -> Bool {
        guard let storageAdapter = storageAdapter else {
            log.debug("Missing SQLiteStorageEngineAdapter for model migration")
            throw DataStoreError.nilStorageAdapter()
        }
        guard let connection = storageAdapter.connection else {
            throw DataStoreError.nilSQLiteConnection()
        }
        let sql = selectDuplicateIdAcrossModels()
        log.debug("Checking for duplicate IDs, SQL: \(sql)")
        let rows = try connection.run(sql)
        let iter = rows.makeIterator()
        while let row = try iter.failableNext() {
            return !row.isEmpty
        }

        return false
    }

    /// Retrieve results where `id` is the same across multiple tables.
    /// For three models, the SQL statement looks like this:
    /// ```
    /// SELECT id, tableName, count(id) as count FROM (
    ///    SELECT id, 'Restaurant' as tableName FROM Restaurant UNION ALL
    ///    SELECT id, 'Menu' as tableName FROM Menu UNION ALL
    ///    SELECT id, 'Dish' as tableName FROM Dish) GROUP BY id HAVING count > 1
    /// ```
    /// If there are three models in different model tables with the same id "1"
    /// the result of this query will have a row like:
    /// ```
    /// // [id, tableName, count(id)
    /// [Optional("1"), Optional("Restaurant"), Optional(3)]
    /// ```
    /// As long as there is one resulting duplicate id, the entire function will return true
    func selectDuplicateIdAcrossModels() -> String {
        var sql = ""
        for modelSchema in modelSchemas {
            let modelName = modelSchema.name
            if sql != "" {
                sql += " UNION ALL "
            }
            sql += "SELECT id, \'\(modelName)\' as tableName FROM \(modelName)"
        }
        return "SELECT id, tableName, count(id) as count FROM (" + sql + ") GROUP BY id HAVING count > 1"
    }
}
