package com.amazonaws.amplify.amplify_datastore.types.query

import com.amplifyframework.core.model.query.QuerySortBy
import com.amplifyframework.core.model.query.QuerySortOrder

class QuerySortBuilder {
    companion object {
        @JvmStatic
        fun fromSerializedList(serializedList: List<Map<String, Any>>?): List<QuerySortBy>? {
            if(serializedList == null || serializedList.isEmpty()) {
                return null;
            }
            return serializedList.map { querySortInput -> fromSerializedMap(querySortInput) }
        }

        private fun fromSerializedMap(serializedMap: Map<String, Any>): QuerySortBy {
            return QuerySortBy(
                    serializedMap["field"] as String,
                    QuerySortOrder.valueOf((serializedMap["order"] as String).toUpperCase()) // android enums are upper case
            )
        }
    }
}