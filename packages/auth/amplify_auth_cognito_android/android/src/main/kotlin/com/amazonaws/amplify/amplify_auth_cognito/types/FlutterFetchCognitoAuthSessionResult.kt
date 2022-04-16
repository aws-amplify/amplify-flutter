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

package com.amazonaws.amplify.amplify_auth_cognito.types

import com.amazonaws.auth.AWSCredentials
import com.amplifyframework.auth.cognito.AWSCognitoAuthSession
import com.amplifyframework.auth.cognito.AWSCognitoUserPoolTokens
import com.amplifyframework.auth.result.AuthSessionResult
import com.google.gson.Gson

var gson = Gson()

data class FlutterFetchCognitoAuthSessionResult(private val raw: AWSCognitoAuthSession) {
    private val isSignedIn: Boolean = raw.isSignedIn
    private val identityId: String? = raw.identityId.value as String?
    private val userSub: String? = raw.userSub.value as String?
    private val credentials: AuthSessionResult<AWSCredentials>? = raw.awsCredentials
    private val tokens: AuthSessionResult<AWSCognitoUserPoolTokens>? = raw.userPoolTokens

    fun toValueMap(): Map<String, Any?> {
        var serializedMap = mutableMapOf<String, Any?>(
            "isSignedIn" to this.isSignedIn,
            "identityId" to this.identityId,
            "userSub" to this.userSub
        )

        var credentials = serializeCredentials(this.credentials)
        var tokens = serializeTokens(this.tokens)

        if (credentials != null) {
            serializedMap["credentials"] = credentials
        }

        if (tokens != null) {
            serializedMap["tokens"] = tokens
        }

        return serializedMap
    }

    // parse userpool tokens
    fun serializeTokens(res: AuthSessionResult<AWSCognitoUserPoolTokens>?): Map<String, Any>? {
        var map = res.serializeToMap()
        return if (map != null && map.containsKey("value")) {
            var values = map["value"] as Map<String, Any>
            return if (!values.containsKey("error")) {
                values
            } else {
                null
            }
        } else {
            null
        }
    }

    // parse credentials
    fun serializeCredentials(res: AuthSessionResult<AWSCredentials>?): Map<String, Any>? {
        var map = res.serializeToMap()
        return if (map != null && map.containsKey("value")) {
            var values = map["value"] as Map<String, Any>
            return if (!values.containsKey("error")) {
                values
            } else {
                null
            }
        } else {
            null
        }
    }

    // convert a data class to a map
    fun <T> T.serializeToMap(): Map<String, Any> {
        return convert()
    }

    // convert an object of type I to type O
    inline fun <I, reified O> I.convert(): O {
        val json = gson.toJson(this)
        return gson.fromJson(json, O::class.java)
    }
}
