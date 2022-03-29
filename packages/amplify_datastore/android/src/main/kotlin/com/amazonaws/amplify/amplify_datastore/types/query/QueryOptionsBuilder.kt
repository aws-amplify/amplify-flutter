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
            var queryPredicate: QueryPredicate? = QueryPredicateBuilder.fromSerializedMap(
                request["queryPredicate"].safeCastToMap(),
                modelSchema
            )
            var querySortInput: List<QuerySortBy>? = QuerySortBuilder.fromSerializedList(
                request["querySort"].safeCastToList()
            )
            var queryPagination: QueryPaginationInput? = QueryPaginationBuilder.fromSerializedMap(
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
