package com.amazonaws.amplify.amplify_datastore.types.hub

class FlutterSyncQueriesStarted(override val eventName: String, private val models: Array<String>) : FlutterHubEvent {
    override fun toValueMap(): Map<String, Any> {
        return mapOf(
                "eventName" to this.eventName,
                "models" to this.models
        )
    }
}