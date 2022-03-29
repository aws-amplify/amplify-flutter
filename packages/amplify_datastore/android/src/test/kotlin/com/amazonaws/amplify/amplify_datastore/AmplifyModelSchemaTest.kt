/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

    var schemasMap: Map<String, Any> = (
        readMapFromFile(
            "model_schema",
            "model_schema_maps.json",
            HashMap::class.java
        ) as HashMap<String, Any>
        )

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
    fun test_schema_postAuthComplex_with_authRules_with_provider_userpools() {
        // Generate Flutter ModelSchema from map input
        var inputMap = schemasMap["PostAuthComplexWithProviderUserPoolsSchema"] as Map<String, Any>
        var modelSchema = FlutterModelSchema(inputMap)
        // Verify result
        assertEquals(
            modelSchema.convertToNativeModelSchema(),
            postAuthComplexWithProviderUserPoolsSchema
        )
    }

    @Test
    fun test_schema_postAuthComplex_with_authRules_with_provider_apikey() {
        // Generate Flutter ModelSchema from map input
        var inputMap = schemasMap["PostAuthComplexWithProviderApiKeySchema"] as Map<String, Any>
        var modelSchema = FlutterModelSchema(inputMap)
        // Verify result
        assertEquals(
            modelSchema.convertToNativeModelSchema(),
            postAuthComplexWithProviderApiKeySchema
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

    @Test
    fun test_model_schema_nested_custom_type_schema() {
        val inputMap = schemasMap["PersonModelSchema"] as Map<String, Any>
        val modelSchema = FlutterModelSchema(inputMap)

        val convertedModelSchema = modelSchema.convertToNativeModelSchema()

        // Verify result
        assertEquals(
            convertedModelSchema,
            personSchema
        )
    }
}
