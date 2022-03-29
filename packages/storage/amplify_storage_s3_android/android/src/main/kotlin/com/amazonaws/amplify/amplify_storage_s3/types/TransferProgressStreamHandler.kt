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

package com.amazonaws.amplify.amplify_storage_s3.types

import android.os.Handler
import android.os.Looper
import com.amplifyframework.storage.result.StorageTransferProgress
import io.flutter.plugin.common.EventChannel

class TransferProgressStreamHandler : EventChannel.StreamHandler {

    private var eventSink: EventChannel.EventSink? = null
    private val handler = Handler(Looper.getMainLooper())

    fun onTransferProgressEvent(uuid: String, progress: StorageTransferProgress) {
        handler.post {
            val result: MutableMap<String, Any?> = mutableMapOf(
                "uuid" to uuid,
                "currentBytes" to progress.currentBytes,
                "totalBytes" to progress.totalBytes
            )
            eventSink?.success(result)
        }
    }

    // Called automatically
    override fun onListen(arguments: Any?, sink: EventChannel.EventSink) {
        eventSink = sink
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
    }
}
