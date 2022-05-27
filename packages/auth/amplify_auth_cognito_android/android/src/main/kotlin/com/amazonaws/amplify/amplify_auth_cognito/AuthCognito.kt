/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

package com.amazonaws.amplify.amplify_auth_cognito

import com.amplifyframework.core.Amplify
import io.flutter.embedding.engine.plugins.FlutterPlugin

class AuthCognito : FlutterPlugin, NativeAuthPluginBindings.NativeAuthBridge {

    private var nativePlugin: NativeAuthPluginBindings.NativeAuthPlugin? = null

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        nativePlugin = NativeAuthPluginBindings.NativeAuthPlugin(binding.binaryMessenger)
        NativeAuthPluginBindings.NativeAuthBridge.setup(
            binding.binaryMessenger,
            this,
        )
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        nativePlugin = null
        NativeAuthPluginBindings.NativeAuthBridge.setup(
            binding.binaryMessenger,
            null,
        )
    }

    override fun configure(result: NativeAuthPluginBindings.Result<Void>) {
        try {
            Amplify.addPlugin(NativeAuthPlugin { nativePlugin })
            result.success(null)
        } catch (e: Exception) {
            result.error(e)
        }
    }

}
