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
import com.amplifyframework.core.Amplify
import io.flutter.plugin.common.MethodChannel
import java.lang.Exception
import java.text.SimpleDateFormat
import com.amazonaws.amplify.amplify_storage_s3.types.*
import com.amplifyframework.storage.result.*

class AmplifyStorageOperations {

    companion object StorageOperations {

        private val LOG = Amplify.Logging.forNamespace("amplify:flutter:storage_s3")

        fun uploadFile(@NonNull flutterResult: MethodChannel.Result, @NonNull request: Map<String, *>) {
            var responseSent = false
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
                                    responseSent = true
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

        fun remove(@NonNull flutterResult: MethodChannel.Result, @NonNull request: Map<String, *>) {
            if (FlutterRemoveRequest.isValid(request)) {
                val req = FlutterRemoveRequest(request)
                try {
                    Amplify.Storage.remove(req.key,
                            req.options,
                            { result ->
                                prepareRemoveResponse(flutterResult, result)
                            },
                            { error ->
                                prepareError(flutterResult, FlutterStorageErrorMessage.REMOVE_OPERATION_FAILED.name, error.localizedMessage, error.recoverySuggestion)
                            }
                    )
                } catch (e: Exception) {
                    prepareError(flutterResult, FlutterStorageErrorMessage.REMOVE_OPERATION_FAILED.name, e.localizedMessage, "")
                }
            } else {
                prepareError(flutterResult, FlutterStorageErrorMessage.REMOVE_REQUEST_MALFORMED.name, "The request received was malformed", "Please ensure the request matches the method signature")
            }
        }

        fun list(@NonNull flutterResult: MethodChannel.Result, @NonNull request: Map<String, *>) {
            if (FlutterListRequest.isValid(request)) {
                val req = FlutterListRequest(request)
                try {
                    Amplify.Storage.list(req.path,
                            req.options,
                            { result ->
                                prepareListResponse(flutterResult, result)
                            },
                            { error ->
                                prepareError(flutterResult, FlutterStorageErrorMessage.LIST_OPERATION_FAILED.name, error.localizedMessage, error.recoverySuggestion)
                            }
                    )
                } catch (e: Exception) {
                    prepareError(flutterResult, FlutterStorageErrorMessage.LIST_OPERATION_FAILED.name, e.localizedMessage, "")
                }
            } else {
                prepareError(flutterResult, FlutterStorageErrorMessage.LIST_REQUEST_MALFORMED.name, "The request received was malformed", "Please ensure the request matches the method signature")
            }
        }

        fun downloadFile(@NonNull flutterResult: MethodChannel.Result, @NonNull request: Map<String, *>) {
            if (FlutterDownloadFileRequest.isValid(request)) {
                val req = FlutterDownloadFileRequest(request)
                try {
                    Amplify.Storage.downloadFile(req.key,
                            req.file,
                            req.options,
                            { result ->
                                prepareDownloadFileResponse(flutterResult, result)
                            },
                            { error ->
                                prepareError(flutterResult, FlutterStorageErrorMessage.DOWNLOAD_FILE_OPERATION_FAILED.name, error.localizedMessage, error.recoverySuggestion)
                            }
                    )
                } catch (e: Exception) {
                    prepareError(flutterResult, FlutterStorageErrorMessage.DOWNLOAD_FILE_OPERATION_FAILED.name, e.localizedMessage, "")
                }
            } else {
                prepareError(flutterResult, FlutterStorageErrorMessage.DOWNLOAD_FILE_REQUEST_MALFORMED.name, "The request received was malformed", "Please ensure the request matches the method signature")
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

        private fun prepareRemoveResponse(@NonNull flutterResult: MethodChannel.Result, result: StorageRemoveResult) {
            val response = HashMap<String, String>()
            response["key"] = result.key
            Handler(Looper.getMainLooper()).post {
                flutterResult.success(response)
            }
        }

        private fun prepareListResponse(@NonNull flutterResult: MethodChannel.Result, result: StorageListResult) {
            val spf = SimpleDateFormat("yyyy-MM-dd hh:mm:ss")
            val storageItemList: ArrayList<Map<String, Any>> = arrayListOf()
            for (item in result.items) {
                val storageItemMap: Map<String, Any> = mapOf(
                        "key" to item.key,
                        "eTag" to item.eTag,
                        "size" to item.size,
                        "lastModified" to spf.format(item.lastModified)
                )
                storageItemList.add(storageItemMap)
            }
            val listResultMap: Map<String, Any> = mapOf(
                    "items" to storageItemList
            )
            Handler(Looper.getMainLooper()).post {
                flutterResult.success(listResultMap)
            }
        }

        private fun prepareDownloadFileResponse(@NonNull flutterResult: MethodChannel.Result, result: StorageDownloadFileResult) {
            val response = HashMap<String, Any>()
            response["path"] = result.file.absolutePath
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
