// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.hub

import com.amazonaws.amplify.amplify_datastore.types.model.FlutterSerializedModel
import com.amplifyframework.core.model.SerializedModel
import com.amplifyframework.datastore.appsync.ModelMetadata

class FlutterSubscriptionDataProcessedEvent(
    override val eventName: String,
    private val model: SerializedModel,
    private val syncMetadata: ModelMetadata,
) : FlutterHubEvent {
    override fun toValueMap(): Map<String, Any> {
        return mapOf(
            "eventName" to eventName,
            "modelName" to model.modelName,
            "element" to mapOf(
                "syncMetadata" to mapOf(
                    "_deleted" to syncMetadata.isDeleted,
                    "_version" to syncMetadata.version,
                    "_lastChangedAt" to syncMetadata.lastChangedAt?.secondsSinceEpoch
                ),
                "model" to FlutterSerializedModel(model).toMap()
            )
        )
    }
}
