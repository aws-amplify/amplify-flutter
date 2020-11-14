package com.amazonaws.amplify.amplify_datastore.types.hub

import com.amazonaws.amplify.amplify_datastore.types.model.FlutterSerializedModel
import com.amplifyframework.core.model.temporal.Temporal
import com.amplifyframework.datastore.appsync.ModelMetadata
import com.amplifyframework.datastore.appsync.ModelWithMetadata
import com.amplifyframework.datastore.appsync.SerializedModel
import com.amplifyframework.datastore.syncengine.LastSyncMetadata

class FlutterHubElement(
        private val modelWithMetadata: ModelWithMetadata<*>,
        private val schema: Map<String, Any>?
) {
    fun toValueMap(): Map<String, Any> {
        var serializedModel: MutableMap<String, Any> = FlutterSerializedModel(this.modelWithMetadata.model as SerializedModel).toMap().toMutableMap()
        if (schema != null) {
            serializedModel["modelSchema"] = schema
        }
        return mapOf(
            "syncMetadata" to FlutterSyncMetaData(this.modelWithMetadata.syncMetadata).toValueMap(),
            "model" to serializedModel
        )
    }
}