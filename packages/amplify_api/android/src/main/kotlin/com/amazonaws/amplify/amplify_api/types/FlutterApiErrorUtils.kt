package com.amazonaws.amplify.amplify_api.types

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import com.amplifyframework.api.ApiException
import io.flutter.plugin.common.MethodChannel.Result

class FlutterApiErrorUtils {

    companion object {
        private val handler = Handler(Looper.getMainLooper())

        // Created method to be consistent with iOS
        public fun handleAPIError(
                flutterResult: Result,
                error: ApiException,
                msg: String){
            handleAPIError(
                    flutterResult,
                    error.localizedMessage,
                    error.recoverySuggestion,
                    msg)
        }

        // Created method to be consistent with iOS
        public fun handleAPIError(
                flutterResult: Result,
                msg: String,
                localizedMessage: String,
                recoverySuggestion: String
        ){
            var errorMap = createErrorMap(
                    localizedMessage,
                    recoverySuggestion
            )
            createFlutterError(flutterResult, msg, errorMap)
        }

        // Created method to be consistent with iOS
        private fun createErrorMap(localizedError: String, recoverySuggestion: String?): Map<String, Any> {
            var errorMap = HashMap<String, Any>()

            errorMap.put("PLATFORM_EXCEPTIONS", mapOf(
                    "platform" to "Android",
                    "localizedErrorMessage" to localizedError,
                    "recoverySuggestion" to recoverySuggestion
            ))
            return errorMap
        }

        // ORIGINAL METHODS
        fun createFlutterError(flutterResult: Result, msg: String, error: Exception) {
            createFlutterError(flutterResult, msg, createErrorMap(error))
        }

        fun createFlutterError(flutterResult: Result, msg: String, errorMap: Map<String, Any>) {
            handler.post { flutterResult.error("AmplifyException", msg, errorMap) }
        }



        // ORIGINAL METHODS - not consistent with iOS, I think we should remove them
        private fun createErrorMap(error: Exception): Map<String, Any> {
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

        /*
        // Deprecated code for status code error case ...
        fun createFlutterError(flutterResult: Result, msg: String, errorStatusCode : Int) {
            createFlutterError(flutterResult, msg,
                    mapOf(
                            "PLATFORM_EXCEPTIONS" to
                                    mapOf(
                                            "errorStatusCode" to errorStatusCode,
                                            "recoverySuggestion" to
                                                """
                                                The metadata associated with the response is contained in the HTTPURLResponse.
                                                For more information on HTTP status codes, take a look at
                                                https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
                                                """,
                                            "errorDescription" to "The HTTP response status code is " + errorStatusCode.toString()
                                    )))
        }
         */
    }
}

