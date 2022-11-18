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

import com.amplifyframework.core.model.Model
import com.amplifyframework.datastore.syncengine.OutboxMutationEvent

class FlutterSyncMetaData(var metadata: OutboxMutationEvent.OutboxMutationEventElement<out Model>) {
    fun toValueMap(): Map<String, Any?> {
        return mapOf(
            "id" to this.metadata.model.primaryKeyString,
            "_deleted" to this.metadata.isDeleted,
            "_version" to this.metadata.version,
            "_lastChangedAt" to (this.metadata.lastChangedAt ?: null)
        )
    }
}
