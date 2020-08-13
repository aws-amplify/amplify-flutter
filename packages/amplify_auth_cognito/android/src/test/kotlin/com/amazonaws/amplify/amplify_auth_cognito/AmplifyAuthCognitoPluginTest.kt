package com.amazonaws.amplify.amplify_auth_cognito


import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterAuthFailureMessage
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignUpResult
import com.amplifyframework.AmplifyException
import com.amplifyframework.auth.*
import com.amplifyframework.auth.options.AuthSignOutOptions
import com.amplifyframework.auth.options.AuthSignUpOptions
import com.amplifyframework.auth.result.AuthResetPasswordResult
import com.amplifyframework.auth.result.AuthSignInResult
import com.amplifyframework.auth.result.AuthSignUpResult
import com.amplifyframework.auth.result.step.*
import com.amplifyframework.core.Action
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import com.amplifyframework.logging.Logger
import com.google.gson.internal.LinkedTreeMap
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers
import org.mockito.Mockito.*
import org.mockito.invocation.InvocationOnMock
import org.robolectric.RobolectricTestRunner
import java.lang.Exception
import java.lang.reflect.Field
import java.lang.reflect.Modifier

@RunWith(RobolectricTestRunner::class)
class AmplifyAuthCognitoPluginTest {

    lateinit var plugin: AuthCognito

    private val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
    private val codeDeliveryDetails = AuthCodeDeliveryDetails("test@test.com", AuthCodeDeliveryDetails.DeliveryMedium.EMAIL, "email")
    private val signUpStep = AuthNextSignUpStep(AuthSignUpStep.CONFIRM_SIGN_UP_STEP, emptyMap(), codeDeliveryDetails)
    private val signInStep = AuthNextSignInStep(AuthSignInStep.CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE, emptyMap(), codeDeliveryDetails)
    private val resetStep = AuthNextResetPasswordStep(AuthResetPasswordStep.CONFIRM_RESET_PASSWORD_WITH_CODE, emptyMap(), codeDeliveryDetails)
    private val mockSignUpResult = AuthSignUpResult(false, signUpStep)
    private val mockSignInResult = AuthSignInResult(false, signInStep)
    private val mockResetPasswordResult = AuthResetPasswordResult(false, resetStep)
    private val options =  AuthSignUpOptions.builder();
    private val authUserAttributes: MutableList<AuthUserAttribute> = mutableListOf();
    private var currentException: AuthException? = null;

