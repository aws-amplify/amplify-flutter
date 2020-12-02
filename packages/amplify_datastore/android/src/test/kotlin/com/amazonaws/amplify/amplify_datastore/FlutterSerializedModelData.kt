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

import com.amplifyframework.datastore.appsync.SerializedModel

val blogSerializedModel = SerializedModel.builder()
        .serializedData(
                mapOf(
                        "id" to "999",
                        "name" to "blog name"
                )
        ).modelSchema(
                blogSchema
        ).build()

var commentSerializedModel = SerializedModel.builder()
        .serializedData(
                mapOf(
                        "id" to "999",
                        "post" to mapOf(
                                "id" to "555"
                        ),
                        "content" to "content"
                )
        ).modelSchema(
                commentSchema
        ).build()

var postSerializedModel = SerializedModel.builder()
        .serializedData(
                mapOf(
                        "id" to "999",
                        "title" to "post title",
                        "created" to "2020-11-25T01:28:49.000Z",
                        "blog" to mapOf(
                                "id" to "555"
                        )
                )
        ).modelSchema(
                postSchema
        ).build()

var allTypeModelSerializedModel = SerializedModel.builder()
        .serializedData(
                mapOf(
                        "id" to "999",
                        "stringType" to "string value",
                        "intType" to 10,
                        "floatType" to 9.99,
                        "boolType" to true,
                        "dateType" to "2020-09-09",
                        "dateTimeType" to "2020-11-25T01:28:49.000Z",
                        "timeType" to "20:20:20:020",
                        "timestampType" to 999,
                        "enumType" to "maybe"
                )
        ).modelSchema(
                allTypeModelSchema
        ).build()