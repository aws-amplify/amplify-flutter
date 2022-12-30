// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.hub

import com.amazonaws.amplify.amplify_datastore.types.model.FlutterSerializedModel
import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.SerializedModel
import com.amplifyframework.datastore.syncengine.OutboxMutationEvent

data class FlutterHubElement(
    private val modelWithMetadata: OutboxMutationEvent.OutboxMutationEventElement<out Model>
) {
    fun toValueMap(): Map<String, Any> {
        val serializedModel: MutableMap<String, Any> = FlutterSerializedModel(
            this.modelWithMetadata.model as SerializedModel
        ).toMap().toMutableMap()
        return mapOf(
            "syncMetadata" to FlutterSyncMetaData(this.modelWithMetadata).toValueMap(),
            "model" to serializedModel
        )
    }
}
