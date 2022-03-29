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
