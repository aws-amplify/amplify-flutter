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
import com.amplifyframework.core.model.query.Where
import com.amplifyframework.core.model.query.predicate.QueryField
import org.junit.Assert
import org.junit.Test

class QuerySortBuilderTest {
    private val id: QueryField = QueryField.field("post.id")
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
