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

package com.amazonaws.amplify.amplify_storage_s3

import androidx.annotation.NonNull
import android.os.Handler
import android.os.Looper
import com.amazonaws.amplify.amplify_storage_s3.types.FlutterGetUrlRequest
import com.amazonaws.amplify.amplify_storage_s3.types.FlutterUploadFileRequest
import com.amazonaws.amplify.amplify_storage_s3.types.FlutterStorageErrorMessage
import com.amazonaws.logging.Log
import com.amplifyframework.core.Amplify
import com.amplifyframework.storage.result.StorageGetUrlResult
import com.amplifyframework.storage.result.StorageUploadFileResult
import io.flutter.plugin.common.MethodChannel
import java.lang.Exception
import com.google.gson.Gson

class AmplifyStorageOperations {

    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:storage_s3")

    companion object StorageOperations {
        private val gson = Gson()

        fun uploadFile(@NonNull flutterResult: MethodChannel.Result, @NonNull request: Map<String, *>) {
            var responseSent: Boolean = false;
            if (FlutterUploadFileRequest.isValid(request)) {
                val req = FlutterUploadFileRequest(request)
                try {
                    Amplify.Storage.uploadFile(
                            req.key,
                            req.file,
                            req.options,
                            { result ->
                                prepareUploadFileResponse(flutterResult, result)
                            },
                            { error ->
                                if (!responseSent) {
                                    responseSent = true;
                                    prepareError(flutterResult, FlutterStorageErrorMessage.UPLOAD_FILE_OPERATION_FAILED.name, error.localizedMessage, error.recoverySuggestion)
                                } else {
                                    LOG.error(FlutterStorageErrorMessage.UPLOAD_FILE_OPERATION_FAILED.name, error)
                                }
                            })
                } catch (e: Exception) {
                    prepareError(flutterResult, FlutterStorageErrorMessage.UPLOAD_FILE_OPERATION_FAILED.name, e.localizedMessage, "")
                }
            } else {
                prepareError(flutterResult, FlutterStorageErrorMessage.UPLOAD_FILE_REQUEST_MALFORMED.name, "The request received was malformed", "Please ensure the request matches the method signature")
            }
        }

        fun getUrl(@NonNull flutterResult: MethodChannel.Result, @NonNull request: Map<String, *>) {
            if (FlutterGetUrlRequest.isValid(request)) {
                val req = FlutterGetUrlRequest(request)
                try {
                    Amplify.Storage.getUrl(req.key,
                            req.options,
                            { result ->
                                prepareGetUrlResponse(flutterResult, result)
                            },
                            { error ->
                                prepareError(flutterResult, FlutterStorageErrorMessage.GET_URL_OPERATION_FAILED.name, error.localizedMessage, error.recoverySuggestion)
                            }
                    )
                } catch (e: Exception) {
                    prepareError(flutterResult, FlutterStorageErrorMessage.GET_URL_OPERATION_FAILED.name, e.localizedMessage, "")
                }
            } else {
                prepareError(flutterResult, FlutterStorageErrorMessage.GET_URL_REQUEST_MALFORMED.name, "The request received was malformed", "Please ensure the request matches the method signature")
            }
        }

        private fun prepareUploadFileResponse(@NonNull flutterResult: MethodChannel.Result, result: StorageUploadFileResult) {
            val response = HashMap<String, Any>()
            response["key"] = result.key
            Handler(Looper.getMainLooper()).post {
                flutterResult.success(response)
            }
        }

        private fun prepareGetUrlResponse(@NonNull flutterResult: MethodChannel.Result, result: StorageGetUrlResult) {
            val response = HashMap<String, Any>()
            response["url"] = result.url.toString()
            Handler(Looper.getMainLooper()).post {
                flutterResult.success(response)
            }
        }

        private fun prepareError(@NonNull flutterResult: MethodChannel.Result, @NonNull msg: String, localizedError: String?, recoverySuggestion: String?) {
            var errorDetails = HashMap<String, Any>();
            errorDetails.put("PLATFORM_EXCEPTIONS", mapOf(
                    "platform" to "Android",
                    "localizedErrorMessage" to localizedError,
                    "recoverySuggestion" to recoverySuggestion
            ))
            Handler(Looper.getMainLooper()).post {
                flutterResult.error("AmplifyException", msg, errorDetails)
            }
        }
    }
}
