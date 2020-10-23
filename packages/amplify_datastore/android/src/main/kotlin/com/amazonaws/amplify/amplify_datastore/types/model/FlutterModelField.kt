/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import com.amplifyframework.core.model.temporal.Temporal

data class FlutterModelField(val map: Map<String, Any>) {
    // Name of the field is the name of the instance variable
    // of the Model class.
    private val name: String = map["name"] as String

    // Type of the field is the data type of the instance variables
    // of the Model class.
    private val type: String = map["type"] as String

    // The type of the field in the target. For example: type of the
    // field in the GraphQL target.
    private val targetType: String? = map["targetType"] as String?

    // If the field is a required or an optional field
    private val isRequired = map["isRequired"] as Boolean

    // If the field is an array targetType. False if it is a primitive
    // targetType and True if it is an array targetType.
    private val isArray = map["isArray"] as Boolean

    // True if the field is an enumeration type.
    private val isEnum = map["isEnum"] as Boolean

    // True if the field is an instance of model.
    private val isModel = map["isModel"] as Boolean

    // An array of rules for owner based authorization
    private val authRules: List<FlutterAuthRule>? =
            (map["authRules"] as List<Map<String, Any>>?)?.map { serializedAuthRule ->
                FlutterAuthRule(serializedAuthRule)
            }

    fun convertToNativeModelField(): ModelField {
        var builder: ModelField.ModelFieldBuilder = ModelField.builder()
                .name(name)
                .type(getJavaClass(type))
                .isArray(isArray)
                .isEnum(isEnum)
                .isRequired(isRequired)
                .isModel(isModel)
        if (!targetType.isNullOrEmpty()) {
            builder = builder.targetType(targetType)
        }
        if (!authRules.isNullOrEmpty()) {
            builder = builder.authRules(authRules.map { authRule ->
                authRule.convertToNativeAuthRule()
            })
        }
        return builder.build()
    }

    // TODO Expand this for enums/models(associations)
    private fun getJavaClass(type: String): Class<*> {
        when (type) {
            "String" -> return String::class.java
            "Integer" -> return Int::class.java
            "Double" -> return Double::class.java
            "Long" -> return Long::class.java
            "Date" -> return Temporal.Date::class.java
            "Time" -> return Temporal.Time::class.java
            "DateTime" -> return Temporal.DateTime::class.java
            "TimeStamp" -> return Temporal.Timestamp::class.java
        }
        return Object::class.java
    }
}
