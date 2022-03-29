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
package com.amazonaws.amplify.amplify_auth_cognito.device

import com.amazonaws.amplify.amplify_auth_cognito.AuthErrorHandler
import com.amazonaws.mobile.client.AWSMobileClient
import com.amazonaws.mobile.client.Callback
import com.amazonaws.mobile.client.results.ListDevicesResult
import com.amplifyframework.auth.AuthDevice
import com.amplifyframework.auth.cognito.util.CognitoAuthExceptionConverter
import com.amplifyframework.core.Amplify
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.CoroutineName
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.plus

/**
 * Handles method calls for the Devices API.
 */
class DeviceHandler(private val errorHandler: AuthErrorHandler) :
    MethodChannel.MethodCallHandler {
    companion object {
        /**
         * Methods this handler supports.
         */
        private val methods = listOf("rememberDevice", "forgetDevice", "fetchDevices")

        /**
         * Whether this class can handle [method].
         */
        fun canHandle(method: String): Boolean = methods.contains(method)
    }

    /**
     * Scope for running asynchronous tasks.
     */
    private val scope = CoroutineScope(Dispatchers.IO) + CoroutineName("DeviceHandler")

    @Suppress("UNCHECKED_CAST")
    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "fetchDevices" -> fetchDevices(result)
            "rememberDevice" -> rememberDevice(result)
            "forgetDevice" -> {
                val deviceJson =
                    (call.arguments as? Map<*, *> ?: emptyMap<String, Any?>()) as Map<String, Any?>
                var device: AuthDevice? = null
                if (deviceJson.isNotEmpty()) {
                    val id by deviceJson
                    device = AuthDevice.fromId(id as String)
                }
                forgetDevice(result, device)
            }
        }
    }

    private fun fetchDevices(result: MethodChannel.Result) {
        try {
            val cognitoAuthPlugin = Amplify.Auth.getPlugin("awsCognitoAuthPlugin")
            val awsMobileClient = cognitoAuthPlugin.escapeHatch as AWSMobileClient
            scope.launch {
                awsMobileClient.deviceOperations.list(object : Callback<ListDevicesResult> {
                    override fun onResult(listDevicesResult: ListDevicesResult) {
                        result.success(listDevicesResult.devices.map { it.toJson() })
                    }

                    override fun onError(exception: java.lang.Exception) {
                        errorHandler.handleAuthError(
                            result,
                            CognitoAuthExceptionConverter.lookup(
                                exception, "Fetching devices failed."
                            )
                        )
                    }
                })
            }
        } catch (e: Exception) {
            errorHandler.handleAuthError(result, e)
        }
    }

    private fun rememberDevice(result: MethodChannel.Result) {
        scope.launch {
            Amplify.Auth.rememberDevice(
                { result.success(null) },
                { errorHandler.handleAuthError(result, it) }
            )
        }
    }

    private fun forgetDevice(result: MethodChannel.Result, device: AuthDevice? = null) {
        scope.launch {
            if (device != null) {
                Amplify.Auth.forgetDevice(
                    device,
                    { result.success(null) },
                    { errorHandler.handleAuthError(result, it) }
                )
            } else {
                Amplify.Auth.forgetDevice(
                    { result.success(null) },
                    { errorHandler.handleAuthError(result, it) }
                )
            }
        }
    }
}
