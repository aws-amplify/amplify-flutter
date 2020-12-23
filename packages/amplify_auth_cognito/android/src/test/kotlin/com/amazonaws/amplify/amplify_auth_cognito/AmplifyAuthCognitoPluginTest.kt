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

import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterAuthFailureMessage
import com.amazonaws.auth.AWSCredentials
import com.amazonaws.auth.BasicAWSCredentials
import com.amplifyframework.auth.AuthCategoryBehavior
import com.amplifyframework.auth.AuthCodeDeliveryDetails
import com.amplifyframework.auth.AuthException
import com.amplifyframework.auth.cognito.AWSCognitoAuthSession
import com.amplifyframework.auth.cognito.AWSCognitoUserPoolTokens
import com.amplifyframework.auth.options.AuthSignOutOptions
import com.amplifyframework.auth.options.AuthSignUpOptions
import com.amplifyframework.auth.result.AuthResetPasswordResult
import com.amplifyframework.auth.result.AuthSessionResult
import com.amplifyframework.auth.result.AuthSignInResult
import com.amplifyframework.auth.result.AuthSignUpResult
import com.amplifyframework.auth.result.step.AuthNextResetPasswordStep
import com.amplifyframework.auth.result.step.AuthNextSignInStep
import com.amplifyframework.auth.result.step.AuthNextSignUpStep
import com.amplifyframework.auth.result.step.AuthResetPasswordStep
import com.amplifyframework.auth.result.step.AuthSignInStep
import com.amplifyframework.auth.result.step.AuthSignUpStep
import com.amplifyframework.core.Action
import com.amplifyframework.core.Consumer
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mockito.any
import org.mockito.Mockito.anyString
import org.mockito.Mockito.doAnswer
import org.mockito.Mockito.mock
import org.mockito.Mockito.verify
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AmplifyAuthCognitoPluginTest {
  private lateinit var plugin: AuthCognito

  private val mockResult = mock(MethodChannel.Result::class.java)
  private val codeDeliveryDetails = AuthCodeDeliveryDetails("test@test.com", AuthCodeDeliveryDetails.DeliveryMedium.EMAIL, "email")
  private val signUpStep = AuthNextSignUpStep(AuthSignUpStep.CONFIRM_SIGN_UP_STEP, emptyMap(), codeDeliveryDetails)
  private val signInStep = AuthNextSignInStep(AuthSignInStep.CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE, emptyMap(), codeDeliveryDetails)
  private val resetStep = AuthNextResetPasswordStep(AuthResetPasswordStep.CONFIRM_RESET_PASSWORD_WITH_CODE, emptyMap(), codeDeliveryDetails)
  private val mockSignUpResult = AuthSignUpResult(false, signUpStep, null)
  private val mockSignInResult = AuthSignInResult(false, signInStep)
  private val mockResetPasswordResult = AuthResetPasswordResult(false, resetStep)
  private var currentException: AuthException? = null
  private var mockAuth = mock(AuthCategoryBehavior::class.java)

  @Before
  fun setup() {
    plugin = AuthCognito(mockAuth)
  }

  @Test
  fun signUp_returnsSuccess() {
    // Arrange
    doAnswer {
      if (this.currentException == null) {
        plugin.prepareSignUpResult(mockResult, mockSignUpResult)
      } else {
        plugin.prepareError(mockResult, currentException as AuthException, FlutterAuthFailureMessage.SIGNUP.toString())
      }
      null
    }.`when`(mockAuth).signUp(
      anyString(),
      anyString(),
      any<AuthSignUpOptions>(),
      any<Consumer<AuthSignUpResult>>(),
      any<Consumer<AuthException>>()
    )
    val userAttributes = hashMapOf("email" to "test@test.com")
    val options = hashMapOf("userAttributes" to userAttributes)
    val data: Map<*, *> = hashMapOf(
      "username" to "testUser",
      "password" to "testPassword",
      "options" to options
    )
    val call = MethodCall("signUp", hashMapOf("data" to data))
    val res = hashMapOf(
      "isSignUpComplete" to false,
      "nextStep" to hashMapOf(
        "signUpStep" to "CONFIRM_SIGN_UP_STEP",
        "additionalInfo" to "{}",
        "codeDeliveryDetails" to hashMapOf(
          "destination" to "test@test.com",
          "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
          "attributeName" to "email"
        )
      )
    )

    // Act
    plugin.onMethodCall(call, mockResult)

    // Assert
    verify(mockResult).success(res)
  }

  @Test
  fun confirmSignUp_returnsSuccess() {
    // Arrange
    doAnswer {
      plugin.prepareSignUpResult(mockResult, mockSignUpResult)
      null
    }.`when`(mockAuth).confirmSignUp(
      anyString(),
      anyString(),
      any<Consumer<AuthSignUpResult>>(),
      any<Consumer<AuthException>>()
    )

    val data = hashMapOf(
      "username" to "testUser",
      "confirmationCode" to "confirmationCode"
    )
    val call = MethodCall("confirmSignUp", hashMapOf("data" to data))
    val res = hashMapOf(
      "isSignUpComplete" to false,
      "nextStep" to hashMapOf(
        "signUpStep" to "CONFIRM_SIGN_UP_STEP",
        "additionalInfo" to "{}",
        "codeDeliveryDetails" to hashMapOf(
          "destination" to "test@test.com",
          "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
          "attributeName" to "email"
        )
      )
    )

    // Act
    plugin.onMethodCall(call, mockResult)

    // Assert
    verify(mockResult).success(res)
  }

  @Test
  fun resendSignUpCode_returnsSuccess() {
    // Arrange
    doAnswer {
      plugin.prepareSignUpResult(mockResult, mockSignUpResult)
      null
    }.`when`(mockAuth).resendSignUpCode(
      anyString(),
      any<Consumer<AuthSignUpResult>>(),
      any<Consumer<AuthException>>()
    )

    val data = hashMapOf("username" to "testUser")
    val call = MethodCall("resendSignUpCode", hashMapOf("data" to data))

    // Act
    plugin.onMethodCall(call, mockResult)

    // Assert
    verify(mockResult).success(any<Map<String, Any>>())
  }

  @Test
  fun signIn_returnsSuccess() {
    // Arrange
    doAnswer {
      plugin.prepareSignInResult(mockResult, mockSignInResult)
      null
    }.`when`(mockAuth).signIn(
      anyString(),
      anyString(),
      any<Consumer<AuthSignInResult>>(),
      any<Consumer<AuthException>>()
    )

    val data = hashMapOf(
      "username" to "testUser",
      "password" to "testPassword"
    )
    val call = MethodCall("signIn", hashMapOf("data" to data))

    // Act
    plugin.onMethodCall(call, mockResult)

    // Assert
    verify(mockResult).success(hashMapOf(
      "isSignedIn" to false,
      "nextStep" to hashMapOf(
        "signInStep" to "CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE",
        "additionalInfo" to "{}",
        "codeDeliveryDetails" to hashMapOf(
          "destination" to "test@test.com",
          "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
          "attributeName" to "email"
        )
      )
    ))
  }

  @Test
  fun confirmSignIn_returnsSuccess() {
    // Arrange
    doAnswer {
      plugin.prepareSignInResult(mockResult, mockSignInResult)
      null
    }.`when`(mockAuth).confirmSignIn(
      anyString(),
      any<Consumer<AuthSignInResult>>(),
      any<Consumer<AuthException>>()
    )

    val data = hashMapOf("confirmationCode" to "confirmationCode")
    val call = MethodCall("confirmSignIn", hashMapOf("data" to data))

    // Act
    plugin.onMethodCall(call, mockResult)

    // Assert
    verify(mockResult).success(any<Map<String, Any>>())
  }

  @Test
  fun signOut_returnsSuccess() {
    // Arrange
    doAnswer {
      plugin.prepareSignOutResult(mockResult)
      null
    }.`when`(mockAuth).signOut(
      any<AuthSignOutOptions>(),
      any<Action>(),
      any<Consumer<AuthException>>()
    )

    val data = hashMapOf("globalSignOut" to false)
    val call = MethodCall("signOut", hashMapOf("data" to data))

    // Act
    plugin.onMethodCall(call, mockResult)

    // Assert
    verify(mockResult).success(any<Map<String, Any>>())
  }

  @Test
  fun updatePassword_returnsSuccess() {
    // Arrange
    doAnswer {
      plugin.prepareUpdatePasswordResult(mockResult)
      null
    }.`when`(mockAuth).updatePassword(
      anyString(),
      anyString(),
      any<Action>(),
      any<Consumer<AuthException>>()
    )

    val data = hashMapOf(
      "newPassword" to "newPassword",
      "oldPassword" to "oldPassword"
    )
    val call = MethodCall("updatePassword", hashMapOf("data" to data))

    // Act
    plugin.onMethodCall(call, mockResult)

    // Assert
    verify(mockResult).success(any<Map<String, Any>>())
  }

  @Test
  fun resetPassword_returnsSuccess() {
    // Arrange
    doAnswer {
      plugin.prepareResetPasswordResult(mockResult, mockResetPasswordResult)
      null
    }.`when`(mockAuth).resetPassword(
      anyString(),
      any<Consumer<AuthResetPasswordResult>>(),
      any<Consumer<AuthException>>()
    )

    val data = hashMapOf("username" to "username")
    val call = MethodCall("resetPassword", hashMapOf("data" to data))

    // Act
    plugin.onMethodCall(call, mockResult)

    // Assert
    verify(mockResult).success(any<Map<String, Any>>())
  }

  @Test
  fun confirmPassword_returnsSuccess() {
    // Arrange
    doAnswer {
      plugin.prepareUpdatePasswordResult(mockResult)
      null
    }.`when`(mockAuth).confirmResetPassword(
      anyString(),
      anyString(),
      any<Action>(),
      any<Consumer<AuthException>>()
    )

    val data = hashMapOf(
      "username" to "username",
      "newPassword" to "newPassword",
      "confirmationCode" to "confirmationCode"
    )
    val call = MethodCall("confirmPassword", hashMapOf("data" to data))

    // Act
    plugin.onMethodCall(call, mockResult)

    // Assert
    verify(mockResult).success(any<Map<String, Any>>())
  }

  @Test
  fun getCurrentUser_returnsSuccess() {
    // Arrange
    doAnswer {
      plugin.prepareUpdatePasswordResult(mockResult)
      null
    }.`when`(mockAuth).currentUser

    val data = hashMapOf(
      "username" to "username",
      "userSub" to "userSub"
    )
    val call = MethodCall("getCurrentUser", hashMapOf("data" to data))

    // Act
    plugin.onMethodCall(call, mockResult)

    // Assert
    verify(mockResult).success(any<Map<String, Any>>())
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
    doAnswer {
      plugin.prepareCognitoSessionResult(mockResult, mockSession)
      null
    }.`when`(mockAuth).fetchAuthSession(any(), any())

    val data = hashMapOf("getAWSCredentials" to true)
    val call = MethodCall("fetchAuthSession", hashMapOf("data" to data))

    // Act
    plugin.onMethodCall(call, mockResult)

    // Assert
    verify(mockResult).success(hashMapOf(
      "isSignedIn" to true,
      "identityId" to "id",
      "userSub" to "sub",
      "credentials" to hashMapOf(
        "accessKey" to "access",
        "secretKey" to "secret"
      ),
      "tokens" to hashMapOf(
        "accessToken" to "access",
        "idToken" to "id",
        "refreshToken" to "refresh"
      )
    ))
  }
}
