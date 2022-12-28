// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
