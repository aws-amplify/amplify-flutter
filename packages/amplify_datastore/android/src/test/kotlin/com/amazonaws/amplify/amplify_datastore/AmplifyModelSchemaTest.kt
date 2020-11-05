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

import com.amazonaws.amplify.amplify_datastore.AmplifyDataStorePlugin
import com.amazonaws.amplify.amplify_datastore.readMapFromFile
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterAuthRule
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterModelSchema
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterSerializedModel
import com.amazonaws.amplify.amplify_datastore.types.model.ModelFieldTypeEnum
import com.amazonaws.amplify.amplify_datastore.types.query.QueryPaginationBuilder
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.ModelAssociation
import com.amplifyframework.core.model.ModelField
import com.amplifyframework.core.model.ModelSchema
import com.amplifyframework.core.model.query.Page
import com.amplifyframework.core.model.query.QueryOptions
import com.amplifyframework.core.model.query.Where
import com.amplifyframework.core.model.query.predicate.QueryField.field
import com.amplifyframework.core.model.query.predicate.QueryPredicateOperation.not
import com.amplifyframework.core.model.temporal.Temporal
import com.amplifyframework.datastore.AWSDataStorePlugin
import com.amplifyframework.datastore.DataStoreCategory
import com.amplifyframework.datastore.DataStoreException
import com.amplifyframework.datastore.appsync.SerializedModel
import io.flutter.plugin.common.MethodChannel
import org.junit.Assert
import java.lang.reflect.Field
import java.lang.reflect.Modifier
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers
import org.mockito.ArgumentMatchers.any
import org.mockito.ArgumentMatchers.anyString
import org.mockito.Mockito.`when`
import org.mockito.Mockito.doAnswer
import org.mockito.Mockito.mock
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.mockito.invocation.InvocationOnMock
import org.robolectric.RobolectricTestRunner

// test that map received then transformed to flutter equivalent
// generates appropriate native equivalent


@RunWith(RobolectricTestRunner::class)
class AmplifyModelSchemaTest {

    @Test
    fun test_BlogSchema() {

        // Generate Flutter ModelSchema from map input
        var inputMap : Map<String, Any> =
                mapOf(
                        "name" to "Blog",
                        "pluralName" to "Blogs",
                        "authRules" to emptyList<Any>(),
                        "fields" to mapOf<String,Any>(
                                "id" to mapOf(
                                        "name" to "id",
                                        "type" to
                                                mapOf(
                                                        "fieldType" to 0,
                                                        "ofModelName" to ""),
                                        "isRequired" to true,
                                        "isArray" to false,
                                        "association" to mapOf<String,Any>(),
                                        "authRules" to emptyList<Any>()
                                ),
                                "name" to mapOf(
                                        "name" to "name",
                                        "type" to mapOf(
                                                "fieldType" to 0,
                                                "ofModelName" to ""),
                                        "isRequired" to true,
                                        "isArray" to false,
                                        "association" to mapOf<String,Any>(),
                                        "authRules" to emptyList<Any>()
                                ),
                                "posts" to mapOf(
                                        "name" to "posts",
                                        "type" to mapOf(
                                                "fieldType" to 10,
                                                "ofModelName" to "Post"),
                                        "isRequired" to false,
                                        "isArray" to true,
                                        "association" to mapOf(
                                                "associationType" to 0,
                                                "targetName" to "",
                                                "associatedName" to "blog",
                                                "associatedType" to "Blog"
                                        ),
                                        "authRules" to emptyList<Any>()
                                )
                        )
                )

        var modelSchema = FlutterModelSchema(inputMap)


        // Build ModelSchema
        var native = ModelSchema.builder()
        native.name("Blog")
        native.pluralName("Blogs")
        native.fields(mapOf(
                "id" to
                        ModelField.builder()
                                .name("id")
                                .type(String::class.java)
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "name" to
                        ModelField.builder()
                                .name("name")
                                .type(String::class.java)
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "posts" to
                        ModelField.builder()
                                .name("posts")
                                .type(Object::class.java) // TODO REQUIRES ACTUAL TYPE
                                .isRequired(false)
                                .isArray(true)
                                .targetType("Post")
                                .build()
        ))
        native.associations(mapOf(
                "posts" to
                        ModelAssociation.builder()
                                .name("hasMany")
                                .associatedName("blog")
                                .associatedType("Blog")
                                .build()
        ))

        // Verify result
        assertEquals(
                modelSchema.convertToNativeModelSchema(),
                native.build()
        )

    }


