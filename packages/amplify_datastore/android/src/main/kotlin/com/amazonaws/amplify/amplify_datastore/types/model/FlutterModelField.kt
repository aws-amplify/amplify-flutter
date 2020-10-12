package com.amazonaws.amplify.amplify_datastore.types.model

import com.amplifyframework.core.model.temporal.Temporal
import com.amplifyframework.core.model.ModelField
import java.util.*

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
    private val authRules: List<FlutterAuthRule>? = (map["authRules"] as List<Map<String, Any>>?)?.map {
        serializedAuthRule -> FlutterAuthRule(serializedAuthRule)
    }

    fun convertToNativeModelField(): ModelField {
        var builder: ModelField.ModelFieldBuilder = ModelField.builder()
                .name(name)
                .type(getJavaClass(type))
                .isArray(isArray)
                .isEnum(isEnum)
                .isRequired(isRequired)
                .isModel(isModel)
        if(!targetType.isNullOrEmpty()) {
            builder = builder.targetType(targetType)
        }
        if(!authRules.isNullOrEmpty()) {
            builder = builder.authRules(authRules!!.map {
                authRule -> authRule.convertToNativeAuthRule()
            })
        }
        return builder.build();
    }

    // TODO Expand this for enums/models(associations)
    private fun getJavaClass(type: String): Class<*> {
        when(type) {
            "String" -> String::class.java
            "Integer" -> Int::class.java
            "Double" -> Double::class.java
            "Long" -> Long::class.java
            "Date" -> Temporal.Date::class.java
            "Time" -> Temporal.Time::class.java
            "DateTime" -> Temporal.DateTime::class.java
            "TimeStamp" -> Temporal.Timestamp::class.java
        }
        return Object::class.java
    }
}
