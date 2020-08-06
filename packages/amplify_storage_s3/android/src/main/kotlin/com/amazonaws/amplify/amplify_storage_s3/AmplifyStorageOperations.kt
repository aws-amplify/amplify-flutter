package com.amazonaws.amplify.amplify_storage_s3

import android.util.Log
import androidx.annotation.NonNull
import com.amazonaws.amplify.amplify_storage_s3.types.UploadFileRequest
import com.amplifyframework.core.Amplify
import com.amplifyframework.storage.options.StorageUploadFileOptions
import io.flutter.plugin.common.MethodChannel
import java.io.File
import java.io.Flushable
import java.lang.Exception

//import android.app.Activity
//import android.content.Context
//import android.util.Log
//import androidx.annotation.NonNull
//import com.amplifyframework.core.Amplify
//import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
//import com.amplifyframework.storage.StorageItem
//import com.amplifyframework.storage.result.StorageListResult
//import com.amplifyframework.storage.s3.AWSS3StoragePlugin
//import io.flutter.embedding.engine.plugins.FlutterPlugin
//import io.flutter.embedding.engine.plugins.activity.ActivityAware
//import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
//import io.flutter.plugin.common.MethodCall
//import io.flutter.plugin.common.MethodChannel
//import io.flutter.plugin.common.MethodChannel.MethodCallHandler
//import io.flutter.plugin.common.MethodChannel.Result
//import io.flutter.plugin.common.PluginRegistry.Registrar
//import java.io.File
//import java.lang.Exception

class AmplifyStorageOperations {
    companion object StorageOperations {

        fun uploadFile(@NonNull flutterResult: MethodChannel.Result, @NonNull request: HashMap<String, *>) {
            if (UploadFileRequest.isValid(request)) {
                Log.i("AmplifyFlutterStorage", "uploadFile request:" + request.toString())
                val req = UploadFileRequest(request)
                try {

                    Log.i("Key", req.key)
                    Log.i("AbsolutePath", req.file.absolutePath)
                    Amplify.Storage.uploadFile(
                            req.key,
                            req.file,
                            req.options,
                            { result ->
                                Log.i("AmplifyFlutterStorage", "Successfully uploaded file: " + result.key)
                                val response: HashMap<String, String> = HashMap()
                                response["key"] = result.key
                                flutterResult.success(response)
                            },
                            { error ->
                                flutterResult.error("AmplifyException", "Upload failed", error.message)

                            })


                } catch (e: Exception) {
                    flutterResult.error("AmplifyException", "UploadFile Error", e.message)
                }
            } else {
                flutterResult.error("AmplifyException", "UploadFile Error", "The request received is malformed")
            }
        }

        fun list(flutterResult: MethodChannel.Result) {
            val response: HashMap<String, String> = HashMap()
            response["list"] = "List of items"
            flutterResult.success(response)
        }

    }

}