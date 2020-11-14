package com.amazonaws.amplify.amplify_datastore.types.hub

interface FlutterHubEvent {
    val eventName: String
    fun toValueMap(): Map<String, Any> {
        return mapOf(
                "eventName" to this.eventName
        )
    }
}