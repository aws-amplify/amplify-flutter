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

package com.amazonaws.amplify.amplify_api

import com.amplifyframework.core.async.Cancelable
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import java.util.concurrent.ConcurrentHashMap

class OperationsManager {

    companion object {

        private val scope = CoroutineScope(Dispatchers.IO)
        private val operationsMap: ConcurrentHashMap<String, Cancelable> = ConcurrentHashMap()

        fun containsOperation(cancelToken: String): Boolean {
            return operationsMap.containsKey(cancelToken)
        }

        fun addOperation(cancelToken: String, operation: Cancelable) {
            operationsMap[cancelToken] = operation
        }

        fun removeOperation(cancelToken: String): Cancelable? {
            return if (containsOperation(cancelToken)) {
                operationsMap.remove(cancelToken)
            } else null
        }

        fun cancelOperation(cancelToken: String) {
            val operation = removeOperation(cancelToken)
            // Perform actual cancellation on a background thread.
            operation?.let {
                scope.launch {
                    it.cancel()
                }
            }
        }
    }
}
