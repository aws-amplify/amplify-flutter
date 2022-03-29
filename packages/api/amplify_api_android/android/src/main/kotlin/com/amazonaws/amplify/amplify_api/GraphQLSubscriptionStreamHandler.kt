/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

package com.amazonaws.amplify.amplify_api

import android.os.Handler
import android.os.Looper
import io.flutter.plugin.common.EventChannel

class GraphQLSubscriptionStreamHandler : EventChannel.StreamHandler {
    private var eventSink: EventChannel.EventSink? = null
    private val handler = Handler(Looper.getMainLooper())

    override fun onListen(arguments: Any?, sink: EventChannel.EventSink?) {
        eventSink = sink
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
    }

    fun close() {
        eventSink?.endOfStream()
    }

    fun sendEvent(payload: Map<String, Any>?, id: String, type: GraphQLSubscriptionEventTypes) {
        handler.post {
            val result: MutableMap<String, Any?> = mutableMapOf(
                "id" to id,
                "type" to type.toString()
            )
            if (type == GraphQLSubscriptionEventTypes.DATA) {
                result["payload"] = payload
            }

            eventSink?.success(result)
        }
    }

    fun sendError(errorCode: String, id: String, details: Map<String, Any?>) {
        handler.post {
            eventSink?.error(
                errorCode,
                id,
                details
            )
        }
    }
}
