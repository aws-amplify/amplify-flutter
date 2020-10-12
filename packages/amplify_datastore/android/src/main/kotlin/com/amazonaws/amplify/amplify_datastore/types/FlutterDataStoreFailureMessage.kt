package com.amazonaws.amplify.amplify_datastore.types

enum class FlutterDataStoreFailureMessage {
    CASTING {
        override fun toString(): String {
            return "ERROR_CASTING_INPUT_IN_PLATFORM_CODE"
        }
    },
    MALFORMED {
        override fun toString(): String {
            return "AMPLIFY_REQUEST_MALFORMED"
        }
    },
    QUERY {
        override fun toString(): String {
            return "AMPLIFY_DATASTORE_QUERY_FAILED"
        }
    }
}