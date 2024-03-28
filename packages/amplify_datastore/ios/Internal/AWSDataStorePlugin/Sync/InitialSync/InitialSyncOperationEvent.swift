//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import AWSPluginsCore

enum InitialSyncOperationEvent {
    /// Published at the start of sync query (full or delta) for a particular Model
    /// Used by `SyncEventEmitter` and `ModelSyncedEmitted`
    case started(modelName: ModelName, syncType: SyncType)

    /// Published when a remote model is enqueued for local store reconciliation.
    /// Used by `ModelSyncedEventEmitter` for record counting.
    case enqueued(MutationSync<AnyModel>, modelName: ModelName)

    /// Published when the sync operation has completed and all remote models have been enqueued for reconciliation.
    /// Used by `ModelSyncedEventEmitter` to determine when to send `ModelSyncedEvent`
    case finished(modelName: ModelName, error: DataStoreError? = nil)
}

enum SyncType {
   case fullSync
   case deltaSync
}
