// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore

import com.amazonaws.amplify.amplify_datastore.pigeons.NativeAuthPlugin
import com.amazonaws.amplify.amplify_datastore.pigeons.NativeAuthSession
import com.amplifyframework.auth.AuthException
import com.amplifyframework.auth.AuthSession
import com.amplifyframework.core.Consumer
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mockito.any
import org.mockito.Mockito.doAnswer
import org.mockito.Mockito.mock
import org.mockito.junit.MockitoJUnitRunner
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

@ExperimentalCoroutinesApi
@RunWith(MockitoJUnitRunner::class)
class NativeAuthPluginWrapperTest {

    @get:Rule
    var coroutinesTestRule = CoroutineTestRule()

    @Test
    fun fetchAuthSession_callsOnError_whenNativePluginIsNull() {
        val wrapper = NativeAuthPluginWrapper { null }

        val latch = CountDownLatch(1)
        var capturedError: AuthException? = null

        wrapper.fetchAuthSession(
            Consumer { _ -> },
            Consumer { error ->
                capturedError = error
                latch.countDown()
            }
        )

        assertTrue("onError should be called", latch.await(2, TimeUnit.SECONDS))
        assertNotNull("Error should not be null", capturedError)
        assertTrue(
            "Error message should indicate no native plugin",
            capturedError!!.message!!.contains("No native plugin registered")
        )
    }

    @Test
    fun fetchAuthSession_callsOnError_whenPigeonBridgeFails() = runTest(coroutinesTestRule.testDispatcher) {
        val mockNativePlugin = mock(NativeAuthPlugin::class.java)

        // Simulate pigeon bridge failure (e.g., Flutter engine not responsive)
        doAnswer { invocation ->
            @Suppress("UNCHECKED_CAST")
            val callback = invocation.arguments[0] as (Result<NativeAuthSession>) -> Unit
            callback(Result.failure(RuntimeException("Connection error")))
            null
        }.`when`(mockNativePlugin).fetchAuthSession(any())

        val wrapper = NativeAuthPluginWrapper { mockNativePlugin }

        var capturedError: AuthException? = null
        var capturedSuccess: AuthSession? = null

        wrapper.fetchAuthSession(
            Consumer { session -> capturedSuccess = session },
            Consumer { error -> capturedError = error }
        )

        advanceUntilIdle()

        assertNotNull("onError should be called when pigeon bridge fails", capturedError)
        assertTrue(
            "Error message should contain original error",
            capturedError!!.message!!.contains("Connection error")
        )
        assertTrue("onSuccess should not be called", capturedSuccess == null)
    }

    @Test
    fun fetchAuthSession_callsOnSuccess_whenSessionIsValid() = runTest(coroutinesTestRule.testDispatcher) {
        val mockNativePlugin = mock(NativeAuthPlugin::class.java)

        val mockSession = NativeAuthSession(
            isSignedIn = false,
            userSub = null,
            identityId = null,
            userPoolTokens = null,
            awsCredentials = null,
        )

        doAnswer { invocation ->
            @Suppress("UNCHECKED_CAST")
            val callback = invocation.arguments[0] as (Result<NativeAuthSession>) -> Unit
            callback(Result.success(mockSession))
            null
        }.`when`(mockNativePlugin).fetchAuthSession(any())

        val wrapper = NativeAuthPluginWrapper { mockNativePlugin }

        var capturedError: AuthException? = null
        var capturedSuccess: AuthSession? = null

        wrapper.fetchAuthSession(
            Consumer { session -> capturedSuccess = session },
            Consumer { error -> capturedError = error }
        )

        advanceUntilIdle()

        assertNotNull("onSuccess should be called when session is valid", capturedSuccess)
        assertTrue("onError should not be called", capturedError == null)
    }
}
