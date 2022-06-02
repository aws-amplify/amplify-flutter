/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import com.amazonaws.amplify.exception.ExceptionMessages
import com.amazonaws.amplify.exception.ExceptionUtil
import com.amazonaws.amplify.amplify_storage_s3.types.FlutterDownloadFileRequest
import com.amazonaws.amplify.amplify_storage_s3.types.FlutterGetUrlRequest
import com.amazonaws.amplify.amplify_storage_s3.types.FlutterListRequest
import com.amazonaws.amplify.amplify_storage_s3.types.FlutterRemoveRequest
import com.amazonaws.amplify.amplify_storage_s3.types.FlutterUploadFileRequest
import com.amazonaws.amplify.amplify_storage_s3.types.TransferProgressStreamHandler
import com.amplifyframework.core.Amplify
import com.amplifyframework.storage.StorageException
import com.amplifyframework.storage.result.StorageDownloadFileResult
import com.amplifyframework.storage.result.StorageGetUrlResult
import com.amplifyframework.storage.result.StorageListResult
import com.amplifyframework.storage.result.StorageRemoveResult
import com.amplifyframework.storage.result.StorageUploadFileResult
import io.flutter.plugin.common.MethodChannel
import java.lang.Exception
import java.text.SimpleDateFormat
import java.util.Locale
import kotlin.collections.ArrayList
import kotlin.collections.HashMap

class AmplifyStorageOperations {

    companion object StorageOperations {

        private val LOG = Amplify.Logging.forNamespace("amplify:flutter:storage_s3")

        fun uploadFile(
            @NonNull flutterResult: MethodChannel.Result,
            @NonNull request: Map<String, *>,
            transferProgressStreamHandler: TransferProgressStreamHandler
        ) {
            try {
                FlutterUploadFileRequest.validate(request)
                val req = FlutterUploadFileRequest(request)
                Amplify.Storage.uploadFile(
                    req.key,
                    req.file,
                    req.options,
                    { progress ->
                        transferProgressStreamHandler.onTransferProgressEvent(req.uuid, progress)
                    },
                    { result ->
                        prepareUploadFileResponse(flutterResult, result)
                    },
                    { error ->
                        prepareError(flutterResult, error)
                    }
                )
            } catch (e: Exception) {
                prepareError(flutterResult, e)
            }
        }

        fun getUrl(@NonNull flutterResult: MethodChannel.Result, @NonNull request: Map<String, *>) {
            try {
                FlutterGetUrlRequest.validate(request)
                val req = FlutterGetUrlRequest(request)
                Amplify.Storage.getUrl(
                    req.key,
                    req.options,
                    { result ->
                        prepareGetUrlResponse(flutterResult, result)
                    },
                    { error ->
                        prepareError(flutterResult, error)
                    }
                )
            } catch (e: Exception) {
                prepareError(flutterResult, e)
            }
        }

        fun remove(@NonNull flutterResult: MethodChannel.Result, @NonNull request: Map<String, *>) {
            try {
                FlutterRemoveRequest.validate(request)
                val req = FlutterRemoveRequest(request)
                Amplify.Storage.remove(
                    req.key,
                    req.options,
                    { result ->
                        prepareRemoveResponse(flutterResult, result)
                    },
                    { error ->
                        prepareError(flutterResult, error)
                    }
                )
            } catch (e: Exception) {
                prepareError(flutterResult, e)
            }
        }

        fun list(@NonNull flutterResult: MethodChannel.Result, @NonNull request: Map<String, *>) {
            try {
                FlutterListRequest.validate(request)
                val req = FlutterListRequest(request)
                Amplify.Storage.list(
                    req.path,
                    req.options,
                    { result ->
                        prepareListResponse(flutterResult, result)
                    },
                    { error ->
                        prepareError(flutterResult, error)
                    }
                )
            } catch (e: Exception) {
                prepareError(flutterResult, e)
            }
        }

        fun downloadFile(
            @NonNull flutterResult: MethodChannel.Result,
            @NonNull request: Map<String, *>,
            transferProgressStreamHandler: TransferProgressStreamHandler
        ) {
            try {
                FlutterDownloadFileRequest.validate(request)
                val req = FlutterDownloadFileRequest(request)
                Amplify.Storage.downloadFile(
                    req.key,
                    req.file,
                    req.options,
                    { progress ->
                        transferProgressStreamHandler.onTransferProgressEvent(req.uuid, progress)
                    },
                    { result ->
                        prepareDownloadFileResponse(flutterResult, result)
                    },
                    { error ->
                        prepareError(flutterResult, error)
                    }
                )
            } catch (e: Exception) {
                prepareError(flutterResult, e)
            }
        }

        private fun prepareUploadFileResponse(
            @NonNull flutterResult: MethodChannel.Result,
            result: StorageUploadFileResult
        ) {
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
            val spf = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US)
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

        private fun prepareDownloadFileResponse(
            @NonNull flutterResult: MethodChannel.Result,
            result: StorageDownloadFileResult
        ) {
            val response = HashMap<String, Any>()
            response["path"] = result.file.absolutePath
            Handler(Looper.getMainLooper()).post {
                flutterResult.success(response)
            }
        }

        private fun prepareError(@NonNull flutterResult: MethodChannel.Result, @NonNull e: Exception) {
            val errorCode = "StorageException"
            LOG.error(errorCode, e)
            val serializedError: Map<String, Any?> = if (e is StorageException) {
                ExceptionUtil.createSerializedError(e)
            } else {
                ExceptionUtil.createSerializedError(
                    ExceptionMessages.missingExceptionMessage,
                    ExceptionMessages.missingRecoverySuggestion,
                    e.toString()
                )
            }
            Handler(Looper.getMainLooper()).post {
                ExceptionUtil.postExceptionToFlutterChannel(
                    flutterResult,
                    errorCode,
                    serializedError
                )
            }
        }
    }
}
