/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import com.amazonaws.AmazonClientException
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterInvalidStateException
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.services.cognitoidentityprovider.model.AliasExistsException
import com.amazonaws.services.cognitoidentityprovider.model.CodeDeliveryFailureException
import com.amazonaws.services.cognitoidentityprovider.model.CodeMismatchException
import com.amazonaws.services.cognitoidentityprovider.model.ExpiredCodeException
import com.amazonaws.services.cognitoidentityprovider.model.InvalidLambdaResponseException
import com.amazonaws.services.cognitoidentityprovider.model.InvalidParameterException
import com.amazonaws.services.cognitoidentityprovider.model.InvalidPasswordException
import com.amazonaws.services.cognitoidentityprovider.model.InvalidUserPoolConfigurationException
import com.amazonaws.services.cognitoidentityprovider.model.LimitExceededException
import com.amazonaws.services.cognitoidentityprovider.model.NotAuthorizedException
import com.amazonaws.services.cognitoidentityprovider.model.PasswordResetRequiredException
import com.amazonaws.services.cognitoidentityprovider.model.ResourceNotFoundException
import com.amazonaws.services.cognitoidentityprovider.model.TooManyFailedAttemptsException
import com.amazonaws.services.cognitoidentityprovider.model.UnexpectedLambdaException
import com.amazonaws.services.cognitoidentityprovider.model.UserLambdaValidationException
import com.amazonaws.services.securitytoken.model.ExpiredTokenException
import com.amplifyframework.auth.AuthCategory
import com.amplifyframework.auth.AuthException
import com.amplifyframework.auth.options.AuthSignOutOptions
import com.amplifyframework.core.Action
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import com.amplifyframework.logging.Logger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers
import org.mockito.Mockito.any
import org.mockito.Mockito.anyString
import org.mockito.Mockito.doAnswer
import org.mockito.Mockito.doNothing
import org.mockito.Mockito.mock
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.mockito.invocation.InvocationOnMock
import org.robolectric.RobolectricTestRunner
import java.lang.reflect.Field
import java.lang.reflect.Modifier

@RunWith(RobolectricTestRunner::class)
class AmplifyAuthErrorHandlerTest {

    lateinit var plugin: AuthCognito

    private val mockResult = mock(MethodChannel.Result::class.java)
    private val defaultMessage = ExceptionMessages.defaultFallbackExceptionMessage
    private var mockAuth = mock(AuthCategory::class.java)
    private val data: HashMap<String, String> = HashMap()
    private val arguments: HashMap<String, Any> = hashMapOf("data" to data)
    private val cognitoErrorPrefix = "com.amazonaws.services.cognitoidentityprovider.model."
    private val cognitoErrorSuffix = " (Service: null; Status Code: 0; Error Code: null; Request ID: null)"
    private val errorHandler: AuthErrorHandler = AuthErrorHandler()

    @Before
    fun setup() {
        plugin = AuthCognito()
        val mockLog = mock(Logger::class.java)

        doNothing().`when`(mockLog).error(anyString(), any(AuthException::class.java))

        setFinalStatic(Amplify::class.java.getDeclaredField("Auth"), mockAuth)
    }

