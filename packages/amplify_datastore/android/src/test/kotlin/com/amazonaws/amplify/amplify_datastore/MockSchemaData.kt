package com.amazonaws.amplify.amplify_datastore

val mockSchemaData = listOf<Map<String, Any?>>(
    mapOf(
        "associations" to null,
        "pluralName" to "Posts",
        "authRules" to null,
        "indexes" to null,
        "name" to "Post",
        "fields" to hashMapOf(
            "created" to hashMapOf(
                "isRequired" to false,
                "isModel" to false,
                "authRules" to null,
                "name" to "created",
                "isEnum" to false,
                "targetType" to "Date",
                "isArray" to false,
                "type" to "DateTime"
            ),
            "rating" to hashMapOf(
                "isRequired" to false,
                "isModel" to false,
                "authRules" to null,
                "name" to "rating",
                "isEnum" to false,
                "targetType" to "Integer",
                "isArray" to false,
                "type" to "Integer"
            ),
            "id" to hashMapOf(
                "isRequired" to true,
                "isModel" to false,
                "authRules" to null,
                "name" to "id",
                "isEnum" to false,
                "targetType" to "ID",
                "isArray" to false,
                "type" to "String"
            ),
            "title" to hashMapOf(
                "isRequired" to true,
                "isModel" to false,
                "authRules" to null,
                "name" to "title",
                "isEnum" to false,
                "targetType" to "String",
                "isArray" to false,
                "type" to "String"
            )
        )
    )
)
