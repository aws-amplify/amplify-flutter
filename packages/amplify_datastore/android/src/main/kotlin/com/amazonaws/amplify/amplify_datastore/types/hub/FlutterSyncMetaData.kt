package com.amazonaws.amplify.amplify_datastore.types.hub

import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.temporal.Temporal
import com.amplifyframework.datastore.appsync.ModelMetadata
import com.amplifyframework.datastore.appsync.ModelWithMetadata

class FlutterSyncMetaData(var metadata: ModelMetadata) {
    fun toValueMap(): Map<String, Any?> {
        return mapOf(
                "id" to this.metadata.id,
                "_deleted" to this.metadata.isDeleted,
                "_version" to this.metadata.version,
                "_lastChangedAt" to this.metadata.lastChangedAt
        )
    }
}