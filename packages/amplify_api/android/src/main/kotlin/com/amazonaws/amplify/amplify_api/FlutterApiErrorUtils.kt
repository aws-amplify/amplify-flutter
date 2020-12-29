package com.amazonaws.amplify.amplify_api

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import com.amplifyframework.api.ApiException
import io.flutter.plugin.common.MethodChannel

class FlutterApiErrorUtils {
    companion object {
        private val handler = Handler(Looper.getMainLooper())

        fun createFlutterError(flutterResult: MethodChannel.Result, msg: String, @NonNull error: Exception) {
            val errorMap = createErrorMap(error)
            handler.post { flutterResult.error("AmplifyException", msg, errorMap) }
        }

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