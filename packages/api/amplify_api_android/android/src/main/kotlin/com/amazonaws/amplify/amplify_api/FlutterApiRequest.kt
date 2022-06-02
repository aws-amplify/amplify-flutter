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

import com.amazonaws.amplify.amplify_api.rest_api.RestOperationType
import com.amazonaws.amplify.asMap
import com.amplifyframework.AmplifyException
import com.amplifyframework.api.ApiException
import com.amplifyframework.api.rest.RestOptions

object FlutterApiRequest {
    private const val REST_OPTIONS_KEY = "restOptions"
    private const val CANCEL_TOKEN_KEY = "cancelToken"

    private const val API_NAME_KEY = "apiName"
    private const val PATH_KEY = "path"
    private const val BODY_KEY = "body"
    private const val QUERY_PARAM_KEY = "queryParameters"
    private const val HEADERS_KEY = "headers"

    // tab followed by even number of quotes (will be followed by odd if inside quotes)
    private val TABS_OUTSIDE_QUOTES_PATTERN = Regex("""\t(?=([^"']*["'][^"']*["'])*[^'"]*$)""")

    // ====== Rest API ======
    fun getCancelToken(request: Map<String, Any>): String {
        try {
            return request[CANCEL_TOKEN_KEY] as String
        } catch (cause: Exception) {
            throw AmplifyException(
                "The cancelToken request argument was not passed as a String",
                cause,
                "The request should include the cancelToken as a String"
            )
        }
    }

    private fun getApiName(requestMap: Map<String, Any>?): String? {
        try {
            return requestMap?.get(API_NAME_KEY) as String?
        } catch (cause: Exception) {
            throw AmplifyException(
                "The apiName request argument was not passed as a String",
                cause,
                "The request should include the apiName as a String"
            )
        }
    }

    fun getRestApiName(request: Map<String, Any>): String? {
        val restOptionsMap = request[REST_OPTIONS_KEY]?.asMap<String, Any>()
        return getApiName(restOptionsMap)
    }

    fun getGraphQlApiName(request: Map<String, Any>): String? {
        return getApiName(request)
    }

    fun getRestOptions(request: Map<String, Any>): RestOptions {
        try {
            val builder: RestOptions.Builder = RestOptions.builder()

            val restOptionsMap: Map<String, Any> =
                request[REST_OPTIONS_KEY]?.asMap() ?: emptyMap()

            for ((key, value) in restOptionsMap) {
                when (key) {
                    PATH_KEY -> {
                        builder.addPath(value as String)
                    }
                    BODY_KEY -> {
                        builder.addBody(value as ByteArray)
                    }
                    QUERY_PARAM_KEY -> {
                        builder.addQueryParameters(value.asMap())
                    }
                    HEADERS_KEY -> {
                        builder.addHeaders(value.asMap())
                    }
                }
            }
            return builder.build()
        } catch (cause: Exception) {
            throw AmplifyException(
                "The restOptions request argument was not passed as a dictionary",
                cause,
                "The request should include the restOptions argument as a [String: Any] dictionary"
            )
        }
    }

    @JvmStatic
    fun checkForEmptyBodyIfRequired(options: RestOptions, operationType: RestOperationType) {
        if (operationType.requiresBody() && !options.hasData()) {
            throw ApiException(
                "$operationType request must have a body",
                "Add a body to the request."
            )
        }
    }

    // ====== GraphQL ======
    @JvmStatic
    fun getGraphQLDocument(request: Map<String, Any>): String {
        try {
            val doc = request["document"] as String
            // Remove tabs to avoid MalformedHttpRequestException
            return doc.replace(TABS_OUTSIDE_QUOTES_PATTERN, "")
        } catch (cause: Exception) {
            throw AmplifyException(
                "The graphQL document request argument was not passed as a String",
                cause,
                "The request should include the graphQL document as a String"
            )
        }
    }

    @JvmStatic
    fun getVariables(request: Map<String, Any>): Map<String, Any> {
        try {
            return request["variables"]?.asMap() ?: emptyMap()
        } catch (cause: Exception) {
            throw AmplifyException(
                "The variables request argument was not passed as a dictionary",
                cause,
                "The request should include the variables argument as a [String: Any] dictionary"
            )
        }
    }
}
