// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.hub

import com.amplifyframework.core.model.Model
import com.amplifyframework.datastore.syncengine.OutboxMutationEvent

class FlutterOutboxMutationEnqueuedEvent(
    override val eventName: String,
    private val modelName: String,
    private val element: OutboxMutationEvent.OutboxMutationEventElement<out Model>
) : FlutterHubEvent {
    override fun toValueMap(): Map<String, Any> {

        return mapOf(
            "eventName" to this.eventName,
            "modelName" to this.modelName,
            "element" to FlutterHubElement(this.element).toValueMap()
        )
    }
}
