package com.amazonaws.amplify.amplify_auth_cognito
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterAuthFailureMessage
import com.amazonaws.auth.AWSCredentials
import com.amazonaws.auth.BasicAWSCredentials
import com.amazonaws.regions.RegionUtils.init
import com.amplifyframework.auth.*
import com.amplifyframework.auth.options.AuthSignOutOptions
import com.amplifyframework.auth.options.AuthSignUpOptions
import com.amplifyframework.auth.result.AuthResetPasswordResult
import com.amplifyframework.auth.result.AuthSignInResult
import com.amplifyframework.auth.result.AuthSignUpResult
import com.amplifyframework.auth.cognito.AWSCognitoAuthSession
import com.amplifyframework.auth.cognito.AWSCognitoUserPoolTokens
import com.amplifyframework.auth.result.AuthSessionResult
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
import java.lang.reflect.Field
import java.lang.reflect.Modifier

@RunWith(RobolectricTestRunner::class)
class AmplifyAuthCognitoPluginTest {

    lateinit var plugin: AuthCognito

    private val mockResult = mock(MethodChannel.Result::class.java)
    private val codeDeliveryDetails = AuthCodeDeliveryDetails("test@test.com", AuthCodeDeliveryDetails.DeliveryMedium.EMAIL, "email")
    private val signUpStep = AuthNextSignUpStep(AuthSignUpStep.CONFIRM_SIGN_UP_STEP, emptyMap(), codeDeliveryDetails)
    private val signInStep = AuthNextSignInStep(AuthSignInStep.CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE, emptyMap(), codeDeliveryDetails)
    private val resetStep = AuthNextResetPasswordStep(AuthResetPasswordStep.CONFIRM_RESET_PASSWORD_WITH_CODE, emptyMap(), codeDeliveryDetails)
    private val mockSignUpResult = AuthSignUpResult(false, signUpStep, null)
    private val mockSignInResult = AuthSignInResult(false, signInStep)
    private val mockResetPasswordResult = AuthResetPasswordResult(false, resetStep)
    private var currentException: AuthException? = null;
    private var mockAuth = mock(AuthCategory::class.java)

    @Before
    fun setup() {
        plugin = AuthCognito()
        val mockLog = mock(Logger::class.java)

        doNothing().`when`(mockLog).error(anyString(), any(AuthException::class.java))

        setFinalStatic(Amplify::class.java.getDeclaredField("Auth"), mockAuth)
    }

