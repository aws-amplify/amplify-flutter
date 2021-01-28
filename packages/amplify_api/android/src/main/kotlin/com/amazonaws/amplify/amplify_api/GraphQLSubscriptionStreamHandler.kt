package com.amazonaws.amplify.amplify_api

import android.os.Handler
import android.os.Looper
import com.amplifyframework.api.graphql.GraphQLResponse
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

    fun sendEvent(data: String?, errors: List<GraphQLResponse.Error>, id: String, type: GraphQLSubscriptionEventTypes) {
        handler.post {
            var result: MutableMap<String, Any?> = mutableMapOf(
                    "id" to id,
                    "type" to type.toString()
            )
            if (type == GraphQLSubscriptionEventTypes.DATA) {
                result["payload"] = mapOf(
                        "data" to data,
                        "errors" to errors
                )
            }

            eventSink?.success(result)
        }
    }

    fun sendError(msg: String, errorMap: Map<String, Any>) {
        handler.post { eventSink?.error("AmplifyException", msg, errorMap) }
    }
}