// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.model

import com.amazonaws.amplify.cast
import com.amplifyframework.core.model.ModelAssociation

data class FlutterModelAssociation(val map: Map<String, Any>) {

    private val associationType: String = map["associationType"] as String
    private val targetNames = when (val targetNames = map["targetNames"]) {
        is List<*> -> targetNames.cast()
        else -> when (val targetName = map["targetName"]) {
            is String -> listOf(targetName)
            else -> null
        }
    }
    private val associatedName: String? = map["associatedName"] as String?
    private val associatedType: String? = map["associatedType"] as String?

    fun convertToNativeModelAssociation(): ModelAssociation {
        return ModelAssociation.builder()
            .name(associationType)
            .targetNames(targetNames?.toTypedArray())
            .associatedName(associatedName)
            .associatedType(associatedType)
            .build()
    }
}
