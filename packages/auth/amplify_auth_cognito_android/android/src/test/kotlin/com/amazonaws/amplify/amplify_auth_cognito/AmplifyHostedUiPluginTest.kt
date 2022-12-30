// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_auth_cognito

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.mockito.ArgumentMatchers.anyString
import org.mockito.kotlin.argumentCaptor
import org.mockito.kotlin.atLeastOnce
import org.mockito.kotlin.doReturn
import org.mockito.kotlin.mock
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
            atLeastOnce()
        ).setMessageHandler(anyString(), handler.capture())

        val codec = NativeAuthPluginBindingsPigeon.NativeAuthBridge.getCodec()
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
            atLeastOnce()
        ).setMessageHandler(anyString(), handler.capture())

        val codec = NativeAuthPluginBindingsPigeon.NativeAuthBridge.getCodec()
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
