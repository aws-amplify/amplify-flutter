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

package com.amazonaws.amplify.amplify_api

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import com.amplifyframework.api.ApiException
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.Result


class FlutterApiError {
    companion object {
        private val handler = Handler(Looper.getMainLooper())

        @JvmStatic
        fun postFlutterError(flutterResult: MethodChannel.Result, msg: String, @NonNull error: Exception) {
            val errorMap = createErrorMap(error)
            handler.post { flutterResult.error("AmplifyException", msg, errorMap) }
        }

        private fun createErrorMap(@NonNull error: Exception): Map<String, Any> {
            var localizedError = ""
            var recoverySuggestion = ""
            if (error is ApiException) {
                recoverySuggestion = error.recoverySuggestion
            }
            if (error.localizedMessage != null) {
                localizedError = error.localizedMessage
            }

            var errorMap = HashMap<String, Any>()

            errorMap["PLATFORM_EXCEPTIONS"] = mapOf(
                    "platform" to "Android",
                    "localizedErrorMessage" to localizedError,
                    "recoverySuggestion" to recoverySuggestion,
                    "errorString" to error.toString()
            )
            return errorMap
        }
    }
}