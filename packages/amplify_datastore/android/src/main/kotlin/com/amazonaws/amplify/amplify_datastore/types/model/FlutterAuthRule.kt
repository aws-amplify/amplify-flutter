package com.amazonaws.amplify.amplify_datastore.types.model

import com.amplifyframework.core.model.AuthRule

data class FlutterAuthRule(val map: Map<String, Any>) {
    fun convertToNativeAuthRule() : AuthRule{
        TODO("Not yet implemented")
    }

}
