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

package com.amazonaws.amplify.amplify_datastore

import android.os.Handler
import android.os.Looper
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import io.flutter.plugin.common.EventChannel

class DataStoreObserveEventStreamHandler : EventChannel.StreamHandler {
    private var eventSink: EventChannel.EventSink? = null
    private val handler = Handler(Looper.getMainLooper())
    override fun onListen(argunents: Any?, sink: EventChannel.EventSink) {
        eventSink = sink
    }

    fun sendEvent(flutterEvent: Map<String, Any>) {
        handler.post { eventSink?.success(flutterEvent) }
    }

    fun endOfStream() {
        eventSink?.endOfStream()
    }

    fun error(errorCode: String, details: Any?) {
        handler.post { eventSink?.error(errorCode, ExceptionMessages.defaultFallbackExceptionMessage, details) }
    }

    override fun onCancel(p0: Any?) {
        eventSink = null
    }
}
