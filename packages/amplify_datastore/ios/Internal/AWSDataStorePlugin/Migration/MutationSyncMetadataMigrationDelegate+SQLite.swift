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

final class SQLiteMutationSyncMetadataMigrationDelegate: MutationSyncMetadataMigrationDelegate {

    let modelSchemas: [ModelSchema]
    weak var storageAdapter: SQLiteStorageEngineAdapter?

    init(storageAdapter: SQLiteStorageEngineAdapter, modelSchemas: [ModelSchema]) {
        self.storageAdapter = storageAdapter
        self.modelSchemas = modelSchemas
    }

    func transaction(_ basicClosure: BasicThrowableClosure) throws {
        try storageAdapter?.transaction(basicClosure)
    }

    func applyMigrationStep(_ step: MutationSyncMetadataMigrationStep) throws {
        switch step {
        case .emptyMutationSyncMetadataStore:
            try emptyMutationSyncMetadataStore()
        case .emptyModelSyncMetadataStore:
            try emptyModelSyncMetadataStore()
        case .removeMutationSyncMetadataCopyStore:
            try removeMutationSyncMetadataCopyStore()
        case .createMutationSyncMetadataCopyStore:
            try createMutationSyncMetadataCopyStore()
        case .backfillMutationSyncMetadata:
            try backfillMutationSyncMetadata()
        case .removeMutationSyncMetadataStore:
            try removeMutationSyncMetadataStore()
        case .renameMutationSyncMetadataCopy:
            try renameMutationSyncMetadataCopy()
        }
    }

    // MARK: - Clear

    @discardableResult func emptyMutationSyncMetadataStore() throws -> String {
        guard let storageAdapter = storageAdapter else {
            log.debug("Missing SQLiteStorageEngineAdapter for model migration")
            throw DataStoreError.nilStorageAdapter()
        }

        return try storageAdapter.emptyStore(for: MutationSyncMetadata.schema)
    }

    @discardableResult func emptyModelSyncMetadataStore() throws -> String {
        guard let storageAdapter = storageAdapter else {
            log.debug("Missing SQLiteStorageEngineAdapter for model migration")
            throw DataStoreError.nilStorageAdapter()
        }

        return try storageAdapter.emptyStore(for: ModelSyncMetadata.schema)
    }

    // MARK: - Migration

    @discardableResult func removeMutationSyncMetadataCopyStore() throws -> String {
        guard let storageAdapter = storageAdapter else {
            log.debug("Missing SQLiteStorageEngineAdapter for model migration")
            throw DataStoreError.nilStorageAdapter()
        }

        return try storageAdapter.removeStore(for: MutationSyncMetadataMigration.MutationSyncMetadataCopy.schema)
    }

    @discardableResult func createMutationSyncMetadataCopyStore() throws -> String {
        guard let storageAdapter = storageAdapter else {
            log.debug("Missing SQLiteStorageEngineAdapter for model migration")
            throw DataStoreError.nilStorageAdapter()
        }

        return try storageAdapter.createStore(for: MutationSyncMetadataMigration.MutationSyncMetadataCopy.schema)
    }

    @discardableResult func backfillMutationSyncMetadata() throws -> String {
        guard let storageAdapter = storageAdapter else {
            log.debug("Missing SQLiteStorageEngineAdapter for model migration")
            throw DataStoreError.nilStorageAdapter()
        }

        guard let connection = storageAdapter.connection else {
            throw DataStoreError.nilSQLiteConnection()
        }

        var sql = ""
        for modelSchema in modelSchemas {
            let modelName = modelSchema.name

            if sql != "" {
                sql += " UNION ALL "
            }
            sql += "SELECT id, \'\(modelName)\' as tableName FROM \(modelName)"
        }
        sql = "INSERT INTO \(MutationSyncMetadataMigration.MutationSyncMetadataCopy.modelName) (id,deleted,lastChangedAt,version) " +
        "select models.tableName || '|' || mm.id, mm.deleted, mm.lastChangedAt, mm.version " +
        "from MutationSyncMetadata mm INNER JOIN (" + sql + ") as models on mm.id=models.id"
        try connection.execute(sql)
        return sql
    }

    @discardableResult func removeMutationSyncMetadataStore() throws -> String {
        guard let storageAdapter = storageAdapter else {
            log.debug("Missing SQLiteStorageEngineAdapter for model migration")
            throw DataStoreError.nilStorageAdapter()
        }

        return try storageAdapter.removeStore(for: MutationSyncMetadata.schema)
    }

    @discardableResult func renameMutationSyncMetadataCopy() throws -> String {
        guard let storageAdapter = storageAdapter else {
            log.debug("Missing SQLiteStorageEngineAdapter for model migration")
            throw DataStoreError.nilStorageAdapter()
        }

        return try storageAdapter.renameStore(from: MutationSyncMetadataMigration.MutationSyncMetadataCopy.schema,
                                              toModelSchema: MutationSyncMetadata.schema)
    }
}

extension SQLiteMutationSyncMetadataMigrationDelegate: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
