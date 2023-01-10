// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.hub

class FlutterNetworkStatusEvent(override val eventName: String, private val active: Boolean) : FlutterHubEvent {
    override fun toValueMap(): Map<String, Any> {
        return mapOf(
            "eventName" to this.eventName,
            "active" to this.active
        )
    }
}
