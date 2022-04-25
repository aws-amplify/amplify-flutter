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

import com.amazonaws.amplify.amplify_core.cast
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterModelPrimaryKey
import com.amazonaws.amplify.amplify_datastore.util.safeCastToList
import com.amazonaws.amplify.amplify_datastore.util.safeCastToMap
import com.amplifyframework.core.model.ModelSchema
import com.amplifyframework.core.model.query.QueryOptions
import com.amplifyframework.core.model.query.QueryPaginationInput
import com.amplifyframework.core.model.query.QuerySortBy
import com.amplifyframework.core.model.query.Where
import com.amplifyframework.core.model.query.predicate.QueryPredicate
import java.io.Serializable

class QueryOptionsBuilder {

    companion object {
        @JvmStatic
        fun fromSerializedMap(request: Map<String, Any>?, modelSchema: ModelSchema): QueryOptions {
            var queryOptions: QueryOptions = Where.matchesAll()
            if (request == null) {
                return queryOptions
            }
            val queryPredicate: QueryPredicate? = QueryPredicateBuilder.fromSerializedMap(
                request["queryPredicate"].safeCastToMap(),
                modelSchema
            )
            val querySortInput: List<QuerySortBy>? = QuerySortBuilder.fromSerializedList(
                request["querySort"].safeCastToList()
            )
            val queryPagination: QueryPaginationInput? = QueryPaginationBuilder.fromSerializedMap(
                request["queryPagination"].safeCastToMap()
            )

            if (queryPredicate != null) {
                queryOptions = queryOptions.matches(queryPredicate)
            }
            if (queryPagination != null) {
                queryOptions = queryOptions.paginated(queryPagination)
            }
            if (querySortInput != null) {
                queryOptions = queryOptions.sorted(*querySortInput.toTypedArray())
            }
            return queryOptions
        }

        @JvmStatic
        fun extractModelPrimaryKeyFromPredicate(request: Map<String, Any>?): FlutterModelPrimaryKey? {
            if (request == null) {
                return null
            }

            val queryPredicate = request["queryPredicate"]

            if (queryPredicate is Map<*, *>) {
                val queryByIdentifierOperation = queryPredicate.cast<String, Any>()["queryByIdentifierOperation"]
                if (queryByIdentifierOperation is Map<*, *>) {
                    val identifierKeyValues = queryByIdentifierOperation.cast<String, Any>()["value"]
                    if (identifierKeyValues is List<*>) {
                        return FlutterModelPrimaryKey(
                            identifierKeyValues.cast<Map<String, Serializable>>().map { it.values.first() }
                        )
                    }
                }
            }

            return null
        }
    }

}
