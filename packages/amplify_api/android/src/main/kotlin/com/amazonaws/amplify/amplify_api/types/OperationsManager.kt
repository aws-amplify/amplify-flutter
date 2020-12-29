package com.amazonaws.amplify.amplify_api.types

import com.amplifyframework.core.async.Cancelable

class OperationsManager {

    companion object {

        private var operationsMap: HashMap<String, Cancelable> = HashMap()

        fun containsOperation(cancelToken: String): Boolean {
            return operationsMap.containsKey(cancelToken)
        }

        fun addOperation(cancelToken: String, operation: Cancelable) {
            operationsMap[cancelToken] = operation
        }

        fun removeOperation(cancelToken: String) {
            if(containsOperation(cancelToken)){
                operationsMap.remove(cancelToken)
            }
        }

        fun cancelOperation(cancelToken: String) {
            operationsMap[cancelToken]?.cancel()
            removeOperation(cancelToken)
        }

    }
}
