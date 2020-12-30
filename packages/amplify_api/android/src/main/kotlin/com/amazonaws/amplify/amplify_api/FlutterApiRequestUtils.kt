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
import io.flutter.plugin.common.MethodChannel


class FlutterApiRequestUtils {
    companion object {

        fun isValidArgumentsMap(flutterResult: MethodChannel.Result, args: Any): Boolean {

            try {
                var arguments = args as Map<String, Any>
                var restOptions = arguments["restOptions"] as Map<String, Any>
                var cancelToken = arguments["cancelToken"] as String
            } catch (e: ClassCastException) {
                FlutterApiErrorUtils.createFlutterError(
                        flutterResult,
                        FlutterApiErrorMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
                        e
                )
                return false;
            } catch (e: Exception) {
                FlutterApiErrorUtils.createFlutterError(
                        flutterResult,
                        FlutterApiErrorMessage.AMPLIFY_REQUEST_MALFORMED.toString(),
                        e
                )
                return false;
            }

            return true;
        }


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
    }
}