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

package com.amazonaws.amplify.amplify_api.rest_api

import com.amplifyframework.api.rest.RestResponse

data class FlutterSerializedRestResponse(private var raw: RestResponse) {
    private val statusCode: Int = raw.code.hashCode()
    private val headers: Map<String, String>? = raw.headers
    private val data: ByteArray? = raw.data.rawBytes

    fun toValueMap(): Map<String, Any?> {
        return mapOf(
            "statusCode" to statusCode,
            "headers" to headers,
            "data" to data
        )
    }
}
