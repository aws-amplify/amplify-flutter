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

package com.amazonaws.amplify.amplify_datastore.types.query

import com.amazonaws.amplify.amplify_datastore.readMapFromFile
import com.amplifyframework.core.model.query.Page
import com.amplifyframework.core.model.query.Where
import org.junit.Assert
import org.junit.Test

class QueryPaginationBuilderTest {
    @Test
    fun test_when_requesting_custom_page_and_limit() {
        Assert.assertEquals(
            Where.paginated(Page.startingAt(3).withLimit(200)).paginationInput,
            QueryPaginationBuilder.fromSerializedMap(
                readMapFromFile(
                    "query_pagination", "custom_page_and_limit.json",
                    HashMap::class.java
                ) as HashMap<String, Any>
            )
        )
    }

    @Test
    fun test_when_requesting_first_page() {
        Assert.assertEquals(
            Where.paginated(Page.firstPage()).paginationInput,
            QueryPaginationBuilder.fromSerializedMap(
                readMapFromFile(
                    "query_pagination", "first_page.json",
                    HashMap::class.java
                ) as HashMap<String, Any>
            )
        )
    }

    @Test
    fun test_when_requesting_first_result() {
        Assert.assertEquals(
            Where.paginated(Page.firstResult()).paginationInput,
            QueryPaginationBuilder.fromSerializedMap(
                readMapFromFile(
                    "query_pagination", "first_result.json",
                    HashMap::class.java
                ) as HashMap<String, Any>
            )
        )
    }
}
