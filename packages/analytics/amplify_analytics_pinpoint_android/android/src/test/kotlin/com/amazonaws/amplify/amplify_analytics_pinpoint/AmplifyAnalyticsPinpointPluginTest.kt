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

package com.amazonaws.amplify.amplify_analytics_pinpoint

import com.amplifyframework.analytics.AnalyticsCategory
import com.amplifyframework.core.Amplify
import com.amplifyframework.logging.Logger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers.any
import org.mockito.ArgumentMatchers.anyString
import org.mockito.Mockito.doNothing
import org.mockito.Mockito.mock
import org.mockito.Mockito.verify
import org.robolectric.RobolectricTestRunner
import java.lang.reflect.Field
import java.lang.reflect.Modifier

@RunWith(RobolectricTestRunner::class)
class AmplifyAnalyticsPinpointPluginTest {

    private lateinit var plugin: AnalyticsPinpoint

    private var mockAnalytics = mock(AnalyticsCategory::class.java)

    @Before
    fun setup() {
        plugin = AnalyticsPinpoint()
        val mockLog = mock(Logger::class.java)

        doNothing().`when`(mockLog).error(anyString(), any())

        setFinalStatic(Amplify::class.java.getDeclaredField("Analytics"), mockAnalytics)
    }

    @Test
    fun recordEvent_returnsSuccess() {

        val arguments: HashMap<*, *> = hashMapOf(
            "name" to "amplify-event"
        )
        val call = MethodCall("recordEvent", arguments)
        val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        // FIXME: this seems to fail because of another issue
        verify(mockResult).success(true)
    }

    @Test
    fun recordEvent_withProperties_returnsSuccess() {

        val propertiesMap = hashMapOf(
            "AnalyticsStringProperty" to "Pancakes",
            "AnalyticsBooleanProperty" to true,
            "AnalyticsDoubleProperty" to 3.14,
            "AnalyticsIntegerProperty" to 42
        )
        val propertiesTypesMap = hashMapOf(
            "AnalyticsStringProperty" to "STRING",
            "AnalyticsBooleanProperty" to "BOOL",
            "AnalyticsDoubleProperty" to "DOUBLE",
            "AnalyticsIntegerProperty" to "INT"
        )

        val arguments: HashMap<*, *> = hashMapOf(
            "name" to "amplify-event",
            "propertiesMap" to propertiesMap,
            "propertiesTypesMap" to propertiesTypesMap
        )

        val call = MethodCall("recordEvent", arguments)

        val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    @Test
    fun flushEvents_returnsSuccess() {

        val call = MethodCall("flushEvents", null)
        val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    @Test
    fun registerGlobalProperties_withProperties_returnsSuccess() {
        val propertiesMap = hashMapOf(
            "AnalyticsStringProperty" to "Pancakes",
            "AnalyticsBooleanProperty" to true,
            "AnalyticsDoubleProperty" to 3.14,
            "AnalyticsIntegerProperty" to 42
        )
        val propertiesTypesMap = hashMapOf<String, Any>(
            "AnalyticsStringProperty" to "STRING",
            "AnalyticsBooleanProperty" to "BOOL",
            "AnalyticsDoubleProperty" to "DOUBLE",
            "AnalyticsIntegerProperty" to "INT"
        )

        val arguments: HashMap<*, *> = hashMapOf(
            "propertiesMap" to propertiesMap,
            "propertiesTypesMap" to propertiesTypesMap
        )

        val call = MethodCall("registerGlobalProperties", arguments)
        val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    @Test
    fun identifyUser_withProperties_returnsSuccess() {
        val locationMap = hashMapOf(
            "latitude" to 47.6154086,
            "longitude" to -122.3349685,
            "postalCode" to "98122",
            "city" to "Seattle",
            "region" to "WA",
            "country" to "USA"
        )

        val customPropertiesMap = hashMapOf(
            "TestStringProperty" to "TestStringValue",
            "TestDoubleProperty" to 1.0
        )
        val customPropertiesTypesMap = hashMapOf<String, Any>(
            "TestStringProperty" to "STRING",
            "TestDoubleProperty" to "DOUBLE"
        )

        val userProfileMap = hashMapOf<String, Any>(
            "name" to "test-user",
            "email" to "user@test.com",
            "plan" to "test-plan",
            "location" to locationMap,
            "propertiesMap" to customPropertiesMap,
            "propertiesTypesMap" to customPropertiesTypesMap
        )

        val userMap = hashMapOf<String, Any>(
            "userId" to "userId",
            "userProfileMap" to userProfileMap
        )

        val call = MethodCall("identifyUser", userMap)
        val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    @Test
    fun identifyUser_withNoLocation_returnsSuccess() {
        val userProfileMap = hashMapOf<String, Any>(
            "name" to "test-user",
            "email" to "user@test.com",
            "plan" to "test-plan"
        )

        val userMap = hashMapOf<String, Any>(
            "userId" to "userId",
            "userProfileMap" to userProfileMap
        )

        val call = MethodCall("identifyUser", userMap)
        val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    private fun setFinalStatic(field: Field, newValue: Any?) {
        field.isAccessible = true
        val modifiersField: Field = Field::class.java.getDeclaredField("modifiers")
        modifiersField.isAccessible = true
        modifiersField.setInt(field, field.modifiers and Modifier.FINAL.inv())
        field.set(null, newValue)
    }
}
