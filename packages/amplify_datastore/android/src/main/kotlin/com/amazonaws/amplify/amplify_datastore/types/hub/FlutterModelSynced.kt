package com.amazonaws.amplify.amplify_datastore.types.hub

class FlutterModelSynced(
        override val eventName: String,
        val model: String,
        val isFullSync: Boolean,
        val isDeltaSync: Boolean,
        val added: Int,
        val updated: Int,
        val deleted: Int
) : FlutterHubEvent {
    override fun toValueMap(): Map<String, Any> {
        return mapOf(
                "eventName" to this.eventName,
                "model" to this.model,
                "isFullSync" to this.isFullSync,
                "isDeltaSync" to this.isDeltaSync,
                "added" to this.added,
                "updated" to this.updated,
                "deleted" to this.deleted
        )
    }
}