    @Test
    fun aliasExistsException() {
        // Arrange
        val expectedCode = "AliasExistsException"
        val exception: AuthException = AuthException.AliasExistsException(AliasExistsException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )

        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Retry operation and use another alias.",
            "message" to "Alias (an account with this email or phone) already exists in the system.",
            "underlyingException" to "${cognitoErrorPrefix}$expectedCode: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun codeDeliveryException() {
        // Arrange
        val expectedCode = "CodeDeliveryFailureException"
        val exception: AuthException = AuthException.CodeDeliveryFailureException(CodeDeliveryFailureException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Retry operation and send another confirmation code.",
            "message" to "Error in delivering the confirmation code.",
            "underlyingException" to "${cognitoErrorPrefix}$expectedCode: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun codeExpiredException() {
        // Arrange
        val expectedCode = "CodeExpiredException"
        val exception: AuthException = AuthException.CodeExpiredException(ExpiredCodeException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Resend a new confirmation code and then retry operation with it.",
            "message" to "Confirmation code has expired.",
            "underlyingException" to "${cognitoErrorPrefix}ExpiredCodeException: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun codeMismatchException() {
        // Arrange
        val expectedCode = "CodeMismatchException"
        val exception: AuthException = AuthException.CodeMismatchException(CodeMismatchException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Enter correct confirmation code.",
            "message" to "Confirmation code entered is not correct.",
            "underlyingException" to "${cognitoErrorPrefix}$expectedCode: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun failedAttemptsLimitExceededException() {
        // Arrange
        val expectedCode = "FailedAttemptsLimitExceededException"
        val exception: AuthException = AuthException.FailedAttemptsLimitExceededException(TooManyFailedAttemptsException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Please check out the service configuration to see the condition of locking.",
            "message" to "User has made too many failed attempts for a given action.",
            "underlyingException" to "${cognitoErrorPrefix}TooManyFailedAttemptsException: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun invalidAccountTypeExceptionException() {
        // Arrange
        val expectedCode = "InvalidAccountTypeException"
        val exception: AuthException = AuthException.InvalidAccountTypeException(InvalidUserPoolConfigurationException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Update your Auth configuration to an account type which supports this operation.",
            "message" to "The account type you have configured doesn't support this operation.",
            "underlyingException" to "${cognitoErrorPrefix}InvalidUserPoolConfigurationException: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun invalidParameterException() {
        // Arrange
        val expectedCode = "InvalidParameterException"
        val exception: AuthException = AuthException.InvalidParameterException(InvalidParameterException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Enter correct parameters.",
            "message" to "One or more parameters are incorrect.",
            "underlyingException" to "${cognitoErrorPrefix}$expectedCode: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun invalidPasswordException() {
        // Arrange
        val expectedCode = "InvalidPasswordException"
        val exception: AuthException = AuthException.InvalidPasswordException(InvalidPasswordException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Enter correct password.",
            "message" to "The password given is invalid.",
            "underlyingException" to "${cognitoErrorPrefix}$expectedCode: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun invalidStateException() {
        // Arrange
        val expectedCode = "InvalidStateException"
        val exception: AuthException = FlutterInvalidStateException("Invalid state message", "Invalid state recovery message")
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Invalid state recovery message",
            "message" to "Invalid state message",
            "underlyingException" to "java.lang.Exception: invalidState"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun limitExceededException() {
        // Arrange
        val expectedCode = "LimitExceededException"
        val exception: AuthException = AuthException.LimitExceededException(LimitExceededException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Please wait a while before re-attempting or increase the service limit.",
            "message" to "Number of allowed operation has exceeded.",
            "underlyingException" to "${cognitoErrorPrefix}$expectedCode: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun passwordResetRequiredException() {
        // Arrange
        val expectedCode = "PasswordResetRequiredException"
        val exception: AuthException = AuthException.PasswordResetRequiredException(PasswordResetRequiredException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Reset the password of the user.",
            "message" to "Required to reset the password of the user.",
            "underlyingException" to "${cognitoErrorPrefix}$expectedCode: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun resourceNotFoundException() {
        // Arrange
        val expectedCode = "ResourceNotFoundException"
        val exception: AuthException = AuthException.ResourceNotFoundException(ResourceNotFoundException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Retry with exponential back-off or check your config file to be sure the endpoint is valid.",
            "message" to "Could not find the requested online resource.",
            "underlyingException" to "${cognitoErrorPrefix}$expectedCode: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun sessionExpiredException() {
        // Arrange
        val expectedCode = "SessionExpiredException"
        val exception: AuthException = AuthException.SessionExpiredException(ExpiredTokenException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Please sign in and reattempt the operation.",
            "message" to "Your session has expired.",
            "underlyingException" to "com.amazonaws.services.securitytoken.model.ExpiredTokenException: SessionExpiredException (Service: null; Status Code: 0; Error Code: null; Request ID: null)"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun sessionUnavailableOfflineException() {
        // Arrange
        val expectedCode = "AuthException"
        val exception: AuthException = AuthException.SessionUnavailableOfflineException(AmazonClientException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Check online connectivity and retry operation.",
            "message" to "Unable to fetch/refresh credentials because the server is unreachable.",
            "underlyingException" to "com.amazonaws.AmazonClientException: AuthException"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun sessionUnavailableServiceException() {
        // Arrange
        val expectedCode = "AuthException"
        val exception: AuthException = AuthException.SessionUnavailableServiceException(AmazonClientException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Retry with exponential backoff.",
            "message" to "Unable to fetch/refresh credentials because of a service error.",
            "underlyingException" to "com.amazonaws.AmazonClientException: AuthException"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun signedOutException() {
        // Arrange
        val expectedCode = "SignedOutException"
        val exception: AuthException = AuthException.SignedOutException(AmazonClientException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "Please sign in and reattempt the operation.",
            "message" to "You are currently signed out.",
            "underlyingException" to "com.amazonaws.AmazonClientException: SignedOutException"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun unknownException() {
        // Arrange
        val expectedCode = "UnknownException"
        val exception: AuthException = AuthException.UnknownException(AmazonClientException(expectedCode))
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to "See the attached exception for more details",
            "message" to "An unclassified error prevented this operation.",
            "underlyingException" to "com.amazonaws.AmazonClientException: UnknownException"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun userCancelledException() {
        // Arrange
        val expectedCode = "UserCancelledException"
        val exception: AuthException = AuthException.UserCancelledException(expectedCode, AmazonClientException(expectedCode), expectedCode)
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to expectedCode,
            "message" to expectedCode,
            "underlyingException" to "com.amazonaws.AmazonClientException: UserCancelledException"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun notAuthorizedException() {
        // Arrange
        val expectedCode = "NotAuthorizedException"
        val exception = AuthException(expectedCode, NotAuthorizedException(expectedCode), expectedCode)
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to expectedCode,
            "message" to expectedCode,
            "underlyingException" to "${cognitoErrorPrefix}$expectedCode: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun invalidLambdaResponseException() {
        // Arrange
        val expectedCode = "LambdaException"
        val exception = AuthException(expectedCode, InvalidLambdaResponseException(expectedCode), expectedCode)
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to expectedCode,
            "message" to expectedCode,
            "underlyingException" to "${cognitoErrorPrefix}InvalidLambdaResponseException: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun unexpectedLambdaException() {
        // Arrange
        val expectedCode = "LambdaException"
        val exception = AuthException(expectedCode, UnexpectedLambdaException(expectedCode), expectedCode)
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to expectedCode,
            "message" to expectedCode,
            "underlyingException" to "${cognitoErrorPrefix}UnexpectedLambdaException: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun userLambdaValidationException() {
        // Arrange
        val expectedCode = "LambdaException"
        val exception = AuthException(expectedCode, UserLambdaValidationException(expectedCode), expectedCode)
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to expectedCode,
            "message" to expectedCode,
            "underlyingException" to "${cognitoErrorPrefix}UserLambdaValidationException: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun cognitoLimitExceededException() {
        // Arrange
        val expectedCode = "LimitExceededException"
        val exception = AuthException(expectedCode, LimitExceededException(expectedCode), expectedCode)
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to expectedCode,
            "message" to expectedCode,
            "underlyingException" to "${cognitoErrorPrefix}LimitExceededException: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun cognitoInvalidParameterException() {
        // Arrange
        val expectedCode = "InvalidParameterException"
        val exception = AuthException(expectedCode, InvalidParameterException(expectedCode), expectedCode)
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to expectedCode,
            "message" to expectedCode,
            "underlyingException" to "${cognitoErrorPrefix}InvalidParameterException: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun cognitoExpiredCodeException() {
        // Arrange
        val expectedCode = "CodeExpiredException"
        val exception = AuthException(expectedCode, ExpiredCodeException(expectedCode), expectedCode)
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to expectedCode,
            "message" to expectedCode,
            "underlyingException" to "${cognitoErrorPrefix}ExpiredCodeException: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun cognitoCodeMismatchException() {
        // Arrange
        val expectedCode = "CodeMismatchException"
        val exception = AuthException(expectedCode, CodeMismatchException(expectedCode), expectedCode)
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to expectedCode,
            "message" to expectedCode,
            "underlyingException" to "${cognitoErrorPrefix}CodeMismatchException: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    @Test
    fun cognitoCodeDeliveryFailureException() {
        // Arrange
        val expectedCode = "CodeDeliveryFailureException"
        val exception = AuthException(expectedCode, CodeDeliveryFailureException(expectedCode), expectedCode)
        doAnswer { invocation: InvocationOnMock ->
            errorHandler.handleAuthError(mockResult, exception)
            null as Void?
        }.`when`(mockAuth).signOut(
            ArgumentMatchers.any<AuthSignOutOptions>(),
            ArgumentMatchers.any<Action>(),
            ArgumentMatchers.any<Consumer<AuthException>>()
        )
        val call = MethodCall("signOut", arguments)

        val details = mapOf(
            "recoverySuggestion" to expectedCode,
            "message" to expectedCode,
            "underlyingException" to "${cognitoErrorPrefix}CodeDeliveryFailureException: ${expectedCode}$cognitoErrorSuffix"
        )

        // Act
        plugin.onMethodCall(call, mockResult)

        // Assert
        verify(mockResult, times(1)).error(expectedCode, defaultMessage, details)
    }

    private fun setFinalStatic(field: Field, newValue: Any?) {
        field.isAccessible = true
        val modifiersField: Field = Field::class.java.getDeclaredField("modifiers")
        modifiersField.isAccessible = true
        modifiersField.setInt(field, field.modifiers and Modifier.FINAL.inv())
        field.set(null, newValue)
    }
}
