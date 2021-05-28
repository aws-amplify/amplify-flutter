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

import com.amplifyframework.AmplifyException
import com.amplifyframework.api.rest.RestOptions
import io.flutter.plugin.common.MethodChannel


class FlutterApiRequest {
    companion object {

        private val REST_OPTIONS_KEY = "restOptions"
        private val CANCEL_TOKEN_KEY = "cancelToken"

        private val API_NAME_KEY = "apiName"
        private val PATH_KEY = "path"
        private val BODY_KEY = "body"
        private val QUERY_PARAM_KEY = "queryParameters"
        private val HEADERS_KEY = "headers"

        // ====== Rest API ======
        fun getCancelToken(request: Map<String, Any>) : String {
            try {
                return request[CANCEL_TOKEN_KEY] as String
            } catch (cause: Exception) {
                throw AmplifyException(
                        "The cancelToken request argument was not passed as a String",
                        cause,
                        "The request should include the cancelToken as a String")
            }
            return request[CANCEL_TOKEN_KEY] as String
        }

        fun getApiPath(request: Map<String, Any>) : String? {
            try {
                val restOptionsMap = request[REST_OPTIONS_KEY] as Map<String, Any>
                return restOptionsMap[API_NAME_KEY] as String?
            } catch (cause: Exception) {
                throw AmplifyException(
                        "The apiPath request argument was not passed as a String",
                        cause,
                        "The request should include the apiPath as a String")
            }
            return request[CANCEL_TOKEN_KEY] as String
        }

        fun getRestOptions(request: Map<String, Any>) : RestOptions {

            try {
                val builder: RestOptions.Builder = RestOptions.builder()

                val restOptionsMap = request[REST_OPTIONS_KEY] as Map<String, Any>

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
            } catch (cause: Exception) {
                throw AmplifyException(
                        "The restOptions request argument was not passed as a dictionary",
                        cause,
                        "The request should include the restOptions argument as a [String: Any] dictionary")
            }
        }

        // ====== GraphQL ======
        @JvmStatic
        fun getGraphQLDocument(request: Map<String, Any>): String {
            try {
                return request["document"] as String
            } catch (cause: Exception) {
                   throw AmplifyException(
                            "The graphQL document request argument was not passed as a String",
                            cause,
                            "The request should include the graphQL document as a String")
            }
        }

        @JvmStatic
        fun getVariables(request: Map<String, Any>): Map<String, Any> {
            try {
                return request["variables"] as Map<String, Any>
            } catch (cause: Exception) {
                throw AmplifyException(
                        "The variables request argument was not passed as a dictionary",
                        cause,
                        "The request should include the variables argument as a [String: Any] dictionary")
            }
        }

        @JvmStatic
        fun getApiName(request: Map<String, Any>) : String? {
            if (request[API_NAME_KEY] != null) {
                try {
                    return request[API_NAME_KEY] as String
                } catch (cause: Exception) {
                    throw AmplifyException(
                        "The apiName request argument was not passed as a String",
                        cause,
                        "The request should include the apiName as a String")
                }
            }

            return null;

        }


    }
}