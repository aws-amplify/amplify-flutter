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
