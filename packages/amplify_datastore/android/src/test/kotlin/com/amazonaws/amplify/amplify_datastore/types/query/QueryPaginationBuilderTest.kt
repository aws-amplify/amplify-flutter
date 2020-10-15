package com.amazonaws.amplify.amplify_datastore.types.query

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

import com.amplifyframework.core.model.query.Page
import com.amplifyframework.core.model.query.Where
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import org.junit.Assert
import org.junit.Test

class QueryPaginationBuilderTest {
    @Test
    fun test_when_requesting_custom_page_and_limit() {
        Assert.assertEquals(
                Where.paginated(Page.startingAt(3).withLimit(200)).paginationInput,
                QueryPaginationBuilder.fromSerializedMap(
                        readFromFile("custom_page_and_limit.json")))
    }

    @Test
    fun test_when_requesting_first_page() {
        Assert.assertEquals(
                Where.paginated(Page.firstPage()).paginationInput,
                QueryPaginationBuilder.fromSerializedMap(
                        readFromFile("first_page.json")))
    }

    @Test
    fun test_when_requesting_first_result() {
        Assert.assertEquals(
                Where.paginated(Page.firstResult()).paginationInput,
                QueryPaginationBuilder.fromSerializedMap(
                        readFromFile("first_result.json")))
    }

    private fun readFromFile(path: String): Map<String, Any> {
        val filePath = "query_pagination/$path"
        val jsonFile = ClassLoader.getSystemResource(filePath).readText()
        val mapType = object : TypeToken<Map<String, Int>>() {}.type
        return Gson().fromJson(jsonFile, mapType)
    }
}
