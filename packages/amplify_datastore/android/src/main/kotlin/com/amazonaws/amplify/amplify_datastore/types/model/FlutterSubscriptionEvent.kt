// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.model

import com.amplifyframework.core.model.SerializedModel

data class FlutterSubscriptionEvent(val serializedModel: SerializedModel, val eventType: String) {
    private val serializedItem: Map<String, Any> =
        FlutterSerializedModel(serializedModel = serializedModel).toMap()

    fun toMap(): Map<String, Any> {
        return mapOf(
            "item" to serializedItem,
            "eventType" to eventType
        )
    }
}
