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

import android.os.Handler
import android.os.Looper
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import com.amplifyframework.storage.StorageAccessLevel
import com.amplifyframework.storage.StorageException
import com.amplifyframework.storage.s3.configuration.AWSS3PluginPrefixResolver
import io.flutter.plugin.common.MethodChannel
import java.util.*


class FlutterPrefixResolver(methodChannel: MethodChannel) : AWSS3PluginPrefixResolver {

    private var channel: MethodChannel = methodChannel

    private val uiThreadHandler = Handler(Looper.getMainLooper())
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:storage_s3")

    override fun resolvePrefix(
            accessLevel: StorageAccessLevel,
            targetIdentity: String?,
            onSuccess: Consumer<String>,
            onError: Consumer<StorageException>
    ) {

        val accessLevelString = accessLevel.name.lowercase(Locale.US);
        val args = mapOf(
                "accessLevel" to accessLevelString,
                "targetIdentity" to targetIdentity,
        )

        uiThreadHandler.post {
            channel.invokeMethod(
                    "awsS3PluginPrefixResolver",
                    args,
                    object : MethodChannel.Result {
                        override fun success(result: Any?) {
                            try {
                                val resultMap: Map<String, Any> = result as Map<String, Any>
                                val isSuccess = resultMap["isSuccess"] as Boolean

                                if (isSuccess) {
                                    val prefix = resultMap["prefix"] as String
                                    onSuccess.accept(prefix)
                                } else {
                                    val errorMessage = resultMap["errorMessage"] as String
                                    var recoverySuggestion = resultMap["errorRecoverySuggestion"] as String?
                                    if (recoverySuggestion.isNullOrEmpty()) recoverySuggestion = "No recovery suggestion provided";

                                    onError.accept(StorageException(errorMessage, recoverySuggestion))
                                }
                            } catch (e: Exception) {
                                onError.accept(StorageException(e.toString(), "Exception in handling Prefix decision from Dart."))
                                LOG.error("Exception in custom S3 Storage Prefix Resolution.")
                            }
                        }

                        override fun error(errorCode: String, errorMessage: String?, errorDetails: Any?) {
                            onError.accept(StorageException("$errorCode $errorMessage", "Exception in handling Prefix decision from Dart."))
                            LOG.error("Error in custom S3 Storage Prefix Resolution: $errorCode $errorMessage.")
                        }

                        override fun notImplemented() {
                            onError.accept(StorageException("No method implemented for prefix resolution", "Exception in handling Prefix decision from Dart."))
                            LOG.error("No custom S3 Storage Prefix Resolution Provided.")
                        }
                    }
            )
        }
    }
}