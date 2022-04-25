package com.amazonaws.amplify.amplify_datastore.types.model

import com.amplifyframework.core.model.ModelPrimaryKey
import com.amplifyframework.core.model.SerializedModel
import java.io.Serializable

class FlutterModelPrimaryKey(private val primaryKeyFields: List<Serializable>) {
    fun convertToNativeModelPrimaryKey(): ModelPrimaryKey<SerializedModel> {
        val key = primaryKeyFields.first()
        val sortKeys = primaryKeyFields.subList(1, primaryKeyFields.size)

        return FlutterSerializedModelPrimaryKey(key, sortKeys)
    }
}

class FlutterSerializedModelPrimaryKey(key: Serializable, sortKeys: List<Serializable>) :
    ModelPrimaryKey<SerializedModel>(key, *sortKeys.toTypedArray())