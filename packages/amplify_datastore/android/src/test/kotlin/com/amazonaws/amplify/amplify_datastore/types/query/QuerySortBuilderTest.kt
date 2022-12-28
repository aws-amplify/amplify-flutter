// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.query

import com.amazonaws.amplify.amplify_datastore.readMapFromFile
import com.amplifyframework.core.model.query.Where
import com.amplifyframework.core.model.query.predicate.QueryField
import org.junit.Assert
import org.junit.Test

class QuerySortBuilderTest {
    private val id: QueryField = QueryField.field("id")
    private val rating: QueryField = QueryField.field("rating")

    @Test
    fun test_when_sorting_by_id_ascending() {
        Assert.assertEquals(
            Where.sorted(id.ascending()).sortBy,
            QuerySortBuilder.fromSerializedList(
                readMapFromFile(
                    "query_sort",
                    "sort_by_id_ascending.json",
                    List::class.java
                ) as List<HashMap<String, Any>>
            )
        )
    }

    @Test
    fun test_when_sorting_by_id_ascending_and_rating_descending() {
        Assert.assertEquals(
            Where.sorted(id.ascending(), rating.descending()).sortBy,
            QuerySortBuilder.fromSerializedList(
                readMapFromFile(
                    "query_sort",
                    "multiple_sorting.json",
                    List::class.java
                ) as List<HashMap<String, Any>>
            )
        )
    }
}
