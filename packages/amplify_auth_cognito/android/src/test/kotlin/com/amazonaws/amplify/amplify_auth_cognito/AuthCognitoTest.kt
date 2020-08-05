package com.amazonaws.amplify.amplify_auth_cognito

import android.content.Context
import androidx.test.core.app.ApplicationProvider.getApplicationContext
import com.amazonaws.mobile.client.AWSMobileClient
import com.amplifyframework.auth.AuthCategory
import com.amplifyframework.auth.AuthCodeDeliveryDetails
import com.amplifyframework.auth.AuthUserAttributeKey
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
import com.amplifyframework.auth.options.AuthSignUpOptions
import com.amplifyframework.auth.result.AuthSignUpResult
import com.amplifyframework.auth.result.step.AuthNextSignUpStep
import com.amplifyframework.auth.result.step.AuthSignUpStep
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.AmplifyConfiguration
import com.amplifyframework.core.category.CategoryConfiguration
import com.google.gson.Gson
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel.Result
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mockito.*
import org.robolectric.RobolectricTestRunner
import java.util.*

@RunWith(RobolectricTestRunner::class)
class AuthCognitoTest  {

    private val USER_SUB = "69bc252b-dd07-41c0-b1db-a46066b8ef51"
    private val METADATA: Map<String, String> = Collections.singletonMap("aCustomKey", "aCustomVal")
    private var mobileClient: AWSMobileClient? = null
    private var authCategory: AuthCategory? = null
    private var gson = Gson()
    private var context: Context = getApplicationContext();
    private var configString = "{\"UserAgent\": \"aws-amplify-cli/2.0\",\"Version\": \"1.0\", \"auth\": {\"plugins\": {\"awsCognitoAuthPlugin\": {\"UserAgent\": \"aws-amplify-cli/0.1.0\", \"Version\": \"0.1.0\",\"IdentityManager\": {\"Default\": {} },\"CredentialsProvider\": {\"CognitoIdentity\": {\"Default\": {\"PoolId\": \"us-west-2:73156f2c-e8e0-435f-a534-a88d20049af8\",\"Region\": \"us-west-2\" } } },\"CognitoUserPool\": {\"Default\": {\"PoolId\": \"us-west-2_MW26RCMIT\",\"AppClientId\": \"2g96bnt88ocm0dhe65u271ds56\",\"AppClientSecret\": \"rr3v0tvce0sdo3qckhvknorhjh1ha5545cd442shi056rbdi6fj\",\"Region\": \"us-west-2\" } },\"Auth\": {\"Default\": {\"authenticationFlowType\": \"USER_SRP_AUTH\" } } } } } }"
//    private var amplify: Amplify? = null
    @Before
    fun setup()  {
    mobileClient = mock(AWSMobileClient::class.java)
    authCategory = AuthCategory()
    authCategory!!.addPlugin(AWSCognitoAuthPlugin())
    val config: MutableMap<*, *> = gson.fromJson(configString, MutableMap::class.java)
    Amplify.configure(AmplifyConfiguration(config as MutableMap<String, CategoryConfiguration>), context)
    }
    
    @Test
    fun onMethodCall_signUp() {
        val cognito = AuthCognito()
        val flutterResult: Result = mock(Result::class.java)
        val androidAuth = mock( AWSCognitoAuthPlugin::class.java)
        val options: AuthSignUpOptions =  AuthSignUpOptions.builder().userAttribute(AuthUserAttributeKey.email(), "test@test.com").build();

        `when`(androidAuth.signUp(
    "username",
    "password",
             options,
            { result -> },
            { error -> }
        )).then({result -> cognito.prepareSignUpResult(flutterResult, AuthSignUpResult(true, AuthNextSignUpStep(AuthSignUpStep.DONE, emptyMap(), AuthCodeDeliveryDetails("test@test.com", AuthCodeDeliveryDetails.DeliveryMedium.EMAIL) )))})

        val params: HashMap<String, Any> = hashMapOf(
            "username" to "test1",
            "password" to "123",
            "options" to  hashMapOf(
                "userAttributes" to hashMapOf(
                    "email" to "test@test.com"
                )
            )
        )
        val args: HashMap<String, Any> = hashMapOf(
            "data" to params
        )

        val result: Result = mock(Result::class.java)
        // batteryPlugin.batteryLevel = batteryLevel
        cognito.onMethodCall(MethodCall("signUp", args), result)
        verify(result).success(42)
    }
}