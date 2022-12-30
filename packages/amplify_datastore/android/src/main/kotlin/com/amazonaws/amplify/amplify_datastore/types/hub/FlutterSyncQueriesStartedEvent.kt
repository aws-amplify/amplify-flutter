// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.hub

import org.json.JSONArray

class FlutterSyncQueriesStartedEvent(override val eventName: String, private val models: Array<String>) :
    FlutterHubEvent {
    override fun toValueMap(): Map<String, Any> {
        return mapOf(
            "eventName" to this.eventName,
            "models" to JSONArray(this.models).toString()
        )
    }
}
