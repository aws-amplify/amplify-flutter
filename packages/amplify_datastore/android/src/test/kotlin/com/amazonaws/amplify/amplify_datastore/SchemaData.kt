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

import com.amplifyframework.core.model.AuthRule
import com.amplifyframework.core.model.AuthStrategy
import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.ModelAssociation
import com.amplifyframework.core.model.ModelField
import com.amplifyframework.core.model.ModelSchema
import com.amplifyframework.core.model.temporal.Temporal
import com.amplifyframework.datastore.appsync.SerializedModel


val postSchema = ModelSchema.builder()
        .name("Post")
        .pluralName("Posts")
        .fields(mapOf(
                "id" to
                        ModelField.builder()
                                .name("id")
                                .javaClassForValue(String::class.java)
                                .targetType("String")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "title" to
                        ModelField.builder()
                                .name("title")
                                .javaClassForValue(String::class.java)
                                .targetType("String")
                                .isRequired(true)
                                .isArray(false)
                                .build(),

                "created" to
                        ModelField.builder()
                                .name("created")
                                .javaClassForValue(Temporal.DateTime::class.java)
                                .targetType("AWSDateTime")
                                .isRequired(false)
                                .isArray(false)
                                .build(),

                "rating" to
                        ModelField.builder()
                                .name("rating")
                                .javaClassForValue(Integer::class.java)
                                .targetType("Integer")
                                .isRequired(false)
                                .isArray(false)
                                .build(),

                "blog" to
                        ModelField.builder()
                                .name("blog")
                                .javaClassForValue(Model::class.java)
                                .targetType("Blog")
                                .isRequired(false)
                                .isArray(false)
                                .isModel(true)
                                .build(),

                "comments" to
                        ModelField.builder()
                                .name("comments")
                                .javaClassForValue(List::class.java)
                                .targetType("Comment")
                                .isRequired(false)
                                .isArray(true)
                                .build()

        ))
        .associations(mapOf(
                "blog" to
                        ModelAssociation.builder()
                                .name("BelongsTo")
                                .targetName("blogID")
                                .build(),
                "comments" to
                        ModelAssociation.builder()
                                .name("HasMany")
                                .associatedName("post")
                                .associatedType("Post")
                                .build()

        ))
        .modelClass(SerializedModel::class.java)
        .build()

val postAuthComplexSchema = ModelSchema.builder()
        .name("PostAuthComplex")
        .pluralName("PostAuthComplexes")
        .fields(mapOf(
                "id" to
                        ModelField.builder()
                                .name("id")
                                .javaClassForValue(String::class.java)
                                .targetType("String")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "title" to
                        ModelField.builder()
                                .name("title")
                                .javaClassForValue(String::class.java)
                                .targetType("String")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "owner" to
                        ModelField.builder()
                                .name("owner")
                                .javaClassForValue(String::class.java)
                                .targetType("String")
                                .isRequired(false)
                                .isArray(false)
                                .build()

        ))

        .authRules(
                listOf(
                        AuthRule.builder()
                                .authStrategy(AuthStrategy.OWNER)
                                .ownerField("owner")
                                .identityClaim("cognito:username")
                                /*
                                .operations(
                                        listOf(
                                                ModelOperation.READ,
                                                ModelOperation.DELETE,
                                                ModelOperation.UPDATE,
                                                ModelOperation.CREATE
                                        )
                                )
                                 */
                                .build()
                )
        )
        .modelClass(SerializedModel::class.java)
        .build()


val commentSchema = ModelSchema.builder()
        .name("Comment")
        .pluralName("Comments")
        .fields(mapOf(
                "id" to
                        ModelField.builder()
                                .name("id")
                                .javaClassForValue(String::class.java)
                                .targetType("String")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "post" to
                        ModelField.builder()
                                .name("post")
                                .javaClassForValue(Model::class.java)
                                .targetType("Post")
                                .isRequired(false)
                                .isArray(false)
                                .isModel(true)
                                .build(),
                "content" to
                        ModelField.builder()
                                .name("content")
                                .javaClassForValue(String::class.java)
                                .targetType("String")
                                .isRequired(true)
                                .isArray(false)
                                .build()
        ))
        .associations(mapOf(
                "post" to
                        ModelAssociation.builder()
                                .name("BelongsTo")
                                .targetName("postID")
                                .build()
        ))
        .modelClass(SerializedModel::class.java)
        .build()


val blogSchema = ModelSchema.builder()
        .name("Blog")
        .pluralName("Blogs")
        .fields(mapOf(
                "id" to
                        ModelField.builder()
                                .name("id")
                                .javaClassForValue(String::class.java)
                                .targetType("String")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "name" to
                        ModelField.builder()
                                .name("name")
                                .javaClassForValue(String::class.java)
                                .targetType("String")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "posts" to
                        ModelField.builder()
                                .name("posts")
                                .javaClassForValue(List::class.java)
                                .targetType("Post")
                                .isRequired(false)
                                .isArray(true)
                                .build()
        ))
        .associations(mapOf(
                "posts" to
                        ModelAssociation.builder()
                                .name("HasMany")
                                .associatedName("blog")
                                .associatedType("Blog")
                                .build()
        ))
        .modelClass(SerializedModel::class.java)
        .build()

val allTypeModelSchema = ModelSchema.builder()
        .name("AllTypeModel")
        .pluralName("AllTypeModels")
        .fields(mapOf(
                "id" to
                        ModelField.builder()
                                .name("id")
                                .javaClassForValue(String::class.java)
                                .targetType("String")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "stringType" to
                        ModelField.builder()
                                .name("stringType")
                                .javaClassForValue(String::class.java)
                                .targetType("String")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "intType" to
                        ModelField.builder()
                                .name("intType")
                                .javaClassForValue(Integer::class.java)
                                .targetType("Integer")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "floatType" to
                        ModelField.builder()
                                .name("floatType")
                                .javaClassForValue(Double::class.java)
                                .targetType("Double")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "boolType" to
                        ModelField.builder()
                                .name("boolType")
                                .javaClassForValue(Boolean::class.java)
                                .targetType("Boolean")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "dateType" to
                        ModelField.builder()
                                .name("dateType")
                                .javaClassForValue(Temporal.Date::class.java)
                                .targetType("AWSDate")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "dateTimeType" to
                        ModelField.builder()
                                .name("dateTimeType")
                                .javaClassForValue(Temporal.DateTime::class.java)
                                .targetType("AWSDateTime")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "timeType" to
                        ModelField.builder()
                                .name("timeType")
                                .javaClassForValue(Temporal.Time::class.java)
                                .targetType("AWSTime")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "timestampType" to
                        ModelField.builder()
                                .name("timestampType")
                                .javaClassForValue(Temporal.Timestamp::class.java)
                                .targetType("AWSTimestamp")
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "enumType" to
                        ModelField.builder()
                                .name("enumType")
                                .javaClassForValue(String::class.java)
                                .targetType("String")
                                .isRequired(true)
                                .isArray(false)
                                .build()
        ))
        .modelClass(SerializedModel::class.java)
        .build()