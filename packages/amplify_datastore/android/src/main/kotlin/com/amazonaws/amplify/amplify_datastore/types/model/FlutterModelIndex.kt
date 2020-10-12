package com.amazonaws.amplify.amplify_datastore.types.model

import com.amplifyframework.core.model.ModelIndex

data class FlutterModelIndex(val map: Map<String, Any>) {
    fun convertToNativeModelIndex() : ModelIndex{
        TODO("Not yet implemented")
    }
}
