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
package com.amazonaws.amplify.amplify_api.auth

import com.amplifyframework.api.ApiException
import com.amplifyframework.api.aws.ApiAuthProviders
import com.amplifyframework.api.aws.AuthorizationType
import com.amplifyframework.api.aws.sigv4.FunctionAuthProvider
import com.amplifyframework.api.aws.sigv4.OidcAuthProvider
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.ObsoleteCoroutinesApi
import kotlinx.coroutines.newSingleThreadContext
import kotlinx.coroutines.runBlocking
import kotlin.coroutines.CoroutineContext

/**
 * Interface for managing auth token storage and retrieval.
 */
private interface AuthTokenManager {
    /**
     * Retrieves the token for [authType] or `null`, if unavailable.
     */
    fun getToken(authType: AuthorizationType): String?

    /**
     * Sets the token for [authType] to [value].
     */
    fun setToken(authType: AuthorizationType, value: String?)
}

/**
 * Manages the shared state of all [FlutterAuthProvider] instances.
 */
@ObsoleteCoroutinesApi
class FlutterAuthProviders(context: CoroutineContext? = null) : AuthTokenManager {
    companion object : AuthTokenManager {
        /**
         * A factory of [FlutterAuthProvider] instances.
         */
        val factory: ApiAuthProviders by lazy {
            ApiAuthProviders
                .Builder()
                .functionAuthProvider(FlutterAuthProvider(AuthorizationType.AWS_LAMBDA))
                .oidcAuthProvider(FlutterAuthProvider(AuthorizationType.OPENID_CONNECT))
                .build()
        }

        /**
         * Shared instance.
         */
        private val instance = FlutterAuthProviders()

        override fun getToken(authType: AuthorizationType): String? = instance.getToken(authType)

        override fun setToken(authType: AuthorizationType, value: String?) =
            instance.setToken(authType, value)
    }

    /**
     * Used for synchronizing access to [tokens].
     */
    private val context: CoroutineContext =
        context ?: newSingleThreadContext("FlutterAuthProviders")


    /**
     * Token cache for all [FlutterAuthProvider] instances.
     */
    private var tokens: MutableMap<AuthorizationType, String?> = mutableMapOf()

    override fun getToken(authType: AuthorizationType): String? = runBlocking(context) {
        tokens[authType]
    }

    override fun setToken(authType: AuthorizationType, value: String?) = runBlocking(context) {
        tokens[authType] = value
    }
}

/**
 * A provider which manages token retrieval for its [AuthorizationType].
 */
@ObsoleteCoroutinesApi
class FlutterAuthProvider(private val type: AuthorizationType) : FunctionAuthProvider,
    OidcAuthProvider {
    private companion object {
        /**
         * Thrown when there is no token available for [type].
         */
        fun noTokenAvailable(type: AuthorizationType) = ApiException.ApiAuthException(
            "No $type token available",
            "Ensure that `getLatestAuthToken` returns a value"
        )
    }

    override fun getLatestAuthToken(): String =
        FlutterAuthProviders.getToken(type) ?: throw noTokenAvailable(type)
}