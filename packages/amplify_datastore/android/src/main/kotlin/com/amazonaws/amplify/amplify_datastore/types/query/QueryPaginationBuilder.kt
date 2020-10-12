package com.amazonaws.amplify.amplify_datastore.types.query

import com.amplifyframework.core.model.query.Page
import com.amplifyframework.core.model.query.QueryPaginationInput

class QueryPaginationBuilder {
    companion object {
        @JvmStatic
        fun fromSerializedMap(serializedMap: Map<String, Any>?): QueryPaginationInput? {
            if(serializedMap == null) {
                return null;
            }
            var queryPaginationInput = if (serializedMap.containsKey("page")) {
                Page.startingAt(serializedMap["page"] as Int)
            } else {
                Page.firstPage()
            }
            if (serializedMap.containsKey("limit")) {
                queryPaginationInput = queryPaginationInput.withLimit(serializedMap["limit"] as Int)
            }
            return queryPaginationInput
        }
    }
}