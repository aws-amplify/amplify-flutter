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

import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.temporal.Temporal

data class FlutterModelFieldType(val map: Map<String, Any>) {

    // Type of the field is the data type of the instance variables
    // of the Model class.
    private val fieldType: String = map["fieldType"] as String

    // Name of the field is the name of the instance variable
    // of the Model class.
    private val ofModelName: String? = map["ofModelName"] as String?

    // This should always return false, enums are passed in as strings to Android
    fun isEnum(): Boolean {
        return false;
    }

    fun isModel(): Boolean {
        return fieldType == "model"
    }

    fun getTargetType(): String {
        return when (fieldType) {
            "string" -> "String"
            "int" -> "Integer"
            "double" -> "Double"
            "date" -> "AWSDate"
            "dateTime" -> "AWSDateTime"
            "time" -> "AWSTime"
            "timestamp" -> "AWSTimestamp"
            "bool" -> "Boolean"
            "enumeration" -> "String"
            "model" -> ofModelName!!
            "collection" -> ofModelName!!
            else -> throw Exception(
                    "FlutterModelFieldType.getModelTargetType - invalid fieldType supplied: $fieldType")
        }
    }

    fun getJavaClass(): Class<*> {
        return when (fieldType) {
            "string" -> String::class.java
            "int" -> Integer::class.java
            "double" -> Double::class.java
            "date" -> Temporal.Date::class.java
            "dateTime" -> Temporal.DateTime::class.java
            "time" -> Temporal.Time::class.java
            "timestamp" -> Temporal.Timestamp::class.java
            "bool" -> Boolean::class.java
            "enumeration" -> String::class.java
            "model" -> Model::class.java
            "collection" -> List::class.java
            else -> throw Exception(
                    "FlutterModelFieldType.getJavaClass - invalid fieldType supplied: $fieldType")
        }
    }
}