    @Test
    fun signUp_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            if (this.currentException == null) {
              plugin.prepareSignUpResult(mockResult, mockSignUpResult)
            } else {
              plugin.prepareError(mockResult, currentException as AuthException, FlutterAuthFailureMessage.SIGNUP.toString())
            }
            null as Void?
        }.`when`(mockAuth).signUp(anyString(), anyString(), any(AuthSignUpOptions::class.java), ArgumentMatchers.any<Consumer<AuthSignUpResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())
        val userAttributes = hashMapOf("email" to "test@test.com")
        val options = hashMapOf(
            "userAttributes" to userAttributes
        )
        val data: HashMap<*, *> = hashMapOf(
            "username" to "testUser",
            "password" to "testPassword",
            "options" to options
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("signUp", arguments)
        val res = mapOf(
                "isSignUpComplete" to false,
                "nextStep" to mapOf(
                        "signUpStep" to "CONFIRM_SIGN_UP_STEP",
                        "additionalInfo" to "{}",
                        "codeDeliveryDetails" to mapOf(
                                "destination" to "test@test.com",
                                "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
                                "attributeName" to "email"
                        )
                )
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(res);
    }

    @Test
    fun confirmSignUp_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignUpResult(mockResult, mockSignUpResult)
            null as Void?
        }.`when`(mockAuth).confirmSignUp(anyString(), anyString(), ArgumentMatchers.any<Consumer<AuthSignUpResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val data = hashMapOf(
            "username" to "testUser",
            "confirmationCode" to "confirmationCode"
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("confirmSignUp", arguments)
        val res = mapOf(
            "isSignUpComplete" to false,
            "nextStep" to mapOf(
                "signUpStep" to "CONFIRM_SIGN_UP_STEP",
                "additionalInfo" to "{}",
                "codeDeliveryDetails" to mapOf(
                    "destination" to "test@test.com",
                    "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
                    "attributeName" to "email"
                )
            )
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(res);
    }

    @Test
    fun resendSignUpCode_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignUpResult(mockResult, mockSignUpResult)
            null as Void?
        }.`when`(mockAuth).resendSignUpCode(anyString(), ArgumentMatchers.any<Consumer<AuthSignUpResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val data: HashMap<*, *> = hashMapOf(
            "username" to "testUser"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("resendSignUpCode", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    @Test
    fun signIn_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignInResult(mockResult, mockSignInResult)
            null as Void?
        }.`when`(mockAuth).signIn(anyString(), anyString(), ArgumentMatchers.any<Consumer<AuthSignInResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val data = hashMapOf(
            "username" to "testUser",
            "password" to "testPassword"
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("signIn", arguments)
        val res = mapOf(
            "isSignedIn" to false,
            "nextStep" to mapOf(
                "signInStep" to "CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE",
                "additionalInfo" to "{}",
                "codeDeliveryDetails" to mapOf(
                    "destination" to "test@test.com",
                    "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
                    "attributeName" to "email"
                )
            )
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    @Test
    fun confirmSignIn_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignInResult(mockResult, mockSignInResult)
            null as Void?
        }.`when`(mockAuth).confirmSignIn(anyString(), ArgumentMatchers.any<Consumer<AuthSignInResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val data: HashMap<*, *> = hashMapOf(
            "confirmationCode" to "confirmationCode"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("confirmSignIn", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    @Test
    fun signOut_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignOutResult(mockResult)
            null as Void?
        }.`when`(mockAuth).signOut(any(AuthSignOutOptions::class.java), ArgumentMatchers.any<Action>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val data: HashMap<*, *> = hashMapOf(
            "globalSignOut" to false
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("signOut", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    @Test
    fun updatePassword_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareUpdatePasswordResult(mockResult)
            null as Void?
        }.`when`(mockAuth).updatePassword(anyString(), anyString(), ArgumentMatchers.any<Action>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val data: HashMap<*, *> = hashMapOf(
            "newPassword" to "newPassword",
            "oldPassword" to "oldPassword"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("updatePassword", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    @Test
    fun resetPassword_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareResetPasswordResult(mockResult, mockResetPasswordResult)
            null as Void?
        }.`when`(mockAuth).resetPassword(anyString(), ArgumentMatchers.any<Consumer<AuthResetPasswordResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val data: HashMap<*, *> = hashMapOf(
            "username" to "username"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("resetPassword", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    @Test
    fun confirmPassword_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareUpdatePasswordResult(mockResult)
            null as Void?
        }.`when`(mockAuth).confirmResetPassword(anyString(), anyString(), ArgumentMatchers.any<Action>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val data: HashMap<*, *> = hashMapOf(
            "username" to "username",
            "newPassword" to "newPassword",
            "confirmationCode" to "confirmationCode"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("confirmPassword", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>());
    }

    @Test
    fun getCurrentUser_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareUpdatePasswordResult(mockResult)
            null as Void?
        }.`when`(mockAuth).getCurrentUser()

        val data: HashMap<*, *> = hashMapOf(
                "username" to "username",
                "userSub" to "userSub"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("getCurrentUser", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())
    }

    @Test
    fun fetchSession_returnsSuccess() {
        val id = AuthSessionResult.success("id")
        val awsCredentials: AuthSessionResult<AWSCredentials> = AuthSessionResult.success(BasicAWSCredentials("access", "secret"))
        val userSub = AuthSessionResult.success("sub")
        val tokens = AuthSessionResult.success(AWSCognitoUserPoolTokens("access", "id", "refresh"))
        val mockSession = AWSCognitoAuthSession(
        true,
            id,
            awsCredentials,
            userSub,
            tokens
        )

        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareCognitoSessionResult(mockResult, mockSession)
            null as Void?
        }.`when`(mockAuth).fetchAuthSession(any(), any())

        val data: HashMap<*, *> = hashMapOf(
                "getAWSCredentials" to true
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("fetchAuthSession", arguments)
        val res = mapOf(
            "isSignedIn" to true,
            "identityId" to "id",
            "userSub" to "sub",
            "credentials" to mapOf(
                "accessKey" to "access",
                "secretKey" to "secret"
            ),
            "tokens" to mapOf(
                "accessToken" to "access",
                "idToken" to "id",
                "refreshToken" to "refresh"
            )
        )
        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(res);
    }

    private fun setFinalStatic(field: Field, newValue: Any?) {
        field.isAccessible = true
        val modifiersField: Field = Field::class.java.getDeclaredField("modifiers")
        modifiersField.isAccessible = true
        modifiersField.setInt(field, field.modifiers and Modifier.FINAL.inv())
        field.set(null, newValue)
    }
}
