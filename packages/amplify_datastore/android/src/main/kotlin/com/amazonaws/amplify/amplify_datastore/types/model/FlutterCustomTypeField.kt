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

import com.amplifyframework.core.model.CustomTypeField

data class FlutterCustomTypeField(val map: Map<String, Any>) {
    // Name of the field
    private val name: String = map["name"] as String

    // Describes the field type (defined by Flutter amplify_datastore ModelFieldTypeEnum)
    // to actual native type map
    private val type: FlutterFieldType = FlutterFieldType(map["type"] as Map<String, Any>)

    // If the field is a required or an optional field
    private val isRequired: Boolean = map["isRequired"] as Boolean

    // If the field is an array
    private val isArray: Boolean = map["isArray"] as Boolean

    // True if the field is an enumeration type
    private val isEnum: Boolean = type.isEnum()

    // True if the field value uses CustomType
    private val isCustomType: Boolean = type.isCustomType()

    fun convertToNativeModelField(): CustomTypeField {
        return CustomTypeField.builder()
            .name(name)
            .javaClassForValue(type.getJavaClass())
            .targetType(type.getTargetType())
            .isRequired(isRequired)
            .isArray(isArray)
            .isEnum(isEnum)
            .isCustomType(isCustomType)
            .build()
    }
}
