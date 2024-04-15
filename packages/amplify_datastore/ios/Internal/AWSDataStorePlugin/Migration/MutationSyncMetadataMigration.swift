//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import AWSPluginsCore

/// Migrates `MutationSyncMetadata` to the new format.
///
/// Format of the `id` in `MutationSyncMetadata` has changed to support unique ids
/// across mutiple model types. Earlier model id is repalced with id of the format `{modelName}|{modelId}`
///
class MutationSyncMetadataMigration: ModelMigration {

    weak var delegate: MutationSyncMetadataMigrationDelegate?

    init(delegate: MutationSyncMetadataMigrationDelegate) {
        self.delegate = delegate
    }

    func apply() throws {
        guard let delegate = delegate else {
            log.debug("Missing MutationSyncMetadataMigrationDelegate delegate")
            throw DataStoreError.unknown("Missing MutationSyncMetadataMigrationDelegate delegate", "", nil)
        }
        try delegate.preconditionCheck()
        try delegate.transaction {
            if try delegate.mutationSyncMetadataStoreEmptyOrMigrated() {
                return
            }

            if try delegate.containsDuplicateIdsAcrossModels() {
                log.debug("Duplicate IDs found across different model types.")
                log.debug("Clearing MutationSyncMetadata and ModelSyncMetadata to force full sync.")
                try delegate.applyMigrationStep(.emptyMutationSyncMetadataStore)
                try delegate.applyMigrationStep(.emptyModelSyncMetadataStore)
            } else {
                log.debug("No duplicate IDs found.")
                log.debug("Modifying and backfilling MutationSyncMetadata")
                try delegate.applyMigrationStep(.removeMutationSyncMetadataCopyStore)
                try delegate.applyMigrationStep(.createMutationSyncMetadataCopyStore)
                try delegate.applyMigrationStep(.backfillMutationSyncMetadata)
                try delegate.applyMigrationStep(.removeMutationSyncMetadataStore)
                try delegate.applyMigrationStep(.renameMutationSyncMetadataCopy)
            }
        }
    }
}

extension MutationSyncMetadataMigration: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
