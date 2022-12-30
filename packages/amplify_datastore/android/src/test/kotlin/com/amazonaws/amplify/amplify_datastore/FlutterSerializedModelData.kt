// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore

import com.amplifyframework.core.model.SerializedCustomType
import com.amplifyframework.core.model.SerializedModel

val blogSerializedModel = SerializedModel.builder()
    .modelSchema(
        blogSchema
    )
    .serializedData(
        mapOf(
            "id" to "999",
            "name" to "blog name"
        )
    ).build()

var commentSerializedModel = SerializedModel.builder()
    .modelSchema(
        commentSchema
    )
    .serializedData(
        mapOf(
            "id" to "999",
            "post" to mapOf(
                "id" to "555"
            ),
            "content" to "content"
        )
    ).build()

var postSerializedModel = SerializedModel.builder()
    .modelSchema(
        postSchema
    )
    .serializedData(
        mapOf(
            "id" to "999",
            "title" to "post title",
            "created" to "2020-11-25T01:28:49.000Z",
            "blog" to mapOf(
                "id" to "555"
            )
        )
    ).build()

var allTypeModelSerializedModel = SerializedModel.builder()
    .modelSchema(
        allTypeModelSchema
    )
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
    ).build()

val personSerializedModel = SerializedModel.builder()
    .modelSchema(personSchema)
    .serializedData(
        mapOf(
            "id" to "123",
            "name" to "Tester Testing",
            "contact" to SerializedCustomType.builder()
                .serializedData(
                    mapOf(
                        "email" to "test@testing.com",
                        "phone" to SerializedCustomType.builder()
                            .serializedData(
                                mapOf(
                                    "country" to "+1",
                                    "area" to "415",
                                    "number" to "6666666"
                                )
                            )
                            .customTypeSchema(phoneSchema)
                            .build(),
                        "mailingAddresses" to listOf(
                            SerializedCustomType.builder()
                                .serializedData(
                                    mapOf(
                                        "line1" to "000 Somewhere far",
                                        "line2" to "apt 4",
                                        "city" to "San Francisco",
                                        "state" to "CA",
                                        "postalCode" to "94115"
                                    )
                                )
                                .customTypeSchema(addressSchema)
                                .build(),
                            SerializedCustomType.builder()
                                .serializedData(
                                    mapOf(
                                        "line1" to "111 Somewhere close",
                                        "line2" to null,
                                        "city" to "Seattle",
                                        "state" to "WA",
                                        "postalCode" to "98101"
                                    )
                                )
                                .customTypeSchema(addressSchema)
                                .build()
                        )
                    )
                )
                .customTypeSchema(contactSchema)
                .build(),
            "propertiesAddresses" to listOf(
                SerializedCustomType.builder()
                    .serializedData(
                        mapOf(
                            "line1" to "222 Somewhere in the middle",
                            "line2" to null,
                            "city" to "Portland",
                            "state" to "OR",
                            "postalCode" to "97035"
                        )
                    )
                    .customTypeSchema(addressSchema)
                    .build()
            )
        )
    )
    .build()
