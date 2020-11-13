package com.amazonaws.amplify.amplify_datastore

import android.os.Handler
import android.os.Looper
import com.amplifyframework.datastore.appsync.SerializedModel
import io.flutter.plugin.common.EventChannel

class DataStoreObserveEventStreamHandler : EventChannel.StreamHandler {
    private var eventSink: EventChannel.EventSink? = null
    override fun onListen(argunents: Any?, sink: EventChannel.EventSink) {
        eventSink = sink
    }

    fun sendEvent(flutterEvent: Map<String, Any>) {
        Handler(Looper.getMainLooper()).post {
            eventSink?.success(flutterEvent)
        }
    }

    fun endOfStream() {
        eventSink?.endOfStream()
    }

    fun error(errorCode: String, localizedMessage: String?, details: Any?) {
        eventSink?.error(errorCode, localizedMessage, details)
    }

    override fun onCancel(p0: Any?) {
        eventSink = null
    }
}