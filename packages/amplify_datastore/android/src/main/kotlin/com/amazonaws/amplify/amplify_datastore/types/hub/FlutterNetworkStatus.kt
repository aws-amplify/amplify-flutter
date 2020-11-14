package com.amazonaws.amplify.amplify_datastore.types.hub

class FlutterNetworkStatus(override val eventName: String, val active: Boolean) : FlutterHubEvent {
    override fun toValueMap(): Map<String, Any> {
        return mapOf(
                "eventName" to this.eventName,
                "active" to this.active
        )
    }
}