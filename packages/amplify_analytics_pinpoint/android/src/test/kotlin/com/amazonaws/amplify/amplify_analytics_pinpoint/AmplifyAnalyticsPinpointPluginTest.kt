package com.amazonaws.amplify.amplify_analytics_pinpoint

import com.amazonaws.amplify.amplify_analytics_pinpoint.types.FlutterAnalyticsErrorMessage
import com.amplifyframework.analytics.*
import com.amplifyframework.core.Amplify

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.junit.Before
import org.junit.Test
import org.mockito.ArgumentMatchers.any
import org.mockito.ArgumentMatchers.anyString
import org.mockito.Mockito.*
import java.lang.Exception
import java.lang.reflect.Field
import java.lang.reflect.Modifier
import com.amplifyframework.logging.Logger
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AmplifyAnalyticsPinpointPluginTest {

    lateinit var plugin: AmplifyAnalyticsPinpointPlugin

    private var mockAnalytics = mock(AnalyticsCategory::class.java)

    @Before
    fun setup() {
        plugin = AmplifyAnalyticsPinpointPlugin()
        val mockLog = mock(Logger::class.java)

        doNothing().`when`(mockLog).error(anyString(), any())

        setFinalStatic(Amplify::class.java.getDeclaredField("Analytics"), mockAnalytics)
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
        verify(mockResult).error(eq("AmplifyException"), any(), any())
    }

    @Test
    fun flushEvents_returnsSuccess() {

        val call = MethodCall("flushEvents", null)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    @Test
    fun registerGlobalProperties_withProperties_returnsSuccess() {
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
        val propertiesMap = hashMapOf<String, Any>(
                "WrongProperty" to listOf("a", "b", "c")
        )

        val call = MethodCall("registerGlobalProperties", propertiesMap)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).error(eq("AmplifyException"), any(), any())
    }

    @Test
    fun identifyUser_withProperties_returnsSuccess() {
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
        verify(mockResult).error(eq("AmplifyException"), any(), any())
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
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
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
