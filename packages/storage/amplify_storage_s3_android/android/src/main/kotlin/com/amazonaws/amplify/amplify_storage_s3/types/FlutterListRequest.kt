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

package com.amazonaws.amplify.amplify_storage_s3.types

import com.amazonaws.amplify.exception.ExceptionMessages
import com.amazonaws.amplify.exception.InvalidRequestException
import com.amplifyframework.storage.StorageAccessLevel
import com.amplifyframework.storage.options.StorageListOptions
import java.util.*

data class FlutterListRequest(val request: Map<String, *>) {
    val path: String = request["path"] as String? ?: ""
    val options: StorageListOptions = setOptions(request)

    private fun setOptions(request: Map<String, *>): StorageListOptions {
        if (request["options"] != null) {
            val optionsMap = request["options"] as Map<String, *>
            val options: StorageListOptions.Builder<*> = StorageListOptions.builder()

            optionsMap.forEach { (optionKey, optionValue) ->
                when (optionKey) {
                    "accessLevel" -> {
                        val accessLevelStringOption = optionValue as String
                        val accessLevel: StorageAccessLevel? = StorageAccessLevel.values().find {
                            it.name == accessLevelStringOption.uppercase(
                                Locale.ROOT
                            )
                        }
                        options.accessLevel(accessLevel)
                    }
                    "targetIdentityId" -> {
                        options.targetIdentityId(optionValue as String?)
                    }
                }
            }
            return options.build()
        }
        return StorageListOptions.defaultInstance()
    }

    companion object {
        private const val validationErrorMessage: String = "List request malformed."
        fun validate(request: Map<String, *>) {
            if (request["path"] !is String?) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("path"))
            }
        }
    }
}
