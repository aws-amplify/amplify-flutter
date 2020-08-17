package com.amazonaws.amplify.amplify_storage_s3.types

import com.amplifyframework.storage.StorageAccessLevel
import com.amplifyframework.storage.options.StorageUploadFileOptions
import java.io.File

data class FlutterUploadFileRequest(val request: Map<String, *>) {
    val key: String = request["key"] as String
    val file: File = File(request["path"] as String)
    val options: StorageUploadFileOptions = setOptions(request)

    private fun setOptions(request: Map<String, *>): StorageUploadFileOptions {
        if(request["options"]!= null) {
            val optionsMap = request["options"] as Map<String, *>
            var options: StorageUploadFileOptions.Builder = StorageUploadFileOptions.builder()

            optionsMap.forEach { (optionKey, optionValue) ->
                when(optionKey) {
                    "accessLevel" -> {
                        val accessLevelStringOption = optionValue as String
                        val accessLevel: StorageAccessLevel? = StorageAccessLevel.values().find { it.name == accessLevelStringOption.toUpperCase() }
                        options.accessLevel(accessLevel)
                    }
                    "targetIdentityId" -> {
                        options.targetIdentityId(optionValue as String?)
                    }
                    "metadata" -> {
                        options.metadata(optionValue as MutableMap<String, String>)
                    }
                    "contentType" -> {
                        options.contentType(optionValue as String?)
                    }
                }
            }
            return options.build()
        }
        return StorageUploadFileOptions.defaultInstance()
    }

    companion object {
        fun isValid(request: Map<String, *>): Boolean {
            var valid = true
            if(request["path"] !is String) {
                valid = false
            }
            if(request["key"] !is String) {
                valid = false
            }
            return valid
        }
    }

}