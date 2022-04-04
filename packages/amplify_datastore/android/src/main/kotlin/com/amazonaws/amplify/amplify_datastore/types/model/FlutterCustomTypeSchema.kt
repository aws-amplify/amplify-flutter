/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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
