package com.amazonaws.amplify.amplify_datastore.types.conflict_handler

import com.amplifyframework.core.model.Model
import com.amplifyframework.datastore.DataStoreConflictHandler;

data class FlutterConflictResolutionDecision(val map: Map<String, Any>) {

    fun convertToNativeConflictResolutionDecision() : DataStoreConflictHandler.ConflictResolutionDecision<Model>? {
        return null
    }
}