/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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
