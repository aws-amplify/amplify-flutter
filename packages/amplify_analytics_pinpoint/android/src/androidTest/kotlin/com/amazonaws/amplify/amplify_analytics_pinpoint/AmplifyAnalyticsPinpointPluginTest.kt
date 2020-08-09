package com.amazonaws.amplify.amplify_analytics_pinpoint

import android.app.Activity
import android.app.Application
import android.content.Context
import androidx.test.core.app.ApplicationProvider.getApplicationContext
import com.amplifyframework.analytics.pinpoint.AWSPinpointAnalyticsPlugin
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.AmplifyConfiguration
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry
import org.json.JSONObject
import org.junit.Before
import org.junit.BeforeClass
import org.junit.Test
import org.mockito.Mockito.*
import org.mockito.MockitoAnnotations

class AmplifyAnalyticsPinpointPluginTest {

    companion object {
        lateinit var mockRegistrar: PluginRegistry.Registrar
        lateinit var mockActivity: Activity
        lateinit var mockApplication: Application
        lateinit var context: Context
        lateinit var plugin: AmplifyAnalyticsPinpointPlugin
        private var configString = "{\"UserAgent\": \"aws-amplify-cli/2.0\",\"Version\": \"1.0\",\"analytics\": {\"plugins\": {\"awsPinpointAnalyticsPlugin\": {\"pinpointAnalytics\": {\"appId\": \"878d8cea7c7948d0bc25df03c1985b4c\",\"region\": \"us-east-1\"},\"pinpointTargeting\": {\"region\": \"us-east-1\" } } } },\"auth\": {\"plugins\": {\"awsCognitoAuthPlugin\": {\"UserAgent\": \"aws-amplify-cli/0.1.0\",\"Version\": \"0.1.0\",\"IdentityManager\": {\"Default\": {} },\"CredentialsProvider\": {\"CognitoIdentity\": {\"Default\": {\"PoolId\": \"us-east-1:36910041-c259-4468-839c-c1423671fcd1\",\"Region\": \"us-east-1\" } } },\"Auth\": {\"Default\": {\"authenticationFlowType\": \"USER_SRP_AUTH\" }},\"PinpointAnalytics\": {\"Default\": {\"AppId\": \"878d8cea7c7948d0bc25df03c1985b4c\",\"Region\": \"us-east-1\"}},\"PinpointTargeting\": {\"Default\": {\"Region\": \"us-east-1\" } } } } } }"

        @BeforeClass
        @JvmStatic
        fun setup() {
            mockRegistrar = mock(PluginRegistry.Registrar::class.java)
            mockActivity = mock(Activity::class.java)
            mockApplication = mock(Application::class.java)
            context = getApplicationContext()
            MockitoAnnotations.initMocks(this)
            `when`(mockRegistrar.context()).thenReturn(mockApplication)
            Amplify.addPlugin(AWSCognitoAuthPlugin())
            Amplify.addPlugin(AWSPinpointAnalyticsPlugin(mockApplication))
            plugin = AmplifyAnalyticsPinpointPlugin()
            Amplify.configure(AmplifyConfiguration.fromJson(JSONObject(configString)), context)
        }
    }

    @Before
    fun flushEvents(){
        Amplify.Analytics.flushEvents();
    }



    @Test
    fun createEvent_hasAllProperties(){

        val propertiesMap = hashMapOf<String, Any>(
                "AnalyticsStringProperty" to "Pancakes",
                "AnalyticsBooleanProperty" to true,
                "AnalyticsDoubleProperty" to 3.14,
                "AnalyticsIntegerProperty" to 42
        )

        val analyticsEvent = AmplifyAnalyticsConstructor.createAnalyticsEvent("amplify-event", propertiesMap);

        assert(analyticsEvent.name == "amplify-event")

        val analyticsProperties = analyticsEvent.properties;
        assert(analyticsProperties.get("AnalyticsStringProperty").value == "Pancakes")
        assert(analyticsProperties.get("AnalyticsBooleanProperty").value == true)
        assert(analyticsProperties.get("AnalyticsDoubleProperty").value == 3.14)
        assert(analyticsProperties.get("AnalyticsIntegerProperty").value == 42)

    }

    @Test
    fun createUser_hasAllProperties(){

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

        val user = AmplifyAnalyticsConstructor.createUserProfile(userProfileMap)

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
    fun recordEvent_returnsSuccess(){

        val arguments: HashMap<*, *> = hashMapOf(
                "name" to "amplify-event"
        )
        val call = MethodCall("recordEvent", arguments)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    @Test
    fun recordEvent_withProperties_returnsSuccess(){

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
    fun recordEvent_withWrongPropertyType_returnsFailure(){
        val propertiesMap = hashMapOf<String, Any>(
                "WrongProperty" to listOf("a","b","c")
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
    fun flushEvents_returnsSuccess(){

        val call = MethodCall("flushEvents", null)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    @Test
    fun registerGlobalProperties_withProperties_returnsSuccess(){
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
    fun registerGlobalProperties_withWrongPropertyType_returnsFailure(){
        val propertiesMap = hashMapOf<String, Any>(
                "WrongProperty" to listOf("a","b","c")
        )

        val call = MethodCall("registerGlobalProperties", propertiesMap)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).error("AmplifyException", "Error", "Warning unrecognized object type sent via MethodChannel-AnalyticsProperties")

    }

    @Test
    fun identifyUser_withProperties_returnsSuccess(){

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
    fun identifyUser_withWrongProperties_returnsFailure(){

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
    fun identifyUser_withNoLocation_returnsSuccess(){

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