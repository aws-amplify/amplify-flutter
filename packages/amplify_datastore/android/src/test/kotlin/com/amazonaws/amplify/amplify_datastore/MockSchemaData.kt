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