    @Test
    fun test_CommentSchema() {

        // Generate Flutter ModelSchema from map input
        var inputMap : Map<String, Any> =
                mapOf(
                        "name" to "Comment",
                        "pluralName" to "Comments",
                        "authRules" to emptyList<Any>(),
                        "fields" to mapOf<String,Any>(
                                "id" to mapOf(
                                        "name" to "id",
                                        "type" to
                                                mapOf(
                                                        "fieldType" to 0,
                                                        "ofModelName" to ""),
                                        "isRequired" to true,
                                        "isArray" to false,
                                        "association" to mapOf<String,Any>(),
                                        "authRules" to emptyList<Any>()
                                ),
                                "post" to mapOf(
                                        "name" to "post",
                                        "type" to mapOf(
                                                "fieldType" to 9,
                                                "ofModelName" to "Post"),
                                        "isRequired" to false,
                                        "isArray" to false,
                                        "association" to mapOf(
                                                "associationType" to 2,
                                                "targetName" to "postID"
                                        ),
                                        "authRules" to emptyList<Any>()
                                ),
                                "content" to mapOf(
                                        "name" to "content",
                                        "type" to mapOf(
                                                "fieldType" to 0,
                                                "ofModelName" to ""),
                                        "isRequired" to true,
                                        "isArray" to false,
                                        "association" to mapOf<String, Any>(),
                                        "authRules" to emptyList<Any>()
                                )
                        )
                )

        var modelSchema = FlutterModelSchema(inputMap)


        // Build ModelSchema
        var native = ModelSchema.builder()
        native.name("Comment")
        native.pluralName("Comments")
        native.fields(mapOf(
                "id" to
                        ModelField.builder()
                                .name("id")
                                .type(String::class.java) // ISSUE REQUIRES ACTUAL TYPE ...
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "post" to
                        ModelField.builder()
                                .name("post")
                                .type(Object::class.java) // TODO need to pass string here
                                .isRequired(false)
                                .isArray(false)
                                .isModel(true)
                                .targetType("Post")
                                .build(),
                "content" to
                        ModelField.builder()
                                .name("content")
                                .type(String::class.java) // TODO need to pass string here
                                .isRequired(true)
                                .isArray(false)
                                .build()
        ))
        native.associations(mapOf(
                "post" to
                        ModelAssociation.builder()
                                .name("belongsTo")
                                .targetName("postID")
                                .build()
        ))

        // Verify result
        assertEquals(
                modelSchema.convertToNativeModelSchema(),
                native.build()
        )

    }





    @Test
    fun test_PostSchema() {

        // Generate Flutter ModelSchema from map input
        var inputMap : Map<String, Any> =
                mapOf(
                        "name" to "Post",
                        "pluralName" to "Posts",
                        "authRules" to emptyList<Any>(),
                        "fields" to mapOf<String,Any>(
                                "id" to mapOf(
                                        "name" to "id",
                                        "type" to
                                                mapOf(
                                                        "fieldType" to 0,
                                                        "ofModelName" to ""),
                                        "isRequired" to true,
                                        "isArray" to false,
                                        "association" to mapOf<String,Any>(),
                                        "authRules" to emptyList<Any>()
                                ),
                                "title" to mapOf(
                                        "name" to "title",
                                        "type" to mapOf(
                                                "fieldType" to 0,
                                                "ofModelName" to ""),
                                        "isRequired" to true,
                                        "isArray" to false,
                                        "association" to mapOf<String, Any>(),
                                        "authRules" to emptyList<Any>()
                                ),
                                "blog" to mapOf(
                                        "name" to "blog",
                                        "type" to mapOf(
                                                "fieldType" to 9,
                                                "ofModelName" to "Blog"),
                                        "isRequired" to false,
                                        "isArray" to false,
                                        "association" to mapOf(
                                                "associationType" to 2,
                                                "targetName" to "blogID"
                                        ),
                                        "authRules" to emptyList<Any>()
                                ),
                                "comments" to mapOf(
                                        "name" to "comments",
                                        "type" to mapOf(
                                                "fieldType" to 10,
                                                "ofModelName" to "Comment"),
                                        "isRequired" to false,
                                        "isArray" to true,
                                        "association" to mapOf(
                                                "associationType" to 0,
                                                "associatedName" to "post",
                                                "associatedType" to "Post"
                                        ),
                                        "authRules" to emptyList<Any>()
                                )
                )
                )

        var modelSchema = FlutterModelSchema(inputMap)


        // Build ModelSchema
        var native = ModelSchema.builder()
        native.name("Post")
        native.pluralName("Posts")
        native.fields(mapOf(
                "id" to
                        ModelField.builder()
                                .name("id")
                                .type(String::class.java) // ISSUE REQUIRES ACTUAL TYPE ...
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "title" to
                        ModelField.builder()
                                .name("title")
                                .type(String::class.java) // TODO need to pass string here
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "blog" to
                        ModelField.builder()
                                .name("blog")
                                .type(Object::class.java) // TODO need to pass string here
                                .isRequired(false)
                                .isArray(false)
                                .isModel(true)
                                .targetType("Blog")
                                .build(),

                "comments" to
                        ModelField.builder()
                                .name("comments")
                                .type(Object::class.java) // TODO need to pass string here
                                .isRequired(false)
                                .isArray(true)
                                .targetType("Comment")
                                .build()

        ))
        native.associations(mapOf(
                "blog" to
                        ModelAssociation.builder()
                                .name("belongsTo")
                                .targetName("blogID")
                                .build(),
                "comments" to
                        ModelAssociation.builder()
                                .name("hasMany")
                                .associatedName("post")
                                .associatedType("Post")
                                .build()

        ))

        // Verify result
        assertEquals(
                modelSchema.convertToNativeModelSchema(),
                native.build()
        )

    }






