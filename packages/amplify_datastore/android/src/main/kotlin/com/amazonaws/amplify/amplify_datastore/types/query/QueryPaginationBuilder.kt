// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.query

import com.amplifyframework.core.model.query.Page
import com.amplifyframework.core.model.query.QueryPaginationInput

class QueryPaginationBuilder {
    companion object {
        @JvmStatic
        fun fromSerializedMap(serializedMap: Map<String, Any>?): QueryPaginationInput? {
            if (serializedMap == null) {
                return null
            }
            var queryPaginationInput = if (serializedMap.containsKey("page"))
                Page.startingAt(serializedMap["page"] as Int)
            else
                Page.firstPage()

            queryPaginationInput = if (serializedMap.containsKey("limit"))
                queryPaginationInput.withLimit(serializedMap["limit"] as Int)
            else
                queryPaginationInput

            return queryPaginationInput
        }
    }
}
