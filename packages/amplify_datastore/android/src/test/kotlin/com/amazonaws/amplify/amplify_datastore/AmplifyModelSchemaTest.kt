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

    var schemasMap : Map<String, Any> = (readMapFromFile("model_schema",
            "model_schema_maps.json",
            HashMap::class.java) as HashMap<String, Any>)

    @Test
    fun test_schema_blog_with_hasMany() {
        var inputMap = schemasMap["BlogSchema"] as Map<String, Any>
        var modelSchema = FlutterModelSchema(inputMap)
        // Verify result
        assertEquals(
                modelSchema.convertToNativeModelSchema(),
                blogSchema
        )
    }

    @Test
    fun test_schema_comment_with_belongsTo() {
        var inputMap = schemasMap["CommentSchema"] as Map<String, Any>
        var modelSchema = FlutterModelSchema(inputMap)
        // Verify result
        assertEquals(
                modelSchema.convertToNativeModelSchema(),
                commentSchema
        )
    }

    @Test
    fun test_schema_post_with_datetime_int_hasMany_belongsTo() {
        var inputMap = schemasMap["PostSchema"] as Map<String, Any>
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
        var inputMap = schemasMap["PostAuthComplexSchema"] as Map<String, Any>
        var modelSchema = FlutterModelSchema(inputMap)
        // Verify result
        assertEquals(
                modelSchema.convertToNativeModelSchema(),
                postAuthComplexSchema
        )
    }

    @Test
    fun test_schema_allTypeModel() {
        // Generate Flutter ModelSchema from map input
        var inputMap = schemasMap["AllTypeModelSchema"] as Map<String, Any>
        var modelSchema = FlutterModelSchema(inputMap)
        // Verify result
        assertEquals(
                modelSchema.convertToNativeModelSchema(),
                allTypeModelSchema
        )
    }
}
