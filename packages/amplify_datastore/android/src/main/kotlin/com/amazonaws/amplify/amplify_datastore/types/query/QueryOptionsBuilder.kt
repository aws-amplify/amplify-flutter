package com.amazonaws.amplify.amplify_datastore.types.query

import com.amplifyframework.core.model.query.QueryOptions
import com.amplifyframework.core.model.query.QueryPaginationInput
import com.amplifyframework.core.model.query.QuerySortBy
import com.amplifyframework.core.model.query.Where
import com.amplifyframework.core.model.query.predicate.QueryPredicate

class QueryOptionsBuilder {

    companion object {
        @JvmStatic
        fun fromSerializedMap(request: Map<String, Any>?): QueryOptions {
            var queryOptions: QueryOptions = Where.matchesAll();
            if (request == null) {
                return queryOptions
            }
            var queryPredicate: QueryPredicate? = QueryPredicateBuilder.fromSerializedMap(request["queryPredicate"] as Map<String, Any>?)
            var querySortInput: List<QuerySortBy>? = QuerySortBuilder.fromSerializedList(request["querySort"] as List<Map<String, Any>>?)
            var queryPagination: QueryPaginationInput? = QueryPaginationBuilder.fromSerializedMap(request["queryPagination"] as Map<String, Any>?)

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