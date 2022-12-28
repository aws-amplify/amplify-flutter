// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.model

import com.amplifyframework.core.model.CustomTypeSchema

data class FlutterCustomTypeSchema(val map: Map<String, Any>) {
    val name: String = map["name"] as String
    private val pluralName: String? = map["pluralName"] as String?
    private val fields: Map<String, FlutterCustomTypeField> = (map["fields"] as Map<String, Map<String, Any>>)
        .mapValues { FlutterCustomTypeField(it.value) }

    fun convertToNativeCustomTypeSchema(): CustomTypeSchema {
        return CustomTypeSchema.builder()
            .name(name)
            .pluralName(pluralName)
            .fields(fields.mapValues { it.value.convertToNativeModelField() })
            .build()
    }
}
