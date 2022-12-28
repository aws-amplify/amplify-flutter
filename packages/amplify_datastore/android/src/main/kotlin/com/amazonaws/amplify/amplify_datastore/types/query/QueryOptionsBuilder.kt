// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.query

import com.amazonaws.amplify.amplify_datastore.util.safeCastToList
import com.amazonaws.amplify.amplify_datastore.util.safeCastToMap
import com.amplifyframework.core.model.ModelSchema
import com.amplifyframework.core.model.query.QueryOptions
import com.amplifyframework.core.model.query.QueryPaginationInput
import com.amplifyframework.core.model.query.QuerySortBy
import com.amplifyframework.core.model.query.Where
import com.amplifyframework.core.model.query.predicate.QueryPredicate

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
    }
}
