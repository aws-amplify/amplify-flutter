package com.amazonaws.amplify.amplify_datastore.types.model

import com.amplifyframework.datastore.appsync.SerializedModel

data class FlutterSerializedModel(val serializedModel: SerializedModel) {
    private val id: String = serializedModel.id
    private val serializedData: Map<String, Any> = serializedModel.serializedData
    private val modelName: String = serializedModel.modelName

    fun toMap(): Map<String, Any> {
        return mapOf(
                "id" to id,
                "serializedData" to serializedData,
                "modelName" to modelName)
    }
}