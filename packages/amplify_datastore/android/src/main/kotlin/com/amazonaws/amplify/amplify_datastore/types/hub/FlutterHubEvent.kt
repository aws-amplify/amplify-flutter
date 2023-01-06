// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.hub

interface FlutterHubEvent {
    val eventName: String
    fun toValueMap(): Map<String, Any> {
        return mapOf(
            "eventName" to this.eventName
        )
    }
}
