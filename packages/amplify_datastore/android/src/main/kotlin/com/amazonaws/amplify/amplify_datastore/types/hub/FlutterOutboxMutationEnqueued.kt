package com.amazonaws.amplify.amplify_datastore.types.hub

import com.amplifyframework.core.model.Model
import com.amplifyframework.datastore.appsync.ModelWithMetadata

class FlutterOutboxMutationEnqueued(
        override val eventName: String,
        private val modelName: String,
        private val element: ModelWithMetadata<out Model>
) : FlutterHubEvent {
    override fun toValueMap(): Map<String, Any> {
        return mapOf(
                "eventName" to this.eventName,
                "modelName" to this.modelName,
                "element" to this.element
        )
    }
}