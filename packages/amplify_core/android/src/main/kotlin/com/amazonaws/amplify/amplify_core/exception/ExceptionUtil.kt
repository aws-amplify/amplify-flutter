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

package com.amazonaws.amplify.amplify_core.exception

import androidx.annotation.NonNull
import com.amplifyframework.AmplifyException
import com.google.gson.GsonBuilder
import com.google.gson.JsonElement
import com.google.gson.JsonPrimitive
import com.google.gson.JsonSerializationContext
import com.google.gson.JsonSerializer
import com.google.gson.reflect.TypeToken
import io.flutter.plugin.common.MethodChannel.Result
import java.lang.reflect.Type

class ExceptionUtil {
    companion object {
        @JvmStatic
        fun postExceptionToFlutterChannel(@NonNull result: Result,
                errorCode: String,
                details: Map<String, Any?>) {
            result.error(errorCode,
                    ExceptionMessages.defaultFallbackExceptionMessage,
                    details)
        }

        @JvmStatic
        fun createSerializedError(@NonNull e: AmplifyException): Map<String, Any?> {
            val gsonBuilder = GsonBuilder()
            gsonBuilder.registerTypeAdapter(Throwable::class.java, ThrowableSerializer())
            val gson = gsonBuilder.create()
            val mapType = object : TypeToken<Map<String, Any>>() {}.type
            val serializedJsonException = gson.toJson(e)
            var serializedMap: Map<String, Any> = gson.fromJson(serializedJsonException, mapType)

            // Remove unnecessary fields
            serializedMap =
                    serializedMap.filterKeys { it != "stackTrace" && it != "suppressedExceptions" }

            // Update the name of fields as per Dart exceptions
            return serializedMap.mapKeys {
                when (it.key) {
                    "detailMessage" -> "message"
                    "cause" -> "underlyingException"
                    else -> it.key
                }
            }
        }

        @JvmStatic
        fun createSerializedUnrecognizedError(@NonNull e: Exception): Map<String, Any?> {
            return createSerializedError(ExceptionMessages.missingExceptionMessage, null, e.toString())
        }

        @JvmStatic
        fun createSerializedError(message: String, recoverySuggestion: String?,
                cause: String?): Map<String, String?> {
            return mapOf(
                    "message" to message,
                    "recoverySuggestion" to (recoverySuggestion
                            ?: ExceptionMessages.missingRecoverySuggestion),
                    "underlyingException" to cause
            )
        }
    }
}

class ThrowableSerializer : JsonSerializer<Throwable> {
    override fun serialize(src: Throwable?, typeOfSrc: Type?,
            context: JsonSerializationContext?): JsonElement {
        return JsonPrimitive(src.toString())
    }
}
