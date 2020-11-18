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

import com.amazonaws.amplify.amplify_datastore.types.model.FlutterModelSchema
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner


// test that map received then transformed to flutter equivalent
// generates appropriate native equivalent
@RunWith(RobolectricTestRunner::class)
class AmplifyModelSchemaTest {
    @Test
    fun test_schema_blog_with_hasMany() {
        // Generate Flutter ModelSchema from map input
        var inputMap : Map<String, Any> =
                mapOf(
                        "name" to "Blog",
                        "pluralName" to "Blogs",
                        "fields" to mapOf<String,Any>(
                                "id" to mapOf(
                                        "name" to "id",
                                        "type" to
                                                mapOf(
                                                        "fieldType" to "string"),
                                        "isRequired" to true,
                                        "isArray" to false
                                ),
                                "name" to mapOf(
                                        "name" to "name",
                                        "type" to mapOf(
                                                "fieldType" to "string"),
                                        "isRequired" to true,
                                        "isArray" to false
                                ),
                                "posts" to mapOf(
                                        "name" to "posts",
                                        "type" to mapOf(
                                                "fieldType" to "collection",
                                                "ofModelName" to "Post"),
                                        "isRequired" to false,
                                        "isArray" to true,
                                        "association" to mapOf(
                                                "associationType" to "HasMany",
                                                "associatedName" to "blog",
                                                "associatedType" to "Blog"
                                        )
                                )
                        )
                )
        var modelSchema = FlutterModelSchema(inputMap)
        // Verify result
        assertEquals(
                modelSchema.convertToNativeModelSchema(),
                blogSchema
        )
    }

    @Test
    fun test_schema_comment_with_belongsTo() {
        // Generate Flutter ModelSchema from map input
        var inputMap : Map<String, Any> =
                mapOf(
                        "name" to "Comment",
                        "pluralName" to "Comments",
                        "fields" to mapOf<String,Any>(
                                "id" to mapOf(
                                        "name" to "id",
                                        "type" to
                                                mapOf(
                                                        "fieldType" to "string"),
                                        "isRequired" to true,
                                        "isArray" to false
                                ),
                                "post" to mapOf(
                                        "name" to "post",
                                        "type" to mapOf(
                                                "fieldType" to "model",
                                                "ofModelName" to "Post"),
                                        "isRequired" to false,
                                        "isArray" to false,
                                        "association" to mapOf(
                                                "associationType" to "BelongsTo",
                                                "targetName" to "postID"
                                        )
                                ),
                                "content" to mapOf(
                                        "name" to "content",
                                        "type" to mapOf(
                                                "fieldType" to "string"),
                                        "isRequired" to true,
                                        "isArray" to false
                                )
                        )
                )
        var modelSchema = FlutterModelSchema(inputMap)
        // Verify result
        assertEquals(
                modelSchema.convertToNativeModelSchema(),
                commentSchema
        )
    }

    @Test
    fun test_schema_post_with_datetime_int_hasMany_belongsTo() {
        // Generate Flutter ModelSchema from map input
        var inputMap: Map<String, Any> =
                mapOf(
                        "name" to "Post",
                        "pluralName" to "Posts",
                        "fields" to mapOf<String, Any>(
                                "id" to mapOf(
                                        "name" to "id",
                                        "type" to
                                                mapOf(
                                                        "fieldType" to "string"),
                                        "isRequired" to true,
                                        "isArray" to false
                                ),
                                "title" to mapOf(
                                        "name" to "title",
                                        "type" to mapOf(
                                                "fieldType" to "string"),
                                        "isRequired" to true,
                                        "isArray" to false
                                ),
                                "created" to mapOf(
                                        "name" to "created",
                                        "type" to mapOf(
                                                "fieldType" to "dateTime"),
                                        "isRequired" to false,
                                        "isArray" to false
                                ),
                                "rating" to mapOf(
                                        "name" to "rating",
                                        "type" to mapOf(
                                                "fieldType" to "int"),
                                        "isRequired" to false,
                                        "isArray" to false
                                ),
                                "blog" to mapOf(
                                        "name" to "blog",
                                        "type" to mapOf(
                                                "fieldType" to "model",
                                                "ofModelName" to "Blog"),
                                        "isRequired" to false,
                                        "isArray" to false,
                                        "association" to mapOf(
                                                "associationType" to "BelongsTo",
                                                "targetName" to "blogID"
                                        )
                                ),
                                "comments" to mapOf(
                                        "name" to "comments",
                                        "type" to mapOf(
                                                "fieldType" to "collection",
                                                "ofModelName" to "Comment"),
                                        "isRequired" to false,
                                        "isArray" to true,
                                        "association" to mapOf(
                                                "associationType" to "HasMany",
                                                "associatedName" to "post",
                                                "associatedType" to "Post"
                                        )
                                )
                        )
                )
        var modelSchema = FlutterModelSchema(inputMap)
        // Verify result
        assertEquals(
                modelSchema.convertToNativeModelSchema(),
                postSchema
        )
    }

    @Test
    fun test_schema_postAuthComplex_with_authRules() {
        // Generate Flutter ModelSchema from map input
        var inputMap : Map<String, Any> =
                mapOf(
                        "name" to "PostAuthComplex",
                        "pluralName" to "PostAuthComplexes",
                        "authRules" to listOf<Map<String,Any>>(
                                mapOf(
                                        "authStrategy" to "OWNER",
                                        "ownerField" to "owner",
                                        "identityClaim" to "cognito:username"
                                        /*
                                        "operations" to listOf<Int>(
                                                0,1,2,3
                                        )
                                         */
                                )
                        ),
                        "fields" to mapOf<String,Any>(
                                "id" to mapOf(
                                        "name" to "id",
                                        "type" to
                                                mapOf(
                                                        "fieldType" to "string"),
                                        "isRequired" to true,
                                        "isArray" to false
                                ),
                                "title" to mapOf(
                                        "name" to "title",
                                        "type" to mapOf(
                                                "fieldType" to "string"),
                                        "isRequired" to true,
                                        "isArray" to false
                                ),
                                "owner" to mapOf(
                                        "name" to "owner",
                                        "type" to mapOf(
                                                "fieldType" to "string"),
                                        "isRequired" to false,
                                        "isArray" to false
                                )
                        )
                )
        var modelSchema = FlutterModelSchema(inputMap)
        // Verify result
        assertEquals(
                modelSchema.convertToNativeModelSchema(),
                postAuthComplexSchema
        )
    }
}
