package com.amazonaws.amplify.amplify_datastore.types.model

import com.amplifyframework.core.model.ModelAssociation

data class FlutterModelAssociation(val map: Map<String, Any>) {
    fun convertToNativeModelAssociation() : ModelAssociation{
        TODO("Not yet implemented")
    }

}
