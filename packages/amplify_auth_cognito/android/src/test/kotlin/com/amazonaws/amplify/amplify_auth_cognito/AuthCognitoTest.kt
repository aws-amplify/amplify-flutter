package com.amazonaws.amplify.amplify_auth_cognito

import com.amazonaws.mobile.client.AWSMobileClient
import com.amplifyframework.auth.AuthCategory
import com.amplifyframework.auth.AuthUserAttributeKey
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
import com.amplifyframework.auth.options.AuthSignUpOptions
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel.Result
import org.junit.Before
import org.junit.Test
import org.mockito.Mockito.*
import java.util.*


class AuthCognitoTest {
    private val USER_SUB = "69bc252b-dd07-41c0-b1db-a46066b8ef51"
    private val METADATA: Map<String, String> = Collections.singletonMap("aCustomKey", "aCustomVal")
    private var mobileClient: AWSMobileClient? = null
    private var authCategory: AuthCategory? = null
//    private var amplify: Amplify? = null
    @Before
    fun setup()  {
    mobileClient = mock(AWSMobileClient::class.java)
    authCategory = AuthCategory()
    authCategory!!.addPlugin(AWSCognitoAuthPlugin())
    }
    
    @Test
    fun onMethodCall_signUp() {
        val cognito = AuthCognito()
        val androidAuth = mock( AWSCognitoAuthPlugin::class.java)
        val options: AuthSignUpOptions =  AuthSignUpOptions.builder().userAttribute(AuthUserAttributeKey.email(), "test@test.com").build();

        `when`(androidAuth.signUp(
    "username",
    "password",
             options,
            { result -> },
            { error -> }
        )).then({result -> })

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