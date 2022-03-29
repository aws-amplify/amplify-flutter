/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

class FlutterModelSyncedEvent(
    override val eventName: String,
    val model: String,
    val isFullSync: Boolean,
    val isDeltaSync: Boolean,
    val added: Int,
    val updated: Int,
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
