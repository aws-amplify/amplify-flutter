//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify

public struct ModelSyncMetadata: Model {
    /// The id of the ModelSyncMetada record is the name of the model being synced
    public let id: String

    /// The timestamp (in Unix seconds) at which the last sync was started, as reported by the service
    public var lastSync: Int64?

    /// The sync predicate for this model, extracted out from the sync expression.
    public var syncPredicate: String?

    public init(id: String,
                lastSync: Int64? = nil,
                syncPredicate: String? = nil) {
        self.id = id
        self.lastSync = lastSync
        self.syncPredicate = syncPredicate
    }
}