    @Before
    fun setup() {
        plugin = AuthCognito()
        val mockAuth = mock(AuthCategory::class.java)
        val mockLog = mock(Logger::class.java)
        authUserAttributes.add(AuthUserAttribute(AuthUserAttributeKey.email(), "test@test.com"))
        options.userAttributes(authUserAttributes)

        doNothing().`when`(mockLog).error(anyString(), any(AuthException::class.java))

        doAnswer { invocation: InvocationOnMock ->
            if (this.currentException == null) {
              plugin.prepareSignUpResult(mockResult, mockSignUpResult)
            } else {
              plugin.prepareError(mockResult, currentException as AuthException, FlutterAuthFailureMessage.SIGNUP.toString())
            }
            null as Void?
        }.`when`(mockAuth).signUp(anyString(), anyString(), any(AuthSignUpOptions::class.java), ArgumentMatchers.any<Consumer<AuthSignUpResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignUpResult(mockResult, mockSignUpResult)
            null as Void?
        }.`when`(mockAuth).confirmSignUp(anyString(), anyString(), ArgumentMatchers.any<Consumer<AuthSignUpResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignUpResult(mockResult, mockSignUpResult)
            null as Void?
        }.`when`(mockAuth).resendSignUpCode(anyString(), ArgumentMatchers.any<Consumer<AuthSignUpResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignInResult(mockResult, mockSignInResult)
            null as Void?
        }.`when`(mockAuth).signIn(anyString(), anyString(), ArgumentMatchers.any<Consumer<AuthSignInResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignInResult(mockResult, mockSignInResult)
            null as Void?
        }.`when`(mockAuth).confirmSignIn(anyString(), ArgumentMatchers.any<Consumer<AuthSignInResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignOutResult(mockResult)
            null as Void?
        }.`when`(mockAuth).signOut(any(AuthSignOutOptions::class.java), ArgumentMatchers.any<Action>(), ArgumentMatchers.any<Consumer<AuthException>>())

        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareUpdatePasswordResult(mockResult)
            null as Void?
        }.`when`(mockAuth).updatePassword(anyString(), anyString(), ArgumentMatchers.any<Action>(), ArgumentMatchers.any<Consumer<AuthException>>())

        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareResetPasswordResult(mockResult, mockResetPasswordResult)
            null as Void?
        }.`when`(mockAuth).resetPassword(anyString(), ArgumentMatchers.any<Consumer<AuthResetPasswordResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareUpdatePasswordResult(mockResult)
            null as Void?
        }.`when`(mockAuth).confirmResetPassword(anyString(), anyString(), ArgumentMatchers.any<Action>(), ArgumentMatchers.any<Consumer<AuthException>>())

        setFinalStatic(Amplify::class.java.getDeclaredField("Auth"), mockAuth)
    }

    @Test
    fun signUp_returnsSuccess() {
        val userAttributes: HashMap<String, String> = hashMapOf("email" to "test@test.com")
        val options: HashMap<String, Any> = hashMapOf(
            "userAttributes" to userAttributes
        )
        val data: HashMap<*, *> = hashMapOf(
            "username" to "testUser",
            "password" to "testPassword",
            "options" to options
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("signUp", arguments)
        plugin.onMethodCall(call, mockResult)
        val res = mapOf(
            "isSignUpComplete" to false,
            "nextStep" to mapOf(
                "signUpStep" to "CONFIRM_SIGN_UP_STEP",
                "additionalInfo" to "{}",
                "codeDeliveryDetails" to mapOf(
                    "destination" to "test@test.com",
                    "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL,
                    "attributeName" to "email"
                )
            )
        )
        verify(mockResult, times(1)).success(res);
    }

    @Test
    fun signUp_returnsError() {
        val userAttributes: HashMap<String, String> = hashMapOf("email" to "test@test.com")
        val options: HashMap<String, Any> = hashMapOf(
            "userAttributes" to userAttributes
        )
        val data: HashMap<*, *> = hashMapOf(
            "username" to "testUser",
            "password" to "testPassword",
            "options" to options
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("signUp", arguments)
        currentException = AuthException("a","b")
        plugin.onMethodCall(call, mockResult)
        verify(mockResult, times(1)).error(anyString(), anyString(), ArgumentMatchers.any<HashMap<String, Any>>());
        currentException = null;
    }

    @Test
    fun confirmSignUp_returnsSuccess() {
        val data: HashMap<*, *> = hashMapOf(
            "username" to "testUser",
            "confirmationCode" to "confirmationCode"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("confirmSignUp", arguments)
        plugin.onMethodCall(call, mockResult)
        val res = mapOf(
            "isSignUpComplete" to false,
            "nextStep" to mapOf(
                "signUpStep" to "CONFIRM_SIGN_UP_STEP",
                "additionalInfo" to "{}",
                "codeDeliveryDetails" to mapOf(
                    "destination" to "test@test.com",
                    "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL,
                    "attributeName" to "email"
                )
            )
        )
        verify(mockResult, times(1)).success(res);
    }

    @Test
    fun resendSignUpCode_returnsSuccess() {
        val data: HashMap<*, *> = hashMapOf(
            "username" to "testUser"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("resendSignUpCode", arguments)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    @Test
    fun signIn_returnsSuccess() {
        val data: HashMap<*, *> = hashMapOf(
            "username" to "testUser",
            "password" to "testPassword"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("signIn", arguments)
        plugin.onMethodCall(call, mockResult)
        val res = mapOf(
            "isSignedIn" to false,
            "nextStep" to mapOf(
                "signInStep" to "CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE",
                "additionalInfo" to "{}",
                "codeDeliveryDetails" to mapOf(
                    "destination" to "test@test.com",
                    "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL,
                    "attributeName" to "email"
                )
            )
        )
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    @Test
    fun confirmSignIn_returnsSuccess() {
        val data: HashMap<*, *> = hashMapOf(
            "confirmationCode" to "confirmationCode"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("confirmSignIn", arguments)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    @Test
    fun signOut_returnsSuccess() {
        val data: HashMap<*, *> = hashMapOf(
            "globalSignOut" to false
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("signOut", arguments)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    @Test
    fun updatePassword_returnsSuccess() {
        val data: HashMap<*, *> = hashMapOf(
            "newPassword" to "newPassword",
            "oldPassword" to "oldPassword"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("updatePassword", arguments)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    @Test
    fun resetPassword_returnsSuccess() {
        val data: HashMap<*, *> = hashMapOf(
            "username" to "username"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("resetPassword", arguments)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    @Test
    fun confirmPassword_returnsSuccess() {
        val data: HashMap<*, *> = hashMapOf(
            "username" to "username",
            "newPassword" to "newPassword",
            "confirmationCode" to "confirmationCode"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("confirmPassword", arguments)
        plugin.onMethodCall(call, mockResult)
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    private fun setFinalStatic(field: Field, newValue: Any?) {
        field.isAccessible = true
        val modifiersField: Field = Field::class.java.getDeclaredField("modifiers")
        modifiersField.isAccessible = true
        modifiersField.setInt(field, field.modifiers and Modifier.FINAL.inv())
        field.set(null, newValue)
    }




}
