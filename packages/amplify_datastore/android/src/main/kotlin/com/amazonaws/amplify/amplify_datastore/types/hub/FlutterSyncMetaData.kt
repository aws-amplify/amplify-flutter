// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.hub

import com.amplifyframework.core.model.Model
import com.amplifyframework.datastore.syncengine.OutboxMutationEvent

class FlutterSyncMetaData(private var metadata: OutboxMutationEvent.OutboxMutationEventElement<out Model>) {
    fun toValueMap(): Map<String, Any?> {
        return mapOf(
            "_deleted" to this.metadata.isDeleted,
            "_version" to this.metadata.version,
            "_lastChangedAt" to this.metadata.lastChangedAt
        )
    }
}
