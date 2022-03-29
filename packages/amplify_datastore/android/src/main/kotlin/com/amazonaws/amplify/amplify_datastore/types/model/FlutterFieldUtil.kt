package com.amazonaws.amplify.amplify_datastore.types.model

class FlutterFieldUtil {
    companion object {
        fun convertValueByFieldType(fieldTargetType: String, value: Any?): Any? {
            if (value == null) {
                return null
            }
            return when (fieldTargetType) {
                "AWSTimestamp" -> (value as Number).toLong()
                else -> value
            }
        }
    }
}
