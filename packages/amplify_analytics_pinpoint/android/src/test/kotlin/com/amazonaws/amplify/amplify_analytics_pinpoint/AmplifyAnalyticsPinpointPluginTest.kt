package com.amazonaws.amplify.amplify_analytics_pinpoint

import com.amplifyframework.analytics.*
import com.amplifyframework.core.Amplify
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.junit.Before
import org.junit.Test
import org.mockito.ArgumentMatchers.any
import org.mockito.ArgumentMatchers.anyString
import org.mockito.Mockito.*


class AmplifyAnalyticsPinpointPluginTest {

    private lateinit var plugin: AmplifyAnalyticsPinpointPlugin
    private lateinit var mockAnalyticsPlugin: AnalyticsPlugin<Any>

    @Before
    fun setup() {
        plugin = AmplifyAnalyticsPinpointPlugin()
        mockAnalyticsPlugin = mock(AnalyticsPlugin::class.java) as AnalyticsPlugin<Any>
        doReturn("awsPinpointAnalyticsPlugin").`when`(mockAnalyticsPlugin).pluginKey
        Amplify.Analytics.addPlugin(mockAnalyticsPlugin)
    }

    @Test
    fun createEvent_hasAllProperties() {

        val propertiesMap = hashMapOf<String, Any>(
                "AnalyticsStringProperty" to "Pancakes",
                "AnalyticsBooleanProperty" to true,
                "AnalyticsDoubleProperty" to 3.14,
                "AnalyticsIntegerProperty" to 42
        )

        val analyticsEvent = AmplifyAnalyticsBuilder.createAnalyticsEvent("amplify-event", propertiesMap);

        assert(analyticsEvent.name == "amplify-event")

        val analyticsProperties = analyticsEvent.properties;
        assert(analyticsProperties.get("AnalyticsStringProperty").value == "Pancakes")
        assert(analyticsProperties.get("AnalyticsBooleanProperty").value == true)
        assert(analyticsProperties.get("AnalyticsDoubleProperty").value == 3.14)
        assert(analyticsProperties.get("AnalyticsIntegerProperty").value == 42)
    }

    @Test
    fun createUser_hasAllProperties() {

        val locationMap = hashMapOf<String, Any>(
                "latitude" to 47.6154086,
                "longitude" to -122.3349685,
                "postalCode" to "98122",
                "city" to "Seattle",
                "region" to "WA",
                "country" to "USA"
        )

        val customPropertiesMap = hashMapOf<String, Any>(
                "TestStringProperty" to "TestStringValue",
                "TestDoubleProperty" to 1.0
        )

        val userProfileMap = hashMapOf<String, Any>(
                "name" to "test-user",
                "email" to "user@test.com",
                "plan" to "test-plan",
                "location" to locationMap,
                "properties" to customPropertiesMap
        )

        val user = AmplifyAnalyticsBuilder.createUserProfile(userProfileMap)

        assert(user.name == "test-user")
        assert(user.email == "user@test.com")
        assert(user.plan == "test-plan")

        val location = user.location!!

        assert(location.latitude == 47.6154086)
        assert(location.longitude == -122.3349685)
        assert(location.postalCode == "98122")
        assert(location.city == "Seattle")
        assert(location.region == "WA")
        assert(location.country == "USA")

        val customProperties = user.customProperties!!

        assert(customProperties.get("TestStringProperty").value == "TestStringValue")
        assert(customProperties.get("TestDoubleProperty").value == 1.0)
    }

    @Test
    fun recordEvent_returnsSuccess() {

        val arguments: HashMap<*, *> = hashMapOf(
                "name" to "amplify-event"
        )
        val call = MethodCall("recordEvent", arguments)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        // FIXME: this seems to fail because of another issue
        verify(mockResult).success(true)
    }

