//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify

/// Hub payload for the `ModelSynced` event.
public struct ModelSyncedEvent {
    /// Name of the model that was synced
    public let modelName: String
    /// True when a full sync query was performed for this event.
    public let isFullSync: Bool
    /// True when a delta sync query was performed for this event.
    public let isDeltaSync: Bool
    /// Number of model instances added to the local store
    public let added: Int
    /// Number of existing model instances updated in the local store
    public let updated: Int
    /// Number of existing model instances deleted from the local store
    public let deleted: Int

    public init(modelName: String,
                isFullSync: Bool,
                isDeltaSync: Bool,
                added: Int,
                updated: Int,
                deleted: Int) {
        self.modelName = modelName
        self.isFullSync = isFullSync
        self.isDeltaSync = isDeltaSync
        self.added = added
        self.updated = updated
        self.deleted = deleted
    }
}

extension ModelSyncedEvent {
    struct Builder {
        var modelName: String
        var isFullSync: Bool
        var isDeltaSync: Bool
        var added: Int
        var updated: Int
        var deleted: Int

        init() {
            self.modelName = ""
            self.isFullSync = false
            self.isDeltaSync = false
            self.added = 0
            self.updated = 0
            self.deleted = 0
        }

        func build() -> ModelSyncedEvent {
            ModelSyncedEvent(
                modelName: modelName,
                isFullSync: isFullSync,
                isDeltaSync: isDeltaSync,
                added: added,
                updated: updated,
                deleted: deleted
            )
        }
    }
}
