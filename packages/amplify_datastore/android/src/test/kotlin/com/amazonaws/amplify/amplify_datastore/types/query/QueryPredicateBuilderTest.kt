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

import com.amazonaws.amplify.amplify_datastore.types.query.QueryPredicateBuilder
import com.amplifyframework.core.model.query.Where
import com.amplifyframework.core.model.query.predicate.QueryField
import com.amplifyframework.core.model.query.predicate.QueryPredicate
import com.amplifyframework.core.model.temporal.Temporal
import com.google.gson.Gson
import org.junit.Assert
import org.junit.Before
import org.junit.Test
import java.time.Instant
import java.util.*

class QueryPredicateBuilderTest {
    lateinit var predicateBuilder: QueryPredicateBuilder
    val id: QueryField = QueryField.field("id")
    val title: QueryField = QueryField.field("title")
    val rating: QueryField = QueryField.field("rating")
    val created: QueryField = QueryField.field("created")

    @Before
    fun setup() {
        predicateBuilder = QueryPredicateBuilder()
    }

    @Test
    fun test_when_id_not_equals() {
        Assert.assertEquals(
                id.ne("123"),
                QueryPredicateBuilder.fromSerializedMap(readFromFile("id_not_equals.json")))
    }

    @Test
    fun test_when_rating_greater_or_equal() {
        Assert.assertEquals(
                rating.ge(4.0), // TODO Figure out how to correctly serialize integers from dart to avoid sending 4.0 to native
                QueryPredicateBuilder.fromSerializedMap(readFromFile("rating_greater_or_equal.json")))
    }

    @Test
    fun test_complex_nested_and_or() {
        Assert.assertEquals(
                rating.le(4.0).and(id.contains("abc").or(title.beginsWith("def"))),
                QueryPredicateBuilder.fromSerializedMap(readFromFile("complex_nested.json")))
    }

    @Test
    fun test_when_group_with_only_and() {
        // QueryPredicate formats the date string differently than how Dart does it.
        // So we have a different json file for it
        Assert.assertEquals(
                rating.between(1.0, 4.0)
                        .and(id.contains("abc"))
                        .and(title.beginsWith("def"))
                        // TODO; will this be executed correctly in the backend where we are passing strings instead of a date?
                        .and(created.eq("2020-02-20T20:20:20-08:00")),
                QueryPredicateBuilder.fromSerializedMap(readFromFile("group_with_only_and.json")))
    }

    @Test
    fun test_when_mixed_and_or() {
        Assert.assertEquals(
                rating.lt(4.0).and(id.contains("abc")).or(title.contains("def")),
                QueryPredicateBuilder.fromSerializedMap(readFromFile("group_mixed_and_or.json")))
    }

    private fun readFromFile(path: String): Map<String, Any> {
        val filePath = "query_predicate/$path"
        val jsonFile = ClassLoader.getSystemResource(filePath).readText()
        return Gson().fromJson(jsonFile, Map::class.java) as Map<String, Any>
    }
}
