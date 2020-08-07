package com.amazonaws.amplify.amplify_storage_s3.types

import com.amplifyframework.storage.StorageAccessLevel
import com.amplifyframework.storage.options.StorageGetUrlOptions

data class FlutterGetUrlRequest(val request: HashMap<String, *>) {
    val key: String = request["key"] as String
    val options: StorageGetUrlOptions = setOptions(request)

    private fun setOptions(request: HashMap<String, *>): StorageGetUrlOptions {
        if (request["options"] != null) {
            val optionsMap = request["options"] as HashMap<String, *>
            var options: StorageGetUrlOptions.Builder = StorageGetUrlOptions.builder()

            optionsMap.forEach { (optionKey, optionValue) ->
                when (optionKey) {
                    "accessLevel" -> {
                        val accessLevelStringOption = optionValue as String
                        val accessLevel: StorageAccessLevel? = StorageAccessLevel.values().find { it.name == accessLevelStringOption.toUpperCase() }
                        options.accessLevel(accessLevel)
                    }
                    "targetIdentityId" -> {
                        options.targetIdentityId(optionValue as String?)
                    }
                    "expires" -> {
                        options.expires(optionValue as Int)
                    }
                }
            }
            return options.build()
        }
        return StorageGetUrlOptions.defaultInstance()
    }

    companion object {
        fun isValid(request: HashMap<String, *>): Boolean {
            var valid = true
            if (!(request.containsKey("key") && request["path"] is String)) {
                valid = false
            }
            return valid
        }
    }
}