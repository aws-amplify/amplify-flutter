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

import com.amazonaws.amplify.amplify_datastore.types.model.FlutterSerializedModel
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AmplifySerializedModelTest {

    var serializedModelMaps : Map<String, Any> = (readMapFromFile("model_schema",
            "serialized_model_maps.json",
            HashMap::class.java) as HashMap<String, Any>)

    @Test
    fun test_schema_blog_with_hasMany() {
        var flutterSerializedModel = FlutterSerializedModel(blogSerializedModel)
        var refMap = serializedModelMaps["BlogSerializedMap"] as Map<String, Any>

        // Verify result
        Assert.assertEquals(
                flutterSerializedModel.toMap(),
                refMap
        )
    }

    @Test
    fun test_schema_comment_with_hasMany() {
        var flutterSerializedModel = FlutterSerializedModel(commentSerializedModel)
        var refMap = serializedModelMaps["CommentSerializedMap"] as Map<String, Any>

        // Verify result
        Assert.assertEquals(
                flutterSerializedModel.toMap(),
                refMap
        )
    }

    @Test
    fun test_schema_post_with_hasMany() {
        var flutterSerializedModel = FlutterSerializedModel(postSerializedModel)
        var refMap = serializedModelMaps["PostSerializedMap"] as Map<String, Any>

        // Verify result
        Assert.assertEquals(
                flutterSerializedModel.toMap(),
                refMap
        )
    }

    @Test
    fun test_schema_allType_with_hasMany() {
        var flutterSerializedModel = FlutterSerializedModel(allTypeModelSerializedModel)
        var refMap = serializedModelMaps["AllTypeModelSerializedMap"] as Map<String, Any>

        // Verify result
        Assert.assertEquals(
                flutterSerializedModel.toMap(),
                refMap
        )
    }
}

