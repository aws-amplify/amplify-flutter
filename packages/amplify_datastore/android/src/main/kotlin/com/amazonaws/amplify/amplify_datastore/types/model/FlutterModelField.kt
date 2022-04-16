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

import com.amplifyframework.core.model.ModelField

data class FlutterModelField(val map: Map<String, Any>) {
    // Name of the field is the name of the instance variable
    // of the Model class.
    private val name: String = map["name"] as String

    // Type of the field is the data type of the instance variables
    // of the Model class.
    private val type: FlutterFieldType = FlutterFieldType(map["type"] as Map<String, Any>)

    // If the field is a required or an optional field
    private val isRequired: Boolean = map["isRequired"] as Boolean

    // If the field is an array targetType. False if it is a primitive
    // targetType and True if it is an array targetType.
    private val isArray: Boolean = map["isArray"] as Boolean

    // True if the field is an enumeration type.
    private val isEnum: Boolean = type.isEnum()

    // True if the field is an instance of model.
    private val isModel: Boolean = type.isModel()

    // True if the field is an instance of CustomType (Embedded)
    private val isCustomType: Boolean = type.isCustomType()

    private val isReadOnly: Boolean = map["isReadOnly"] as Boolean

    // An array of rules for owner based authorization
    private val authRules: List<FlutterAuthRule>? =
        (map["authRules"] as List<Map<String, Any>>?)?.map { FlutterAuthRule(it) }

    // Association (if any) of the model
    private val flutterModelAssociation: FlutterModelAssociation? =
        if (map["association"] == null) null
        else FlutterModelAssociation(map["association"] as Map<String, Any>)

    fun getModelAssociation(): FlutterModelAssociation? {
        return flutterModelAssociation
    }

    fun convertToNativeModelField(): ModelField {
        var builder: ModelField.ModelFieldBuilder = ModelField.builder()
            .name(name)
            .javaClassForValue(type.getJavaClass())
            .targetType(type.getTargetType())
            .isRequired(isRequired)
            .isArray(isArray)
            .isEnum(isEnum)
            .isModel(isModel)
            .isReadOnly(isReadOnly)
            .isCustomType(isCustomType)

        if (!authRules.isNullOrEmpty()) {
            builder = builder.authRules(authRules.map { it.convertToNativeAuthRule() })
        }
        return builder.build()
    }
}
