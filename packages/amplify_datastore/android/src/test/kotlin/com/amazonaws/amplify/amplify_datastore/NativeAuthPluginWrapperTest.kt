// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore

import com.amazonaws.amplify.amplify_datastore.pigeons.NativeAuthPlugin
import com.amazonaws.amplify.amplify_datastore.pigeons.NativeAuthSession
import com.amplifyframework.auth.AuthException
import com.amplifyframework.auth.AuthSession
import com.amplifyframework.core.Consumer
import io.flutter.plugin.common.BinaryMessenger
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mockito.mock
import org.mockito.junit.MockitoJUnitRunner

@ExperimentalCoroutinesApi
@RunWith(MockitoJUnitRunner::class)
class NativeAuthPluginWrapperTest {

    @get:Rule
    var coroutinesTestRule = CoroutineTestRule()

    @Test
    fun fetchAuthSession_callsOnError_whenNativePluginIsNull() {
        val wrapper = NativeAuthPluginWrapper { null }

        var capturedError: AuthException? = null
        var capturedSuccess: AuthSession? = null

        wrapper.fetchAuthSession(
            Consumer { session -> capturedSuccess = session },
            Consumer { error -> capturedError = error }
        )

        assertNotNull("onError should be called when native plugin is null", capturedError)
        assertNull("onSuccess should not be called", capturedSuccess)
        assertTrue(
            "Error message should indicate no native plugin",
            capturedError!!.message!!.contains("No native plugin registered")
        )
    }

    @Test
    fun fetchAuthSession_callsOnError_whenPigeonBridgeFails() = runTest(coroutinesTestRule.testDispatcher) {
        // Create a mock BinaryMessenger that simulates a connection error
        // by returning null (not a List), which causes the pigeon-generated code
        // to invoke callback with Result.failure(createConnectionError(...))
        val mockMessenger = mock(BinaryMessenger::class.java)
        org.mockito.Mockito.doAnswer { invocation ->
            // The second argument is the BinaryMessenger.BinaryReply callback
            val reply = invocation.arguments[2] as BinaryMessenger.BinaryReply
            // Return null to simulate connection error (not a List<*>)
            reply.reply(null)
            null
        }.`when`(mockMessenger).send(
            org.mockito.Mockito.anyString(),
            org.mockito.Mockito.any(),
            org.mockito.Mockito.any()
        )

        val nativePlugin = NativeAuthPlugin(mockMessenger)
        val wrapper = NativeAuthPluginWrapper { nativePlugin }

        var capturedError: AuthException? = null
        var capturedSuccess: AuthSession? = null

        wrapper.fetchAuthSession(
            Consumer { session -> capturedSuccess = session },
            Consumer { error -> capturedError = error }
        )

        advanceUntilIdle()

        assertNotNull("onError should be called when pigeon bridge fails", capturedError)
        assertNull("onSuccess should not be called", capturedSuccess)
    }
}
