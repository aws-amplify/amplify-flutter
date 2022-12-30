// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore

import android.os.Handler
import android.os.Looper
import com.amazonaws.amplify.exception.ExceptionMessages
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