    @Test
    fun recordEvent_withProperties_returnsSuccess() {
        doNothing().`when`(mockAnalyticsPlugin).recordEvent(any(AnalyticsEvent::class.java))
        val propertiesMap = hashMapOf<String, Any>(
                "AnalyticsStringProperty" to "Pancakes",
                "AnalyticsBooleanProperty" to true,
                "AnalyticsDoubleProperty" to 3.14,
                "AnalyticsIntegerProperty" to 42
        )
        val arguments: HashMap<*, *> = hashMapOf(
                "name" to "amplify-event",
                "propertiesMap" to propertiesMap
        )

        val call = MethodCall("recordEvent", arguments)

        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    @Test
    fun recordEvent_withWrongPropertyType_returnsFailure() {
        doNothing().`when`(mockAnalyticsPlugin).recordEvent(any(AnalyticsEvent::class.java))
        val propertiesMap = hashMapOf<String, Any>(
                "WrongProperty" to listOf("a", "b", "c")
        )
        val arguments: HashMap<*, *> = hashMapOf(
                "name" to "amplify-event",
                "propertiesMap" to propertiesMap
        )
        val call = MethodCall("recordEvent", arguments)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).error("AmplifyException", "Error", "Warning unrecognized object type sent via MethodChannel-AnalyticsProperties")
    }

    @Test
    fun flushEvents_returnsSuccess() {
        doNothing().`when`(mockAnalyticsPlugin).flushEvents()
        val call = MethodCall("flushEvents", null)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    @Test
    fun registerGlobalProperties_withProperties_returnsSuccess() {
        doNothing().`when`(mockAnalyticsPlugin).registerGlobalProperties(
                any(AnalyticsProperties::class.java))
        val propertiesMap = hashMapOf<String, Any>(
                "AnalyticsStringProperty" to "Pancakes",
                "AnalyticsBooleanProperty" to true,
                "AnalyticsDoubleProperty" to 3.14,
                "AnalyticsIntegerProperty" to 42
        )

        val call = MethodCall("registerGlobalProperties", propertiesMap)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    @Test
    fun registerGlobalProperties_withWrongPropertyType_returnsFailure() {
        doNothing().`when`(mockAnalyticsPlugin).registerGlobalProperties(
                any(AnalyticsProperties::class.java))
        val propertiesMap = hashMapOf<String, Any>(
                "WrongProperty" to listOf("a", "b", "c")
        )

        val call = MethodCall("registerGlobalProperties", propertiesMap)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).error("AmplifyException", "Error", "Warning unrecognized object type sent via MethodChannel-AnalyticsProperties")
    }

    @Test
    fun identifyUser_withProperties_returnsSuccess() {
        doNothing().`when`(mockAnalyticsPlugin).identifyUser(
                anyString(),
                any(UserProfile::class.java))
        val locationMap = hashMapOf<String, Any>(
                "latitude" to 47.6154086,
                "longitude" to -122.3349685,
                "postalCode" to "98122",
                "city" to "Seattle",
                "region" to "WA",
                "country" to "USA"
        )

        val customPropertiesMap = hashMapOf<String, Any>(
                "TestStringProperty" to "TestStringValue",
                "TestDoubleProperty" to 1.0
        )

        val userProfileMap = hashMapOf<String, Any>(
                "name" to "test-user",
                "email" to "user@test.com",
                "plan" to "test-plan",
                "location" to locationMap,
                "properties" to customPropertiesMap
        )

        val userMap = hashMapOf<String, Any>(
                "userId" to "userId",
                "userProfileMap" to userProfileMap
        )

        val call = MethodCall("identifyUser", userMap)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    @Test
    fun identifyUser_withWrongProperties_returnsFailure() {
        doNothing().`when`(mockAnalyticsPlugin).identifyUser(
                anyString(),
                any(UserProfile::class.java))
        val userProfileMap = hashMapOf<String, Any>(
                "wrongValue" to "wrongValue"
        )

        val userMap = hashMapOf<String, Any>(
                "userId" to "userId",
                "userProfileMap" to userProfileMap
        )

        val call = MethodCall("identifyUser", userMap)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).error("AmplifyException", "Error", "Warning unrecognized object type sent via MethodChannel-AnalyticsProperties")
    }

    @Test
    fun identifyUser_withNoLocation_returnsSuccess() {
        doNothing().`when`(mockAnalyticsPlugin).identifyUser(
                anyString(),
                any(UserProfile::class.java))
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
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

}
