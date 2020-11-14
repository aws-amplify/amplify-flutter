package com.amazonaws.amplify.amplify_datastore.types.hub

class FlutterOutboxStatus(override val eventName: String, private val isEmpty: Boolean) : FlutterHubEvent {
    override fun toValueMap(): Map<String, Any> {
        return mapOf(
            "eventName" to this.eventName,
            "isEmpty" to this.isEmpty
        )
    }
}