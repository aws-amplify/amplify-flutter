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

import com.amazonaws.amplify.amplify_api.AmplifyApiPlugin
import com.amplifyframework.api.ApiException
import com.amplifyframework.api.aws.ApiAuthProviders
import com.amplifyframework.api.aws.AuthorizationType
import com.amplifyframework.api.aws.sigv4.FunctionAuthProvider
import com.amplifyframework.api.aws.sigv4.OidcAuthProvider
import io.flutter.Log
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.*

/**
 * Manages the shared state of all [FlutterAuthProvider] instances.
 */
@ObsoleteCoroutinesApi
object FlutterAuthProviders {

    /**
     * Thread to run token retrieval operations so to not block calling thread or main thread.
     */
    private val coroutineContext = newSingleThreadContext("FlutterAuthProviders")

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
     * Retrieves the token for [authType] or `null`, if unavailable.
     *
     * This requires a dance of threads to be able to not block the main thread. This function
     * is called from within the Amplify library and from a thread besides the main one. In order
     * to not block the calling thread or the main one, we create a private thread ([coroutineContext])
     * which we can safely block on and wait for method channel calls to complete.
     *
     * This also allows the Flutter app to make method channel calls of its own, in response to our
     * method channel invocation, without deadlock.
     */
    fun getToken(authType: AuthorizationType): String? {
        try {
            return runBlocking(coroutineContext) {
                val job = Job()
                val completer = object : MethodChannel.Result {
                    var token: String? = null

                    override fun success(result: Any?) {
                        token = result as? String
                        launch(Dispatchers.Main) {
                             job.complete()
                        }
                    }

                    override fun error(errorCode: String?, errorMessage: String?, errorDetails: Any?) {
                        launch(Dispatchers.Main) {
                            job.complete()
                        }
                    }

                    override fun notImplemented() {
                        launch(Dispatchers.Main) {
                            job.complete()
                        }
                    }
                }
                launch(Dispatchers.Main) {
                    AmplifyApiPlugin.channel.invokeMethod(
                        "getLatestAuthToken",
                        authType.name,
                        completer
                    )
                }

                job.join()
                return@runBlocking completer.token
            }
        } catch (e: Exception) {
            return null
        }
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
            "Unable to retrieve token for $type",
            """
                Make sure you register your auth providers in the addPlugin call and
                that getLatestAuthToken returns a value.
            """.trimIndent()
        )
    }

    override fun getLatestAuthToken(): String =
        FlutterAuthProviders.getToken(type) ?: throw noTokenAvailable(type)
}