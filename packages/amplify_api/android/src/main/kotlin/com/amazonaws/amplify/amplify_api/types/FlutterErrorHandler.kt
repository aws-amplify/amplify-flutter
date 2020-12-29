package com.amazonaws.amplify.amplify_api.types

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import com.amplifyframework.api.ApiException
import io.flutter.plugin.common.MethodChannel.Result

class FlutterErrorHandler {

    companion object {
        private val handler = Handler(Looper.getMainLooper())

        private fun createErrorMap(@NonNull error: Exception): Map<String, Any> {
            var errorMap = HashMap<String, Any>()

            var localizedError = ""
            var recoverySuggestion = ""

            if (error is ApiException) {
                recoverySuggestion = error.recoverySuggestion
            }
            if (error.localizedMessage != null) {
                localizedError = error.localizedMessage
            }

            errorMap.put("PLATFORM_EXCEPTIONS", mapOf(
                    "platform" to "Android",
                    "localizedErrorMessage" to localizedError,
                    "recoverySuggestion" to recoverySuggestion,
                    "errorString" to error.toString()
            ))
            return errorMap
        }

        fun createFlutterError(flutterResult: Result, msg: String, errorStatusCode : Int) {
            createFlutterError(flutterResult, msg,
                    mapOf(
                            "PLATFORM_EXCEPTIONS" to
                                    mapOf("errorStatusCode" to errorStatusCode
                                    )))
        }

        fun createFlutterError(flutterResult: Result, msg: String, @NonNull error: Exception) {
            createFlutterError(flutterResult, msg, createErrorMap(error))
        }

        fun createFlutterError(flutterResult: Result, msg: String, errorMap: Map<String, Any>) {
            handler.post { flutterResult.error("AmplifyException", msg, errorMap) }
        }

    }
}

