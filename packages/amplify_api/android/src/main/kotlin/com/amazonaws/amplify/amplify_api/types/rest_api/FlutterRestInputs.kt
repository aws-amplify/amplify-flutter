/*
 * Copyright 2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

package com.amazonaws.amplify.amplify_api_rest.types

import com.amazonaws.amplify.amplify_api.types.FlutterApiErrorMessage
import com.amazonaws.amplify.amplify_api.types.FlutterErrorHandler
import com.amplifyframework.api.rest.RestOptions
import java.lang.ClassCastException
import io.flutter.plugin.common.MethodChannel.Result


data class FlutterRestInputs(val flutterInputsMap: Map<String, *>) {

    companion object {

        private val REST_OPTIONS_KEY = "restOptions"
        private val CODE_KEY = "code"

        private val API_NAME_KEY = "api_name"
        private val PATH_KEY = "path"
        private val BODY_KEY = "body"
        private val QUERY_PARAM_KEY = "queryParameters"
        private val HEADERS_KEY = "headers"

        fun isValidMap(flutterResult: Result, args: Map<String, *>?): Boolean {
            try {
                var arguments = args as Map<String, *>
                var restOptions = args[REST_OPTIONS_KEY] as Map<String, *>
                var path = restOptions[PATH_KEY] as String

            } catch (e: ClassCastException) {
                FlutterErrorHandler.createFlutterError(
                        flutterResult,
                        FlutterApiErrorMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
                        e
                )
                return false;
            } catch (e: Exception) {
                FlutterErrorHandler.createFlutterError(
                        flutterResult,
                        FlutterApiErrorMessage.AMPLIFY_REQUEST_MALFORMED.toString(),
                        e
                )
                return false;
            }
            return true
        }
    }

    fun getCode() : String{
        return flutterInputsMap[CODE_KEY] as String
    }

    fun getApiPath() : String?{
        val restOptionsMap = flutterInputsMap[REST_OPTIONS_KEY] as Map<String, *>
        return restOptionsMap[API_NAME_KEY] as String?
    }

    fun getRestOptions() : RestOptions{
        val builder: RestOptions.Builder = RestOptions.builder()

        val restOptionsMap = flutterInputsMap[REST_OPTIONS_KEY] as Map<String, *>

        for ((key, value) in restOptionsMap) {
            when (key) {
                PATH_KEY -> {
                    builder.addPath(value as String)
                }
                BODY_KEY -> {
                    builder.addBody(value as ByteArray)
                }
                QUERY_PARAM_KEY -> {
                    builder.addQueryParameters(value as Map<String, String>)
                }
                HEADERS_KEY -> {
                    builder.addHeaders(value as Map<String, String>)
                }
            }
        }
        return builder.build()
    }
}