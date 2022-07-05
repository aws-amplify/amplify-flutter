/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.amazonaws.amplify.amplify_auth_cognito

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.mockito.ArgumentMatchers.anyString
import org.mockito.kotlin.argumentCaptor
import org.mockito.kotlin.doReturn
import org.mockito.kotlin.mock
import org.mockito.kotlin.times
import org.mockito.kotlin.verify

internal class AmplifyHostedUiPluginTest {

    @Test
    fun convertsCancelledException() {
        val mockPlugin = object : AuthCognito() {
            override fun launchUrl(url: String, browserPackageName: String?) {
                throw HostedUiException.CANCELLED()
            }
        }
        val binaryMessenger = mock<BinaryMessenger>()
        val mockPluginBinding = mock<FlutterPlugin.FlutterPluginBinding> {
            on { getBinaryMessenger() } doReturn binaryMessenger
        }
        mockPlugin.onAttachedToEngine(mockPluginBinding)

        val handler = argumentCaptor<BinaryMessenger.BinaryMessageHandler>()
        verify(
            binaryMessenger,
            times(4)
        ).setMessageHandler(anyString(), handler.capture())

        val codec = NativeAuthPluginBindings.NativeAuthBridge.getCodec()
        val args = listOf("url", "callbackUrlScheme", true, null)
        val message = codec.encodeMessage(args)
        message?.rewind()
        var messageCount = 0
        handler.firstValue.onMessage(message) { bytes ->
            // First call is to addPlugin
            if (messageCount++ < 1) {
                return@onMessage
            }
            bytes?.rewind()
            val response = codec.decodeMessage(bytes) as Map<*, *>
            assertTrue(response.containsKey("error"))
            val error = response["error"] as Map<*, *>
            assertEquals("CANCELLED", error["code"])
        }
    }

    @Test
    fun convertsUnknownException() {
        val aMessage = "a message"
        val mockPlugin = object : AuthCognito() {
            override fun launchUrl(url: String, browserPackageName: String?) {
                throw HostedUiException.UNKNOWN(aMessage)
            }
        }
        val binaryMessenger = mock<BinaryMessenger>()
        val mockPluginBinding = mock<FlutterPlugin.FlutterPluginBinding> {
            on { getBinaryMessenger() } doReturn binaryMessenger
        }
        mockPlugin.onAttachedToEngine(mockPluginBinding)

        val handler = argumentCaptor<BinaryMessenger.BinaryMessageHandler>()
        verify(
            binaryMessenger,
            times(4)
        ).setMessageHandler(anyString(), handler.capture())

        val codec = NativeAuthPluginBindings.NativeAuthBridge.getCodec()
        val args = listOf("url", "callbackUrlScheme", true, null)
        val message = codec.encodeMessage(args)
        message?.rewind()
        var messageCount = 0
        handler.firstValue.onMessage(message) { bytes ->
            // First call is to addPlugin
            if (messageCount++ < 1) {
                return@onMessage
            }
            bytes?.rewind()
            val response = codec.decodeMessage(bytes) as Map<*, *>
            assertTrue(response.containsKey("error"))

            val error = response["error"] as Map<*, *>
            assertTrue(error.containsKey("code"))
            assertEquals("UNKNOWN", error["code"])
            assertTrue(error.containsKey("message"))
            assertTrue((error["message"] as String).contains(aMessage))
        }
    }

}
