// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.model

import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.temporal.Temporal

data class FlutterFieldType(val map: Map<String, Any>) {

    // Type of the field is the data type of the instance variables
    // of the Model class.
    private val fieldType: String = map["fieldType"] as String

    // Name of the field is the name of the instance variable
    // of the Model class.
    private val ofModelName: String? = map["ofModelName"] as String?

    private val ofCustomTypeName: String? = map["ofCustomTypeName"] as String?

    private fun mapTargetType(targetType: String, isCollection: Boolean = false): String {
        return when (targetType) {
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
            // When field type is "embedded" ofCustomTypeName will always be available
            // Under the contract with Flutter amplify_datastore ModelFieldDefinition
            "embedded" -> ofCustomTypeName!!
            "embeddedCollection" -> ofCustomTypeName!!
            else -> {
                if (isCollection) {
                    ofModelName!!
                } else {
                    throw Exception(
                        "FlutterFieldType.getModelTargetType - invalid fieldType supplied: $targetType"
                    )
                }
            }
        }
    }

    // This should always return false, enums are passed in as strings to Android
    fun isEnum(): Boolean {
        return false
    }

    fun isModel(): Boolean {
        return fieldType == "model"
    }

    fun isCustomType(): Boolean {
        return fieldType == "embedded" || fieldType == "embeddedCollection"
    }

    fun getTargetType(): String {
        return when (fieldType) {
            "collection" -> mapTargetType(ofModelName!!, isCollection = true)
            else -> mapTargetType(fieldType)
        }
    }

    fun getJavaClass(): Class<*> {
        return when (fieldType) {
            "string" -> String::class.java
            "int" -> Integer::class.java
            "double" -> Double::class.javaObjectType
            "date" -> Temporal.Date::class.java
            "dateTime" -> Temporal.DateTime::class.java
            "time" -> Temporal.Time::class.java
            "timestamp" -> Temporal.Timestamp::class.java
            "bool" -> Boolean::class.javaObjectType
            "enumeration" -> String::class.java
            "model" -> Model::class.java
            "collection" -> List::class.java
            // amplify-android expects a base class to do Gson.toJson when reading CustomType value from SQLite
            // CustomType values are stored in SQLite as json string
            // there will be two use cases:
            // 1. json string root is a map (embedded)
            // 2. json string root is an array (embeddedCollection)
            "embedded" -> Map::class.java
            "embeddedCollection" -> List::class.java
            else -> throw Exception(
                "FlutterFieldType.getJavaClass - invalid fieldType supplied: $fieldType"
            )
        }
    }
}
