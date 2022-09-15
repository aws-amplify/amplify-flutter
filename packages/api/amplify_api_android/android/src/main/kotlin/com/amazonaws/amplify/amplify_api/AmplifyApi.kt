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

import androidx.annotation.NonNull
import com.amazonaws.amplify.amplify_api.auth.FlutterAuthProviders
import com.amplifyframework.api.aws.AWSApiPlugin
import com.amplifyframework.api.aws.AuthorizationType
import com.amplifyframework.core.Amplify
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodChannel

/** AmplifyApiPlugin */
class AmplifyApi : FlutterPlugin, NativeApiPluginBindings.NativeApiBridge {

    private companion object {
        /**
         * API authorization providers configured during the `addPlugin` call.
         *
         * The auth providers require a reference to the active method channel to be able to
         * communicate back to Dart code. If the app is moved to the background and resumed,
         * the `Amplify.addPlugin` call does not re-configure auth providers, so these must
         * be instantiated only once but still maintain a reference to the active method channel.
         */
        var flutterAuthProviders: FlutterAuthProviders? = null
    }


    /**
     * The plugin used to communicate with Dart.
     */
    private var nativePlugin: NativeApiPluginBindings.NativeApiPlugin? = null

    private val logger = Amplify.Logging.forNamespace("amplify:flutter:api")

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {

        nativePlugin = NativeApiPluginBindings.NativeApiPlugin(flutterPluginBinding.binaryMessenger)
        NativeApiPluginBindings.NativeApiBridge.setup(
            flutterPluginBinding.binaryMessenger,
            this,
        )
    }

    override fun onDetachedFromEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        nativePlugin = null
        NativeApiPluginBindings.NativeApiBridge.setup(
            flutterPluginBinding.binaryMessenger,
            null,
        )
    }

    override fun addPlugin(
        authProvidersList: MutableList<String>,
        result: NativeApiPluginBindings.Result<Void>
    ) {
        try {
            val authProviders = authProvidersList.map { AuthorizationType.valueOf(it) }
            if (flutterAuthProviders == null) {
                flutterAuthProviders = FlutterAuthProviders(authProviders, nativePlugin!!)
            }
            Amplify.addPlugin(
                AWSApiPlugin
                    .builder()
                    .apiAuthProviders(flutterAuthProviders!!.factory)
                    .build()
            )
            logger.info("Added API plugin")
            result.success(null)
        } catch (e: Exception) {
            logger.error(e.message)
            result.error(e)
        }
    }
<<<<<<< HEAD
=======

    override fun onDetachedFromEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        flutterAuthProviders?.setMethodChannel(null)
        channel?.setMethodCallHandler(null)
        channel = null
        eventchannel?.setStreamHandler(null)
        eventchannel = null
        graphqlSubscriptionStreamHandler?.close()
        graphqlSubscriptionStreamHandler = null

        NativeApiPluginBindings.NativeApiBridge.setup(
            flutterPluginBinding.binaryMessenger,
            null,
        )
    }

    override fun addPlugin(
        authProvidersList: MutableList<String>,
        result: NativeApiPluginBindings.Result<Void>
    ) {
        try {
            val authProviders = authProvidersList.map { AuthorizationType.valueOf(it) }
            if (flutterAuthProviders == null) {
                flutterAuthProviders = FlutterAuthProviders(authProviders)
            }
            flutterAuthProviders!!.setMethodChannel(channel)
            Amplify.addPlugin(
                AWSApiPlugin
                    .builder()
                    .apiAuthProviders(flutterAuthProviders!!.factory)
                    .build()
            )
            logger.info("Added API plugin")
            result.success(null)
        } catch (e: Exception) {
            logger.error(e.message)
            result.error(e)
        }
    }
>>>>>>> feat/api-next
}
