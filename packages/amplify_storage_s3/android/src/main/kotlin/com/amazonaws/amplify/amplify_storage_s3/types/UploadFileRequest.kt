package com.amazonaws.amplify.amplify_storage_s3.types

import android.util.Log
import androidx.annotation.NonNull
import com.amplifyframework.storage.options.StorageUploadFileOptions
import java.io.File

data class UploadFileRequest(val request: HashMap<String, *>) {
    val key: String = request["key"] as String
    val file: File = getFileFromPath(request["path"] as String)

    //TODO: validate and format options from request
    val options: StorageUploadFileOptions = StorageUploadFileOptions.defaultInstance()

    private fun getFileFromPath(@NonNull path: String): File {
        Log.i("Path", path)
        val fileDir = path.substringBeforeLast('/')
        val fileName = path.substringAfterLast('/')
        return File(fileDir, fileName)
    }

    companion object {
        fun isValid(request: HashMap<String, *>): Boolean {
            var valid: Boolean = true
            if(!(request.containsKey("path") && request["path"] is String)) {
                valid = false
            }
            if(!(request.containsKey("key") && request["path"] is String)) {
                valid = false
            }
            return valid
        }
    }

}