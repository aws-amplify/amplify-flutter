package com.amazonaws.amplify.amplify_datastore.types.model

import com.amplifyframework.datastore.appsync.SerializedModel

data class FlutterSubscriptionEvent(val serializedModel: SerializedModel, val eventType: String) {
    private val serializedItem: Map<String, Any> = FlutterSerializedModel(serializedModel = serializedModel).toMap()

    fun toMap(): Map<String, Any> {
        return mapOf(
                "item" to serializedItem,
                "eventType" to eventType)
    }
}
