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

import android.os.Looper
import com.amazonaws.amplify.exception.ExceptionMessages
import com.amplifyframework.api.ApiException
import com.amplifyframework.api.aws.ApiAuthProviders
import com.amplifyframework.api.aws.AuthorizationType
import com.amplifyframework.api.aws.sigv4.FunctionAuthProvider
import com.amplifyframework.api.aws.sigv4.OidcAuthProvider
import io.flutter.Log
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.CoroutineName
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withTimeout

/**
 * Manages the shared state of all [FlutterAuthProvider] instances.
 */
class FlutterAuthProviders(
    private val authProviders: List<AuthorizationType>
) {
    private companion object {
        /**
         * Timeout on a single [getToken] call.
         */
        const val getTokenTimeoutMillis = 5000L

        /**
         * Logger tag.
         */
        const val tag = "FlutterAuthProviders"

        /**
         * Name for suspending block in [getToken]. Used for debugging
         */
        val coroutineName = CoroutineName(tag)
    }

    /**
     * The method channel used for Android -> Flutter communication. Should be cleared when the API
     * plugin is detached from Flutter and set when it is reattached.
     */
    private var methodChannel: MethodChannel? = null

    /**
     * Configures the method channel for API authorization.
     */
    fun setMethodChannel(methodChannel: MethodChannel?) {
        this.methodChannel = methodChannel
    }

    /**
     * A factory of [FlutterAuthProvider] instances.
     */
    val factory: ApiAuthProviders by lazy {
        val authProviders = this.authProviders.toSet()
        val builder = ApiAuthProviders.Builder()
        if (authProviders.contains(AuthorizationType.AWS_LAMBDA)) {
            builder.functionAuthProvider(FlutterAuthProvider(this, AuthorizationType.AWS_LAMBDA))
        }
        if (authProviders.contains(AuthorizationType.OPENID_CONNECT)) {
            builder.oidcAuthProvider(FlutterAuthProvider(this, AuthorizationType.OPENID_CONNECT))
        }
        builder.build()
    }

    /**
     * Retrieves the token for [authType] or `null`, if unavailable.
     *
     * This function is typically called from within the Amplify library and from a thread besides
     * the main one, where it is safe to block.
     */
    fun getToken(authType: AuthorizationType): String? {
        // Not blocking the main thread is required for making platform channel calls without
        // deadlock.
        if (Thread.currentThread() == Looper.getMainLooper().thread || methodChannel == null) {
            Log.e(tag, ExceptionMessages.createGithubIssueString)
            return null
        }
        try {
            return runBlocking(coroutineName) {
                val completer = Job()

                val result = object : MethodChannel.Result {
                    var token: String? = null

                    override fun success(result: Any?) {
                        token = result as? String
                        launch(Dispatchers.Main) {
                            completer.complete()
                        }
                    }

                    override fun error(
                        errorCode: String,
                        errorMessage: String?,
                        errorDetails: Any?
                    ) {
                        launch(Dispatchers.Main) {
                            completer.complete()
                        }
                    }

                    override fun notImplemented() {
                        launch(Dispatchers.Main) {
                            completer.complete()
                        }
                    }
                }
                launch(Dispatchers.Main) {
                    methodChannel!!.invokeMethod(
                        "getLatestAuthToken",
                        authType.name,
                        result
                    )
                }

                withTimeout(getTokenTimeoutMillis) {
                    completer.join()
                }

                return@runBlocking result.token
            }
        } catch (e: Exception) {
            Log.e(tag, "Exception in getToken", e)
            return null
        }
    }
}

/**
 * A provider which manages token retrieval for its [AuthorizationType].
 */
class FlutterAuthProvider(
    private val provider: FlutterAuthProviders,
    private val type: AuthorizationType
) : FunctionAuthProvider,
    OidcAuthProvider {
    private companion object {
        /**
         * Thrown when there is no token available for [type].
         */
        fun noTokenAvailable(type: AuthorizationType) = ApiException.ApiAuthException(
            "Unable to retrieve token for $type",
            """
                Make sure you register your auth providers in the addPlugin call and
                that getLatestAuthToken returns a value.
            """.trimIndent()
        )
    }

    override fun getLatestAuthToken(): String =
        provider.getToken(type) ?: throw noTokenAvailable(type)
}
