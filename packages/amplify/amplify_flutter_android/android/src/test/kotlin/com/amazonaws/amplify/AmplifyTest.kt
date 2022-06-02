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

package com.amazonaws.amplify

import android.content.Context
import android.os.Looper.getMainLooper
import com.amazonaws.amplify.exception.ExceptionMessages
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.TestCoroutineDispatcher
import kotlinx.coroutines.test.runBlockingTest
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mockito.mock
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.mockito.Mockito.`when`
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf

@ExperimentalCoroutinesApi
@RunWith(RobolectricTestRunner::class)
class AmplifyTest {

    lateinit var plugin: Amplify

    private val context: Context = mock(Context::class.java)
    private var flutterPluginBinding: FlutterPlugin.FlutterPluginBinding =
        mock(FlutterPlugin.FlutterPluginBinding::class.java)

    private val testDispatcher = TestCoroutineDispatcher()

    @Before
    fun setup() {
        plugin = Amplify(testDispatcher)
        `when`(flutterPluginBinding.applicationContext).thenReturn(context)
        `when`(flutterPluginBinding.binaryMessenger).thenReturn(mock(BinaryMessenger::class.java))
        plugin.onAttachedToEngine(flutterPluginBinding)
    }

    @Test
    fun configure_throwExceptionOnSecondCall() = runBlockingTest {
        // Setup
        val arguments: HashMap<String, Any> = hashMapOf(
            "version" to "1",
            "configuration" to "{\"testKey\": \"test value\"}"
        )
        val call = MethodCall("configure", arguments)

        // Act
        val mockFirstCallResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockFirstCallResult)
        shadowOf(getMainLooper()).idle()

        // Assert that first configure is successful
        verify(mockFirstCallResult, times(1)).success(true)

        // Act again
        val mockSecondCallResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockSecondCallResult)
        shadowOf(getMainLooper()).idle()

        // Assert that second configure returns error
        verify(mockSecondCallResult, times(1)).error(
            "AmplifyAlreadyConfiguredException",
            ExceptionMessages.defaultFallbackExceptionMessage,
            mapOf(
                "message" to "Amplify has already been configured.",
                "recoverySuggestion" to "Remove the duplicate call to `Amplify.configure()`."
            )
        )
    }
}
