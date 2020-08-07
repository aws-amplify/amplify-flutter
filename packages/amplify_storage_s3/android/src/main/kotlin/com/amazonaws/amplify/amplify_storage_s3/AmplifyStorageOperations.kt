package com.amazonaws.amplify.amplify_storage_s3

import android.util.Log
import androidx.annotation.NonNull
import com.amazonaws.amplify.amplify_storage_s3.types.FlutterGetUrlRequest
import com.amazonaws.amplify.amplify_storage_s3.types.FlutterUploadFileRequest
import com.amplifyframework.core.Amplify
import io.flutter.plugin.common.MethodChannel
import java.lang.Exception
import com.google.gson.Gson

//TODO: replace strings with enums for the different error cases/codes
// Remove unnecessary log statements
class AmplifyStorageOperations {

    companion object StorageOperations {
        private var gson = Gson()

        fun uploadFile(@NonNull flutterResult: MethodChannel.Result, @NonNull request: HashMap<String, *>) {
            if (FlutterUploadFileRequest.isValid(request)) {
                Log.i("AmplifyFlutter", "uploadFile request:" + request.toString())
                val req = FlutterUploadFileRequest(request)
                try {
                    Log.i("Key", req.key)
                    Log.i("AbsolutePath", req.file.absolutePath)
                    Log.i("Options", gson.toJson(req.options))
                    Amplify.Storage.uploadFile(
                            req.key,
                            req.file,
                            req.options,
                            { result ->
                                Log.i("AmplifyFlutter", "Successfully uploaded file: " + result.key)
                                //TODO: Implement a response type
                                val response: HashMap<String, String> = HashMap()
                                response["key"] = result.key
                                flutterResult.success(response)
                            },
                            { error ->
                                prepareError(flutterResult, "UPLOAD_FILE_OPERATION_FAILED", error.localizedMessage, error.recoverySuggestion)

                            })


                } catch (e: Exception) {
                    prepareError(flutterResult, "ERROR_ENCOUNTERED_IN_UPLOAD_FILE_OPERATION", e.localizedMessage, "")
                }
            } else {
                prepareError(flutterResult, "UPLOAD_FILE_REQUEST_MALFORMED", "The request received was malformed", "Please ensure the request matches the method signature")
            }
        }

        fun getUrl(@NonNull flutterResult: MethodChannel.Result, @NonNull request: HashMap<String, *>) {
            if (FlutterGetUrlRequest.isValid(request)) {
                Log.i("AmplifyFlutter", "getUrl request:" + request.toString())
                val req = FlutterGetUrlRequest(request)
                try {
                    Log.i("Key", req.key)
                    Log.i("Options", gson.toJson(req.options))
                    Amplify.Storage.getUrl(
                            req.key,
                            req.options,
                            { result ->
                                Log.i("AmplifyFlutter", "Successfully got URL: " + result.url)
                                //TODO: Implement a response type
                                val response: HashMap<String, String> = HashMap()
                                response["url"] = result.url.toString()
                                flutterResult.success(response)
                            },
                            { error ->
                                prepareError(flutterResult, "GET_URL_OPERATION_FAILED", error.localizedMessage, error.recoverySuggestion)
                            }
                    )
                } catch (e: Exception) {
                    prepareError(flutterResult, "ERROR_ENCOUNTERED_IN_GET_URL_OPERATION", e.localizedMessage, "")
                }
            } else {
                prepareError(flutterResult, "GET_URL_REQUEST_MALFORMED", "The request received was malformed", "Please ensure the request matches the method signature")
            }

        }

    }

}

//TODO: Move to Error or Util Class
fun prepareError(@NonNull flutterResult: MethodChannel.Result, @NonNull msg: String, localizedError: String?, recoverySuggestion: String?) {
    var errorDetails: HashMap<String, Any> = HashMap();
    errorDetails.put("PLATFORM_EXCEPTIONS" , mapOf(
            "platform" to "Android",
            "localizedErrorMessage" to localizedError,
            "recoverySuggestion" to recoverySuggestion
    ))
    flutterResult.error("AmplifyException", msg, errorDetails)

}