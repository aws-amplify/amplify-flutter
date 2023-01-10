// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.hub

class FlutterModelSyncedEvent(
    override val eventName: String,
    val model: String,
    private val isFullSync: Boolean,
    private val isDeltaSync: Boolean,
    private val added: Int,
    private val updated: Int,
    val deleted: Int
) : FlutterHubEvent {
    override fun toValueMap(): Map<String, Any> {
        return mapOf(
            "eventName" to this.eventName,
            "model" to this.model,
            "isFullSync" to this.isFullSync,
            "isDeltaSync" to this.isDeltaSync,
            "added" to this.added,
            "updated" to this.updated,
            "deleted" to this.deleted
        )
    }
}
