// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.query

import com.amplifyframework.core.model.query.QuerySortBy
import com.amplifyframework.core.model.query.QuerySortOrder
import java.util.Locale

class QuerySortBuilder {
    companion object {
        @JvmStatic
        fun fromSerializedList(serializedList: List<Map<String, Any>>?): List<QuerySortBy>? {
            if (serializedList == null || serializedList.isEmpty()) {
                return null
            }
            return serializedList.map { fromSerializedMap(it) }
        }

        private fun fromSerializedMap(serializedMap: Map<String, Any>): QuerySortBy {
            return QuerySortBy(
                serializedMap["field"] as String,
                QuerySortOrder.valueOf(
                    (serializedMap["order"] as String).uppercase(Locale.ROOT)
                ) // android enums are upper case
            )
        }
    }
}
