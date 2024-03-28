//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

enum MutationSyncMetadataMigrationStep {
    case emptyMutationSyncMetadataStore
    case emptyModelSyncMetadataStore
    case removeMutationSyncMetadataCopyStore
    case createMutationSyncMetadataCopyStore
    case backfillMutationSyncMetadata
    case removeMutationSyncMetadataStore
    case renameMutationSyncMetadataCopy
}

/// Delegate used by `MutationSyncMetadataMigration` which can be implemented by different
/// storage adapters.
protocol MutationSyncMetadataMigrationDelegate: AnyObject {

    func preconditionCheck() throws

    func transaction(_ basicClosure: BasicThrowableClosure) throws

    func mutationSyncMetadataStoreEmptyOrMigrated() throws -> Bool

    func containsDuplicateIdsAcrossModels() throws -> Bool

    func applyMigrationStep(_ step: MutationSyncMetadataMigrationStep) throws
}
