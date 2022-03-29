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

package com.amazonaws.amplify.amplify_auth_cognito

import android.app.Activity
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterConfirmUserAttributeRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResendUserAttributeConfirmationCodeRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignUpRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterUpdateUserAttributeRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterUpdateUserAttributesRequest
import com.amazonaws.amplify.amplify_core.exception.InvalidRequestException
import com.amazonaws.auth.AWSCredentials
import com.amazonaws.auth.BasicAWSCredentials
import com.amplifyframework.auth.AuthCategory
import com.amplifyframework.auth.AuthCodeDeliveryDetails
import com.amplifyframework.auth.AuthException
import com.amplifyframework.auth.AuthUser
import com.amplifyframework.auth.AuthUserAttribute
import com.amplifyframework.auth.AuthUserAttributeKey
import com.amplifyframework.auth.cognito.AWSCognitoAuthSession
import com.amplifyframework.auth.cognito.AWSCognitoUserPoolTokens
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthConfirmResetPasswordOptions
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthConfirmSignInOptions
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthConfirmSignUpOptions
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthResendSignUpCodeOptions
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthResendUserAttributeConfirmationCodeOptions
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthResetPasswordOptions
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthSignInOptions
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthSignOutOptions
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthUpdateUserAttributeOptions
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthUpdateUserAttributesOptions
import com.amplifyframework.auth.options.AuthConfirmSignInOptions
import com.amplifyframework.auth.options.AuthConfirmSignUpOptions
import com.amplifyframework.auth.options.AuthResendSignUpCodeOptions
import com.amplifyframework.auth.options.AuthResendUserAttributeConfirmationCodeOptions
import com.amplifyframework.auth.options.AuthSignInOptions
import com.amplifyframework.auth.options.AuthSignOutOptions
import com.amplifyframework.auth.options.AuthSignUpOptions
import com.amplifyframework.auth.options.AuthUpdateUserAttributeOptions
import com.amplifyframework.auth.options.AuthUpdateUserAttributesOptions
import com.amplifyframework.auth.result.AuthResetPasswordResult
import com.amplifyframework.auth.result.AuthSessionResult
import com.amplifyframework.auth.result.AuthSignInResult
import com.amplifyframework.auth.result.AuthSignUpResult
import com.amplifyframework.auth.result.AuthUpdateAttributeResult
import com.amplifyframework.auth.result.step.AuthNextResetPasswordStep
import com.amplifyframework.auth.result.step.AuthNextSignInStep
import com.amplifyframework.auth.result.step.AuthNextSignUpStep
import com.amplifyframework.auth.result.step.AuthNextUpdateAttributeStep
import com.amplifyframework.auth.result.step.AuthResetPasswordStep
import com.amplifyframework.auth.result.step.AuthSignInStep
import com.amplifyframework.auth.result.step.AuthSignUpStep
import com.amplifyframework.auth.result.step.AuthUpdateAttributeStep
import com.amplifyframework.core.Action
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import com.amplifyframework.logging.Logger
import com.google.gson.internal.LinkedTreeMap
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Assert.fail
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers
import org.mockito.Mockito.any
import org.mockito.Mockito.anyString
import org.mockito.Mockito.doAnswer
import org.mockito.Mockito.doNothing
import org.mockito.Mockito.eq
import org.mockito.Mockito.mock
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
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
    private val updateAttributeStep = AuthNextUpdateAttributeStep(AuthUpdateAttributeStep.CONFIRM_ATTRIBUTE_WITH_CODE, emptyMap(), codeDeliveryDetails)
    private val updateAttributeStepWithoutConfirmation = AuthNextUpdateAttributeStep(AuthUpdateAttributeStep.DONE, emptyMap(), null)
    private val mockSignUpResult = AuthSignUpResult(false, signUpStep, null)
    private val mockSignInResult = AuthSignInResult(false, signInStep)
    private val mockResetPasswordResult = AuthResetPasswordResult(false, resetStep)
    private val mockUpdateUserAttributeResult = AuthUpdateAttributeResult(true, updateAttributeStep)
    private val id = AuthSessionResult.success("id")
    private val awsCredentials: AuthSessionResult<AWSCredentials> = AuthSessionResult.success(BasicAWSCredentials("access", "secret"))
    private val userSub = AuthSessionResult.success("sub")
    private val tokens = AuthSessionResult.success(AWSCognitoUserPoolTokens("access", "id", "refresh"))
    private val mockSession = AWSCognitoAuthSession(
        true,
        id,
        awsCredentials,
        userSub,
        tokens
    )
    private var mockAuth = mock(AuthCategory::class.java)

    @Before
    fun setup() {
        plugin = AuthCognito(AuthCognitoHubEventStreamHandler(), mock(Activity::class.java))
        val mockLog = mock(Logger::class.java)

        doNothing().`when`(mockLog).error(anyString(), any(AuthException::class.java))

        setFinalStatic(Amplify::class.java.getDeclaredField("Auth"), mockAuth)
    }

    @Test
    fun signUp_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignUpResult(mockResult, mockSignUpResult)
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
        verify(mockResult, times(1)).success(res)
    }

    @Test
    fun signUpRequestMetadata_returnsSuccess() {
        // Arrange
        val clientMetadata = hashMapOf("attribute" to "value")
        val options = hashMapOf(
            "clientMetadata" to clientMetadata
        )
        val data: HashMap<String, *> = hashMapOf(
            "username" to "testUser",
            "password" to "testPassword",
            "options" to options
        )

        // Act
        val request = FlutterSignUpRequest(data)

        // Assert
        assertEquals(clientMetadata, request.options.clientMetadata)
        assertEquals(0, request.options.validationData.size)
        assertEquals(0, request.options.userAttributes.size)
    }

    @Test
    fun signUpRequestValidationdata_returnsSuccess() {
        // Arrange
        val validationData = hashMapOf("attribute" to "value")
        val options = hashMapOf(
            "validationData" to validationData
        )
        val data: HashMap<String, *> = hashMapOf(
            "username" to "testUser",
            "password" to "testPassword",
            "options" to options
        )

        // Act
        val request = FlutterSignUpRequest(data)

        // Assert
        assertEquals(validationData, request.options.validationData)
        assertEquals(0, request.options.clientMetadata.size)
        assertEquals(0, request.options.userAttributes.size)
    }

    @Test
    fun signUpNoOptions_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignUpResult(mockResult, mockSignUpResult)
            null as Void?
        }.`when`(mockAuth).signUp(anyString(), anyString(), any(AuthSignUpOptions::class.java), ArgumentMatchers.any<Consumer<AuthSignUpResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val data: HashMap<*, *> = hashMapOf(
            "username" to "test@test.com",
            "password" to "testPassword"
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("signUp", arguments)
        val res = mapOf(
            "isSignUpComplete" to false,
            "nextStep" to mapOf(
                "signUpStep" to "CONFIRM_SIGN_UP_STEP",
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
        verify(mockResult, times(1)).success(res)
    }

    @Test
    fun confirmSignUpWithoutOptions_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignUpResult(mockResult, mockSignUpResult)
            null as Void?
        }.`when`(mockAuth).confirmSignUp(
            anyString(),
            anyString(),
            ArgumentMatchers.any<AuthConfirmSignUpOptions>(),
            ArgumentMatchers.any<Consumer<AuthSignUpResult>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )

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
        verify(mockResult, times(1)).success(res)
    }

    @Test
    fun confirmSignUpWithOptions_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignUpResult(mockResult, mockSignUpResult)
            null as Void?
        }.`when`(mockAuth).confirmSignUp(
            anyString(),
            anyString(),
            ArgumentMatchers.any<AuthConfirmSignUpOptions>(),
            ArgumentMatchers.any<Consumer<AuthSignUpResult>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )

        val mockClientMetadata = hashMapOf(
            "key" to "value"
        )
        val mockUsername = "testUser"
        val mockConfirmationCode = "123456"
        val data = hashMapOf(
            "username" to mockUsername,
            "confirmationCode" to mockConfirmationCode,
            "options" to hashMapOf(
                "clientMetadata" to mockClientMetadata
            )
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("confirmSignUp", arguments)
        val res = mapOf(
            "isSignUpComplete" to false,
            "nextStep" to mapOf(
                "signUpStep" to "CONFIRM_SIGN_UP_STEP",
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
        verify(mockResult, times(1)).success(res)

        var expectedOptions = AWSCognitoAuthConfirmSignUpOptions
            .builder()
            .clientMetadata(mockClientMetadata)
            .build()

        verify(mockAuth).confirmSignUp(
            ArgumentMatchers.eq(mockUsername),
            ArgumentMatchers.eq(mockConfirmationCode),
            ArgumentMatchers.eq(expectedOptions),
            ArgumentMatchers.any<Consumer<AuthSignUpResult>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
    }

    @Test
    fun resendSignUpCode_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignUpResult(mockResult, mockSignUpResult)
            null as Void?
        }.`when`(mockAuth).resendSignUpCode(
            anyString(),
            any(),
            ArgumentMatchers.any<Consumer<AuthSignUpResult>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )

        val data: HashMap<*, *> = hashMapOf(
            "username" to "testUser"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("resendSignUpCode", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())
    }

    @Test
    fun resendSignUpCodeWithOptions_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignUpResult(mockResult, mockSignUpResult)
            null as Void?
        }.`when`(mockAuth).resendSignUpCode(
            anyString(),
            ArgumentMatchers.any<AuthResendSignUpCodeOptions>(),
            ArgumentMatchers.any<Consumer<AuthSignUpResult>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val clientMetadata = hashMapOf("attribute" to "value")
        val options = hashMapOf(
            "clientMetadata" to clientMetadata
        )
        val username = "testUser"
        val data: HashMap<*, *> = hashMapOf(
            "username" to username,
            "options" to options
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("resendSignUpCode", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())

        val expectedOptions = AWSCognitoAuthResendSignUpCodeOptions
            .builder()
            .metadata(clientMetadata)
            .build()

        verify(mockAuth).resendSignUpCode(
            ArgumentMatchers.eq(username),
            ArgumentMatchers.eq(expectedOptions),
            ArgumentMatchers.any<Consumer<AuthSignUpResult>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
    }

    @Test
    fun signInNoOptions_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignInResult(mockResult, mockSignInResult)
            null as Void?
        }.`when`(mockAuth).signIn(anyString(), anyString(), ArgumentMatchers.any<AuthSignInOptions>(), ArgumentMatchers.any<Consumer<AuthSignInResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val data: HashMap<*, *> = hashMapOf(
            "username" to "testUser",
            "password" to "testPassword"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("signIn", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        var expectedOptions = AWSCognitoAuthSignInOptions.builder().build()
        verify(mockAuth).signIn(ArgumentMatchers.eq("testUser"), ArgumentMatchers.eq("testPassword"), ArgumentMatchers.eq(expectedOptions), ArgumentMatchers.any<Consumer<AuthSignInResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())
    }

    @Test
    fun signInWithOptions_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignInResult(mockResult, mockSignInResult)
            null as Void?
        }.`when`(mockAuth).signIn(anyString(), anyString(), ArgumentMatchers.any<AuthSignInOptions>(), ArgumentMatchers.any<Consumer<AuthSignInResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val metadata = hashMapOf(
            "key" to "value"
        )
        val data: HashMap<*, *> = hashMapOf(
            "username" to "testUser",
            "password" to "testPassword",
            "options" to hashMapOf(
                "clientMetadata" to metadata
            )
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("signIn", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        var expectedOptions = AWSCognitoAuthSignInOptions.builder().metadata(metadata).build()
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())
        verify(mockAuth).signIn(ArgumentMatchers.eq("testUser"), ArgumentMatchers.eq("testPassword"), ArgumentMatchers.eq(expectedOptions), ArgumentMatchers.any<Consumer<AuthSignInResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())
    }

    @Test
    fun confirmSignInNoOptions_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignInResult(mockResult, mockSignInResult)
            null as Void?
        }.`when`(mockAuth).confirmSignIn(anyString(), ArgumentMatchers.any<AuthConfirmSignInOptions>(), ArgumentMatchers.any<Consumer<AuthSignInResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val data: HashMap<*, *> = hashMapOf(
            "confirmationCode" to "confirmationCode"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("confirmSignIn", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())
    }

    @Test
    fun confirmSignInWithOptions_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignInResult(mockResult, mockSignInResult)
            null as Void?
        }.`when`(mockAuth).confirmSignIn(anyString(), ArgumentMatchers.any<AuthConfirmSignInOptions>(), ArgumentMatchers.any<Consumer<AuthSignInResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val metadata = hashMapOf(
            "key" to "value"
        )
        val userAttributes = hashMapOf(
            "email" to "test@test.test"
        )
        val data: HashMap<*, *> = hashMapOf(
            "confirmationCode" to "confirmationCode",
            "options" to hashMapOf(
                "clientMetadata" to metadata,
                "userAttributes" to userAttributes
            )
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("confirmSignIn", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        var attributeList = mutableListOf<AuthUserAttribute>(AuthUserAttribute(AuthUserAttributeKey.custom("email"), "test@test.test"))
        var expectedOptions = AWSCognitoAuthConfirmSignInOptions.builder().metadata(metadata).userAttributes(attributeList).build()
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())
        verify(mockAuth).confirmSignIn(ArgumentMatchers.eq("confirmationCode"), ArgumentMatchers.eq(expectedOptions), ArgumentMatchers.any<Consumer<AuthSignInResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())
    }

    @Test
    fun signOut_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignOutResult(mockResult)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )

        val data: HashMap<String, String> = HashMap<String, String>()
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("signOut", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())
    }

    @Test
    fun signOutGlobal_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignOutResult(mockResult)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )

        val data: HashMap<*, *> = hashMapOf(
            "options" to hashMapOf(
                "globalSignOut" to true
            )
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("signOut", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())

        val expectedOptions = AWSCognitoAuthSignOutOptions.builder().globalSignOut(true).build()
        verify(mockAuth).signOut(
            eq(expectedOptions),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
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
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())
    }

    @Test
    fun resetPassword_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareResetPasswordResult(mockResult, mockResetPasswordResult)
            null as Void?
        }.`when`(mockAuth).resetPassword(
            anyString(),
            any(),
            ArgumentMatchers.any<Consumer<AuthResetPasswordResult>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )

        val data: HashMap<*, *> = hashMapOf(
            "username" to "username"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("resetPassword", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())
    }

    @Test
    fun resetPasswordWithOptions_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareResetPasswordResult(mockResult, mockResetPasswordResult)
            null as Void?
        }.`when`(mockAuth).resetPassword(
            anyString(),
            ArgumentMatchers.any<AWSCognitoAuthResetPasswordOptions>(),
            ArgumentMatchers.any<Consumer<AuthResetPasswordResult>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val clientMetadata = hashMapOf("attribute" to "value")
        val options = hashMapOf(
            "clientMetadata" to clientMetadata
        )
        val username = "testUser"
        val data: HashMap<*, *> = hashMapOf(
            "username" to username,
            "options" to options
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("resetPassword", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())

        val expectedOptions = AWSCognitoAuthResetPasswordOptions
            .builder()
            .metadata(clientMetadata)
            .build()

        verify(mockAuth).resetPassword(
            ArgumentMatchers.eq(username),
            ArgumentMatchers.eq(expectedOptions),
            ArgumentMatchers.any<Consumer<AuthResetPasswordResult>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
    }

    @Test
    fun confirmResetPassword_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareUpdatePasswordResult(mockResult)
            null as Void?
        }.`when`(mockAuth).confirmResetPassword(
            anyString(),
            anyString(),
            any(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )

        val data: HashMap<*, *> = hashMapOf(
            "username" to "username",
            "newPassword" to "newPassword",
            "confirmationCode" to "confirmationCode"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("confirmResetPassword", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())
    }

    @Test
    fun confirmResetPasswordWithOptions_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareUpdatePasswordResult(mockResult)
            null as Void?
        }.`when`(mockAuth).confirmResetPassword(
            anyString(),
            anyString(),
            ArgumentMatchers.any<AWSCognitoAuthConfirmResetPasswordOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )

        val clientMetadata = hashMapOf("attribute" to "value")
        val options = hashMapOf(
            "clientMetadata" to clientMetadata
        )
        val username = "testUser"
        val newPassword = "newPassword"
        val confirmationCode = "confirmationCode"
        val data: HashMap<*, *> = hashMapOf(
            "username" to username,
            "newPassword" to newPassword,
            "confirmationCode" to "confirmationCode",
            "options" to options
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("confirmResetPassword", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())

        val expectedOptions = AWSCognitoAuthConfirmResetPasswordOptions
            .builder()
            .metadata(clientMetadata)
            .build()

        verify(mockAuth).confirmResetPassword(
            ArgumentMatchers.eq(newPassword),
            ArgumentMatchers.eq(confirmationCode),
            ArgumentMatchers.eq(expectedOptions),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
    }

    @Test
    fun getCurrentUser_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareUserResult(mockResult, AuthUser("username", "userSub"))
            null as Void?
        }.`when`(mockAuth).currentUser

        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareCognitoSessionResult(mockResult, mockSession)
            null as Void?
        }.`when`(mockAuth).fetchAuthSession(any(), any())

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
    fun fetchUserAttributes_returnsSuccess() {
        // Arrange
        var mockAttributes: MutableList<AuthUserAttribute> = listOf<AuthUserAttribute>(
            AuthUserAttribute(AuthUserAttributeKey.email(), "test@test.com")
        ).toMutableList()
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareFetchAttributesResult(mockResult, mockAttributes)
            null as Void?
        }.`when`(mockAuth).fetchUserAttributes(ArgumentMatchers.any<Consumer<MutableList<AuthUserAttribute>>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val data: HashMap<*, *> = HashMap<String, String>()
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("fetchUserAttributes", arguments)
        var mockedResponse: List<Map<String, String>> = listOf(
            mapOf(
                "key" to "email",
                "value" to "test@test.com"
            )
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(mockedResponse)
    }

    @Test
    fun fetchSession_returnsSuccess() {
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
        verify(mockResult, times(1)).success(res)
    }

    @Test
    fun signInWithWebUI_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignInResult(mockResult, mockSignInResult)
            null as Void?
        }.`when`(mockAuth).signInWithWebUI(any(), ArgumentMatchers.any<Consumer<AuthSignInResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())
        val data: HashMap<*, *> = HashMap<String, String>()
        val arguments: HashMap<String, Any?> = hashMapOf("data" to data)
        val call = MethodCall("signInWithWebUI", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())
    }

    @Test
    fun signInWithSocialWebUI_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareSignInResult(mockResult, mockSignInResult)
            null as Void?
        }.`when`(mockAuth).signInWithSocialWebUI(any(), ArgumentMatchers.any<Activity>(), ArgumentMatchers.any<Consumer<AuthSignInResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())

        val data: HashMap<*, *> = hashMapOf(
            "authProvider" to "google"
        )
        val arguments: HashMap<String, Any> = hashMapOf("data" to data)
        val call = MethodCall("signInWithWebUI", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())
    }

    @Test
    fun updateUserAttribute_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareUpdateUserAttributeResult(mockResult, mockUpdateUserAttributeResult)
            null as Void?
        }.`when`(mockAuth).updateUserAttribute(
            any(AuthUserAttribute::class.java),
            any(),
            ArgumentMatchers.any<Consumer<AuthUpdateAttributeResult>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val attribute = hashMapOf(
            "userAttributeKey" to "email",
            "value" to "test@test.com"
        )
        val data: HashMap<*, *> = hashMapOf(
            "attribute" to attribute
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("updateUserAttribute", arguments)
        val res = mapOf(
            "isUpdated" to true,
            "nextStep" to mapOf(
                "updateAttributeStep" to "CONFIRM_ATTRIBUTE_WITH_CODE",
                "codeDeliveryDetails" to mapOf(
                    "destination" to "test@test.com",
                    "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
                    "attributeName" to "email"
                ),
                "additionalInfo" to "{}"
            )
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(res)
    }

    @Test
    fun updateUserAttributeCustom_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareUpdateUserAttributeResult(mockResult, mockUpdateUserAttributeResult)
            null as Void?
        }.`when`(mockAuth).updateUserAttribute(
            any(AuthUserAttribute::class.java),
            any(),
            ArgumentMatchers.any<Consumer<AuthUpdateAttributeResult>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val attribute = hashMapOf(
            "userAttributeKey" to "my_custom_attribute",
            "value" to "custom attribute value"
        )
        val data: HashMap<*, *> = hashMapOf(
            "attribute" to attribute
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("updateUserAttribute", arguments)
        val res = mapOf(
            "isUpdated" to true,
            "nextStep" to mapOf(
                "updateAttributeStep" to "CONFIRM_ATTRIBUTE_WITH_CODE",
                "codeDeliveryDetails" to mapOf(
                    "destination" to "test@test.com",
                    "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
                    "attributeName" to "email"
                ),
                "additionalInfo" to "{}"
            )
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(res)
    }

    @Test
    fun updateUserAttributeWithOptions_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareUpdateUserAttributeResult(mockResult, mockUpdateUserAttributeResult)
            null as Void?
        }.`when`(mockAuth).updateUserAttribute(
            any(AuthUserAttribute::class.java),
            ArgumentMatchers.any<AuthUpdateUserAttributeOptions>(),
            ArgumentMatchers.any<Consumer<AuthUpdateAttributeResult>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val attribute = hashMapOf(
            "userAttributeKey" to "email",
            "value" to "test@test.com"
        )
        val clientMetadata = hashMapOf("attribute" to "value")
        val options = hashMapOf(
            "clientMetadata" to clientMetadata
        )
        val data: HashMap<*, *> = hashMapOf(
            "attribute" to attribute,
            "options" to options
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("updateUserAttribute", arguments)
        val res = mapOf(
            "isUpdated" to true,
            "nextStep" to mapOf(
                "updateAttributeStep" to "CONFIRM_ATTRIBUTE_WITH_CODE",
                "codeDeliveryDetails" to mapOf(
                    "destination" to "test@test.com",
                    "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
                    "attributeName" to "email"
                ),
                "additionalInfo" to "{}"
            )
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(res)

        val expectedOptions = AWSCognitoAuthUpdateUserAttributeOptions
            .builder()
            .metadata(clientMetadata)
            .build()

        verify(mockAuth).updateUserAttribute(
            any(AuthUserAttribute::class.java),
            ArgumentMatchers.eq(expectedOptions),
            ArgumentMatchers.any<Consumer<AuthUpdateAttributeResult>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
    }

    @Test()
    fun updateUserAttribute_validation() {
        var attribute: HashMap<String, String>
        var data: HashMap<String, *>

        // Throws an exception with no attribute
        data = hashMapOf(
            "foo" to "bar"
        )
        assertThrows(InvalidRequestException::class.java) {
            FlutterUpdateUserAttributeRequest.validate(data)
        }

        // Throws an exception with no userAttributeKey
        attribute = hashMapOf(
            "value" to "custom attribute value"
        )
        data = hashMapOf(
            "attribute" to attribute
        )
        assertThrows(InvalidRequestException::class.java) {
            FlutterUpdateUserAttributeRequest.validate(data)
        }

        // Throws an exception with no value
        attribute = hashMapOf(
            "userAttributeKey" to "my_custom_attribute"
        )
        data = hashMapOf(
            "attribute" to attribute
        )
        assertThrows(InvalidRequestException::class.java) {
            FlutterUpdateUserAttributeRequest.validate(data)
        }

        // Does not thrown an exception with valid params
        attribute = hashMapOf(
            "userAttributeKey" to "my_custom_attribute",
            "value" to "custom attribute value"
        )
        data = hashMapOf(
            "attribute" to attribute
        )
        try {
            FlutterUpdateUserAttributeRequest.validate(data)
        } catch (e: Exception) {
            fail("Expected no exception to be thrown with valid data")
        }
    }

    @Test
    fun updateUserAttributes_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareUpdateUserAttributesResult(
                mockResult,
                mapOf(
                    AuthUserAttributeKey.email() to AuthUpdateAttributeResult(true, updateAttributeStep),
                    AuthUserAttributeKey.name() to AuthUpdateAttributeResult(true, updateAttributeStepWithoutConfirmation)
                )
            )
            null as Void?
        }.`when`(mockAuth).updateUserAttributes(
            any(),
            any(),
            ArgumentMatchers.any<Consumer<Map<AuthUserAttributeKey, AuthUpdateAttributeResult>>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val emailAttribute = hashMapOf(
            "userAttributeKey" to "email",
            "value" to "test@test.com"
        )
        val usernameAttribute = hashMapOf(
            "userAttributeKey" to "name",
            "value" to "testname"
        )
        val attributes = listOf(
            emailAttribute,
            usernameAttribute
        )
        val data: HashMap<*, *> = hashMapOf(
            "attributes" to attributes
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("updateUserAttributes", arguments)
        val res = mapOf(
            "email" to mapOf(
                "isUpdated" to true,
                "nextStep" to mapOf(
                    "updateAttributeStep" to "CONFIRM_ATTRIBUTE_WITH_CODE",
                    "additionalInfo" to "{}",
                    "codeDeliveryDetails" to mapOf(
                        "destination" to "test@test.com",
                        "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
                        "attributeName" to "email"
                    )
                )
            ),
            "name" to mapOf(
                "isUpdated" to true,
                "nextStep" to mapOf(
                    "updateAttributeStep" to "DONE",
                    "additionalInfo" to "{}",
                    "codeDeliveryDetails" to null
                )
            )
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(res)
    }

    @Test
    fun updateUserAttributesWithOptions_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareUpdateUserAttributesResult(
                mockResult,
                mapOf(
                    AuthUserAttributeKey.email() to AuthUpdateAttributeResult(true, updateAttributeStep),
                    AuthUserAttributeKey.name() to AuthUpdateAttributeResult(true, updateAttributeStepWithoutConfirmation)
                )
            )
            null as Void?
        }.`when`(mockAuth).updateUserAttributes(
            any(),
            ArgumentMatchers.any<AuthUpdateUserAttributesOptions>(),
            ArgumentMatchers.any<Consumer<Map<AuthUserAttributeKey, AuthUpdateAttributeResult>>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val emailAttribute = hashMapOf(
            "userAttributeKey" to "email",
            "value" to "test@test.com"
        )
        val usernameAttribute = hashMapOf(
            "userAttributeKey" to "name",
            "value" to "testname"
        )
        val attributes = listOf(
            emailAttribute,
            usernameAttribute
        )
        val clientMetadata = hashMapOf("attribute" to "value")
        val options = hashMapOf(
            "clientMetadata" to clientMetadata
        )
        val data: HashMap<*, *> = hashMapOf(
            "attributes" to attributes,
            "options" to options
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("updateUserAttributes", arguments)
        val res = mapOf(
            "email" to mapOf(
                "isUpdated" to true,
                "nextStep" to mapOf(
                    "updateAttributeStep" to "CONFIRM_ATTRIBUTE_WITH_CODE",
                    "additionalInfo" to "{}",
                    "codeDeliveryDetails" to mapOf(
                        "destination" to "test@test.com",
                        "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
                        "attributeName" to "email"
                    )
                )
            ),
            "name" to mapOf(
                "isUpdated" to true,
                "nextStep" to mapOf(
                    "updateAttributeStep" to "DONE",
                    "additionalInfo" to "{}",
                    "codeDeliveryDetails" to null
                )
            )
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(res)

        val expectedOptions = AWSCognitoAuthUpdateUserAttributesOptions
            .builder()
            .metadata(clientMetadata)
            .build()

        verify(mockAuth).updateUserAttributes(
            ArgumentMatchers.any<List<AuthUserAttribute>>(),
            ArgumentMatchers.eq(expectedOptions),
            ArgumentMatchers.any<Consumer<Map<AuthUserAttributeKey, AuthUpdateAttributeResult>>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
    }

    @Test()
    fun updateUserAttributes_validation() {
        var attributeOne: HashMap<String, String>
        var attributeTwo: HashMap<String, String>
        var attributes: List<Any>
        var data: HashMap<String, Any>

        // Throws an exception with no attributes
        data = hashMapOf(
            "foo" to "bar"
        )
        assertThrows(InvalidRequestException::class.java) {
            FlutterUpdateUserAttributesRequest.validate(data)
        }

        // Throws an exception with no userAttributeKey
        attributeOne = hashMapOf(
            "value" to "custom attribute value"
        )
        attributeTwo = hashMapOf(
            "userAttributeKey" to "my_custom_attribute_2",
            "value" to "custom attribute value"
        )
        attributes = listOf(attributeOne, attributeTwo)
        data = hashMapOf(
            "attributes" to attributes
        )
        assertThrows(InvalidRequestException::class.java) {
            FlutterUpdateUserAttributesRequest.validate(data)
        }

        // Throws an exception with no value
        attributeOne = hashMapOf(
            "userAttributeKey" to "my_custom_attribute"
        )
        attributeTwo = hashMapOf(
            "userAttributeKey" to "my_custom_attribute_2",
            "value" to "custom attribute value"
        )
        attributes = listOf(attributeOne, attributeTwo)
        data = hashMapOf(
            "attributes" to attributes
        )
        assertThrows(InvalidRequestException::class.java) {
            FlutterUpdateUserAttributesRequest.validate(data)
        }

        // Does not throw an exception with valid params
        attributeOne = hashMapOf(
            "userAttributeKey" to "my_custom_attribute",
            "value" to "custom attribute value"
        )
        attributeTwo = hashMapOf(
            "userAttributeKey" to "my_custom_attribute_2",
            "value" to "custom attribute value"
        )
        attributes = listOf(attributeOne, attributeTwo)
        data = hashMapOf(
            "attributes" to attributes
        )
        try {
            FlutterUpdateUserAttributesRequest.validate(data)
        } catch (e: Exception) {
            fail("Expected no exception to be thrown with valid data")
        }
    }

    @Test
    fun confirmUserAttribute_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareConfirmUserAttributeResult(mockResult)
            null as Void?
        }.`when`(mockAuth).confirmUserAttribute(any(AuthUserAttributeKey::class.java), anyString(), ArgumentMatchers.any<Action>(), ArgumentMatchers.any<Consumer<AuthException>>())
        val data: HashMap<*, *> = hashMapOf(
            "userAttributeKey" to "email",
            "confirmationCode" to "123456"
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("confirmUserAttribute", arguments)

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(ArgumentMatchers.any<LinkedTreeMap<String, Any>>())
    }

    @Test()
    fun confirmUserAttribute_validation() {
        var data: HashMap<String, *>

        // Throws an exception with no userAttributeKey
        data = hashMapOf(
            "confirmationCode" to "123456"
        )
        assertThrows(InvalidRequestException::class.java) {
            FlutterConfirmUserAttributeRequest.validate(data)
        }

        // Throws an exception with no confirmationCode
        data = hashMapOf(
            "userAttributeKey" to "email"
        )
        assertThrows(InvalidRequestException::class.java) {
            FlutterConfirmUserAttributeRequest.validate(data)
        }

        // Does not thrown an exception with valid params
        data = hashMapOf(
            "userAttributeKey" to "email",
            "confirmationCode" to "123456"
        )
        try {
            FlutterConfirmUserAttributeRequest.validate(data)
        } catch (e: Exception) {
            fail("Expected no exception to be thrown with valid data")
        }
    }

    @Test
    fun resendUserAttributeConfirmationCode_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareResendUserAttributeConfirmationCodeResult(mockResult, codeDeliveryDetails)
            null as Void?
        }.`when`(mockAuth).resendUserAttributeConfirmationCode(
            any(AuthUserAttributeKey::class.java),
            any(),
            ArgumentMatchers.any<Consumer<AuthCodeDeliveryDetails>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val data: HashMap<*, *> = hashMapOf(
            "userAttributeKey" to "email"
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("resendUserAttributeConfirmationCode", arguments)
        val res = mapOf(
            "codeDeliveryDetails" to mapOf(
                "destination" to "test@test.com",
                "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
                "attributeName" to "email"
            )
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(res)
    }

    @Test
    fun resendUserAttributeConfirmationCodeWithOptions_returnsSuccess() {
        // Arrange
        doAnswer { invocation: InvocationOnMock ->
            plugin.prepareResendUserAttributeConfirmationCodeResult(mockResult, codeDeliveryDetails)
            null as Void?
        }.`when`(mockAuth).resendUserAttributeConfirmationCode(
            any(AuthUserAttributeKey::class.java),
            ArgumentMatchers.any<AuthResendUserAttributeConfirmationCodeOptions>(),
            ArgumentMatchers.any<Consumer<AuthCodeDeliveryDetails>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val clientMetadata = hashMapOf("attribute" to "value")
        val options = hashMapOf(
            "clientMetadata" to clientMetadata
        )
        val data: HashMap<*, *> = hashMapOf(
            "userAttributeKey" to "email",
            "options" to options
        )
        val arguments = hashMapOf("data" to data)
        val call = MethodCall("resendUserAttributeConfirmationCode", arguments)
        val res = mapOf(
            "codeDeliveryDetails" to mapOf(
                "destination" to "test@test.com",
                "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
                "attributeName" to "email"
            )
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).success(res)

        val expectedOptions = AWSCognitoAuthResendUserAttributeConfirmationCodeOptions
            .builder()
            .metadata(clientMetadata)
            .build()

        verify(mockAuth).resendUserAttributeConfirmationCode(
            ArgumentMatchers.any(AuthUserAttributeKey::class.java),
            ArgumentMatchers.eq(expectedOptions),
            ArgumentMatchers.any<Consumer<AuthCodeDeliveryDetails>>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
    }

    @Test()
    fun resendUserAttributeConfirmationCode_validation() {
        var data: HashMap<String, *>

        // Throws an exception with no userAttributeKey
        data = hashMapOf(
            "foo" to "bar"
        )
        assertThrows(InvalidRequestException::class.java) {
            FlutterResendUserAttributeConfirmationCodeRequest.validate(data)
        }

        // Does not thrown an exception with valid params
        data = hashMapOf(
            "userAttributeKey" to "email"
        )
        try {
            FlutterResendUserAttributeConfirmationCodeRequest.validate(data)
        } catch (e: Exception) {
            fail("Expected no exception to be thrown with valid data")
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
