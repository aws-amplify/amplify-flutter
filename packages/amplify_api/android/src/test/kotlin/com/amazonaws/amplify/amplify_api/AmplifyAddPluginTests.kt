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

import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amplifyframework.AmplifyException
import com.amplifyframework.api.ApiCategory
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.plugin.Plugin

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers.any
import org.mockito.Mockito.*
import org.robolectric.RobolectricTestRunner
import java.lang.reflect.Field
import java.lang.reflect.Modifier

@RunWith(RobolectricTestRunner::class)
class AmplifyAddPluginTests {
    lateinit var flutterPlugin: AmplifyApiPlugin
    private var mockApi = mock(ApiCategory::class.java)

    @Before
    fun setup() {
        flutterPlugin = AmplifyApiPlugin()
        setFinalStatic(Amplify::class.java.getDeclaredField("API"), mockApi)
    }

    @Test
    fun test_addPlugin_returnsSuccess() {
        val call = MethodCall("addPlugin", null)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        flutterPlugin.onMethodCall(call, mockResult)
        verify(mockResult).success(null)
    }

    @Test
    fun test_addPlugin_throwsException() {
        mockStatic(Amplify::class.java).use { mockedAmplify ->
            mockedAmplify.`when`<Any> {Amplify.addPlugin( any<Plugin<*>>())}.thenThrow(
                    AmplifyException("Test Exception", "Test")
            )

            val call = MethodCall("addPlugin", null)
            var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
            flutterPlugin.onMethodCall(call, mockResult)
            verify(mockResult).error(
                    "APIException",
                    ExceptionMessages.defaultFallbackExceptionMessage,
                    mapOf(
                            "recoverySuggestion" to "Test",
                            "message" to "Test Exception"
                    )
            )
        }
    }

    private fun setFinalStatic(field: Field, newValue: Any?) {
        field.isAccessible = true
        val modifiersField: Field = Field::class.java.getDeclaredField("modifiers")
        modifiersField.isAccessible = true
        modifiersField.setInt(field, field.modifiers and Modifier.FINAL.inv())
        field.set(null, newValue)
    }
}