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

    @Test
    fun testSuccess1() {
        val propertiesMap: HashMap<String, Any> = hashMapOf(
                "boolProperty" to true,
                "numberProperty" to 4
        )
        val arguments: HashMap<*, *> = hashMapOf(
                "name" to "kotlinUnitTestEvent",
                "propertiesMap" to propertiesMap
        )
        val call = MethodCall("recordEvent", arguments)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    @Test
    fun testSuccess2() {
        val propertiesMap: HashMap<String, Any> = hashMapOf(
                "boolProperty" to true,
                "test" to 4
        )
        val arguments: HashMap<*, *> = hashMapOf(
                "name" to "kotlinUnitTestEvent",
                "propertiesMap" to propertiesMap
        )
        val call = MethodCall("recordEvent", arguments)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }

    @Test
    fun testFail1() {
        val propertiesMap: HashMap<String, Any> = hashMapOf(
                "boolProperty" to true,
                "test" to 4
        )
        val arguments: HashMap<*, *> = hashMapOf(
                // name property is null "name" to "kotlinUnitTestEvent",
                "propertiesMap" to propertiesMap
        )
        val call = MethodCall("recordEvent", arguments)
        var mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult).success(true)
    }
}