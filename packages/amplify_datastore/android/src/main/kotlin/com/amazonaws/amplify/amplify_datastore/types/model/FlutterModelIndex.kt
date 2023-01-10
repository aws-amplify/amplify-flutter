// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.model

import com.amazonaws.amplify.cast
import com.amplifyframework.core.model.ModelIndex

data class FlutterModelIndex(val map: Map<String, Any>) {
    val name: String = map["name"] as String? ?: unnamedIndexKey
    val fields: List<String> = when (val fields = map["fields"]) {
        is List<*> -> fields.cast()
        else -> emptyList()
    }

    fun convertToNativeModelIndex(): ModelIndex {
        return ModelIndex.builder()
            .indexName(name)
            .indexFieldNames(fields)
            .build()
    }

    companion object {
        const val unnamedIndexKey = "undefined"
    }
}
