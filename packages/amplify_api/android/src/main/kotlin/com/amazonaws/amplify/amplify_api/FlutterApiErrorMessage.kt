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

enum class FlutterApiErrorMessage {
    AMPLIFY_REQUEST_MALFORMED,
    ERROR_CASTING_INPUT_IN_PLATFORM_CODE,

    AMPLIFY_API_QUERY_FAILED,
    AMPLIFY_API_MUTATE_FAILED,

    AMPLIFY_API_GET_FAILED,
    AMPLIFY_API_POST_FAILED,
    AMPLIFY_API_PUT_FAILED,
    AMPLIFY_API_DELETE_FAILED,
    AMPLIFY_API_HEAD_FAILED,
    AMPLIFY_API_PATCH_FAILED;

    companion object {
        fun getErrorForApi(methodName: String): String {
            return when (methodName) {
                "get" -> AMPLIFY_API_GET_FAILED.toString()
                "post" -> AMPLIFY_API_POST_FAILED.toString()
                "put" -> AMPLIFY_API_PUT_FAILED.toString()
                "delete" -> AMPLIFY_API_DELETE_FAILED.toString()
                "head" -> AMPLIFY_API_HEAD_FAILED.toString()
                "patch" -> AMPLIFY_API_PATCH_FAILED.toString()
                else -> AMPLIFY_REQUEST_MALFORMED.toString()
            }
        }
    }
}