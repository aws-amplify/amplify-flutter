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

import com.amazonaws.amplify.amplify_datastore.postSchema
import com.amazonaws.amplify.amplify_datastore.readMapFromFile
import com.amplifyframework.core.model.query.predicate.QueryField
import com.amplifyframework.core.model.query.predicate.QueryPredicateGroup
import com.amplifyframework.core.model.query.predicate.QueryPredicateOperation.not
import com.amplifyframework.core.model.query.predicate.QueryPredicates
import org.junit.Assert
import org.junit.Test

class QueryPredicateBuilderTest {
    private val id: QueryField = QueryField.field("id")
    private val title: QueryField = QueryField.field("title")
    private val rating: QueryField = QueryField.field("rating")
    private val created: QueryField = QueryField.field("created")
    private val blogID: QueryField = QueryField.field("blogID")

    @Test
    fun test_when_id_not_equals() {
        Assert.assertEquals(
            id.ne("123"),
            QueryPredicateBuilder.fromSerializedMap(
                readMapFromFile(
                    "query_predicate", "id_not_equals.json",
                    HashMap::class.java
                ) as HashMap<String, Any>
            )
        )
    }

    @Test
    fun test_when_rating_greater_or_equal() {
        Assert.assertEquals(
            rating.ge(4),
            QueryPredicateBuilder.fromSerializedMap(
                readMapFromFile(
                    "query_predicate",
                    "rating_greater_or_equal.json",
                    HashMap::class.java
                ) as HashMap<String, Any>
            )
        )
    }

    @Test
    fun test_complex_nested_and_or() {
        Assert.assertEquals(
            rating.le(4).and(id.contains("abc").or(title.beginsWith("def"))),
            QueryPredicateBuilder.fromSerializedMap(
                readMapFromFile(
                    "query_predicate",
                    "complex_nested.json",
                    HashMap::class.java
                ) as HashMap<String, Any>
            )
        )
    }

    @Test
    fun test_when_group_with_only_and() {
        Assert.assertEquals(
            rating.between(1, 4)
                .and(id.contains("abc"))
                .and(title.beginsWith("def"))
                .and(created.eq("2020-02-20T20:20:20-08:00")),
            QueryPredicateBuilder.fromSerializedMap(
                readMapFromFile(
                    "query_predicate",
                    "group_with_only_and.json",
                    HashMap::class.java
                ) as HashMap<String, Any>
            )
        )
    }

    @Test
    fun test_when_mixed_and_or() {
        Assert.assertEquals(
            rating.lt(4).and(id.contains("abc")).or(title.contains("def")),
            QueryPredicateBuilder.fromSerializedMap(
                readMapFromFile(
                    "query_predicate",
                    "group_mixed_and_or.json",
                    HashMap::class.java
                ) as HashMap<String, Any>
            )
        )
    }

    @Test
    fun test_when_rating_gt_but_not_eq() {
        Assert.assertEquals(
            rating.gt(4).and(not(rating.eq(1))),
            QueryPredicateBuilder.fromSerializedMap(
                readMapFromFile(
                    "query_predicate",
                    "mixed_with_not.json",
                    HashMap::class.java
                ) as HashMap<String, Any>
            )
        )
    }

    @Test
    fun test_when_negate_complex_predicate() {
        Assert.assertEquals(
            QueryPredicateGroup.not(
                rating.eq(1).and(rating.eq(4).or(title.contains("crap")))
            ),
            QueryPredicateBuilder.fromSerializedMap(
                readMapFromFile(
                    "query_predicate",
                    "negate_complex_predicate.json",
                    HashMap::class.java
                ) as HashMap<String, Any>
            )
        )
    }

    @Test
    fun test_lookup_query_field_from_relation() {
        Assert.assertEquals(
            blogID.eq("123"),
            QueryPredicateBuilder.fromSerializedMap(
                readMapFromFile(
                    "query_predicate",
                    "relation_field_lookup.json",
                    HashMap::class.java
                ) as HashMap<String, Any>,
                postSchema
            )
        )
    }

    @Test
    fun test_when_predicate_constant_all_used() {
        Assert.assertEquals(
            QueryPredicates.all(),
            QueryPredicateBuilder.fromSerializedMap(
                readMapFromFile(
                    "query_predicate",
                    "query_predicate_constant_all.json",
                    HashMap::class.java
                ) as HashMap<String, Any>
            )
        )
    }
}