    @Test
    fun test_PostAuthComplex() {

        // Generate Flutter ModelSchema from map input
        var inputMap : Map<String, Any> =
                mapOf(
                        "name" to "PostAuthComplex",
                        "pluralName" to "PostAuthComplexes",
                        /* TODO NO PUBLIC CONSTRUCTOR AUTHRULES
                        "authRules" to listOf<Map<String,Any>>(
                                mapOf(
                                        "authStrategy" to 0,
                                        "ownerField" to "owner",
                                        "identityClaim" to "cognito:username",
                                        "groupClaim" to "",
                                        "groups" to listOf<String>(),
                                        "groupsField" to "",
                                        "operations" to listOf<Int>(
                                                0,1,2,3
                                        )
                                )
                        ),
                         */
                        "fields" to mapOf<String,Any>(
                                "id" to mapOf(
                                        "name" to "id",
                                        "type" to
                                                mapOf(
                                                        "fieldType" to 0,
                                                        "ofModelName" to ""),
                                        "isRequired" to true,
                                        "isArray" to false,
                                        "association" to mapOf<String,Any>(),
                                        "authRules" to emptyList<Any>()
                                ),
                                "title" to mapOf(
                                        "name" to "title",
                                        "type" to mapOf(
                                                "fieldType" to 0,
                                                "ofModelName" to ""),
                                        "isRequired" to true,
                                        "isArray" to false,
                                        "association" to mapOf<String, Any>(),
                                        "authRules" to emptyList<Any>()
                                ),
                                "owner" to mapOf(
                                        "name" to "owner",
                                        "type" to mapOf(
                                                "fieldType" to 0,
                                                "ofModelName" to ""),
                                        "isRequired" to false,
                                        "isArray" to false,
                                        "association" to mapOf<String, Any>(),
                                        "authRules" to emptyList<Any>()
                                )
                        )
                )

        var modelSchema = FlutterModelSchema(inputMap)


        // Build ModelSchema
        var native = ModelSchema.builder()
        native.name("PostAuthComplex")
        native.pluralName("PostAuthComplexes")
        native.fields(mapOf(
                "id" to
                        ModelField.builder()
                                .name("id")
                                .type(String::class.java) // ISSUE REQUIRES ACTUAL TYPE ...
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "title" to
                        ModelField.builder()
                                .name("title")
                                .type(String::class.java) // TODO need to pass string here
                                .isRequired(true)
                                .isArray(false)
                                .build(),
                "owner" to
                        ModelField.builder()
                                .name("owner")
                                .type(String::class.java) // TODO need to pass string here
                                .isRequired(false)
                                .isArray(false)
                                .build()

        ))

        // TODO no public constructor AuthRules
        /*
        native.authRules(
                listOf(

                )
        )
         */

        // Verify result
        assertEquals(
                modelSchema.convertToNativeModelSchema(),
                native.build()
        )

    }

}
