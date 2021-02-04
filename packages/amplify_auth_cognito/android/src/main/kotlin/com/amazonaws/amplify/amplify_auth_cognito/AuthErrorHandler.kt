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

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import com.amazonaws.AmazonClientException
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.FlutterValidationException
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoCodeExpiredException
import com.amazonaws.services.cognitoidentityprovider.model.InvalidLambdaResponseException
import com.amazonaws.services.cognitoidentityprovider.model.MFAMethodNotFoundException
import com.amazonaws.services.cognitoidentityprovider.model.NotAuthorizedException
import com.amazonaws.services.cognitoidentityprovider.model.SoftwareTokenMFANotFoundException
import com.amazonaws.services.cognitoidentityprovider.model.TooManyFailedAttemptsException
import com.amazonaws.services.cognitoidentityprovider.model.TooManyRequestsException
import com.amazonaws.services.cognitoidentityprovider.model.UnexpectedLambdaException
import com.amazonaws.services.cognitoidentityprovider.model.UserLambdaValidationException
import com.amplifyframework.AmplifyException
import com.amplifyframework.auth.AuthException
import com.amplifyframework.core.Amplify
import io.flutter.plugin.common.MethodChannel

private val LOG = Amplify.Logging.forNamespace("amplify:flutter:auth_cognito")

class AuthErrorHandler {
    fun getErrorCode(@NonNull error: Exception): String {
        var errorCode: String = "AuthException"
        /*
            Errors expected to use default error code:
            SessionUnavailableOfflineException, SessionUnavailableServiceException, InternalErrorException,
            AmazonClientException, AmazonServiceException
        */

        if (error is AuthException) {
            when (error) {
                is AuthException.AliasExistsException -> errorCode = "AliasExistsException"
                is AuthException.CodeDeliveryFailureException -> errorCode = "CodeDeliveryFailureException"
                is AuthException.CodeExpiredException -> errorCode = "CodeExpiredException"
                is AuthException.CodeMismatchException -> errorCode = "CodeMismatchException"
                is AuthException.FailedAttemptsLimitExceededException -> errorCode = "FailedAttemptsLimitExceededException"
                is AuthException.InvalidAccountTypeException -> errorCode = "InvalidAccountTypeException"
                is AuthException.InvalidParameterException -> errorCode = "InvalidParameterException"
                is AuthException.InvalidPasswordException -> errorCode = "InvalidPasswordException"
                is AuthException.LimitExceededException -> errorCode = "LimitExceededException"
                is AuthException.PasswordResetRequiredException -> errorCode = "PasswordResetRequiredException"
                is AuthException.ResourceNotFoundException -> errorCode = "ResourceNotFoundException"
                is AuthException.SessionExpiredException -> errorCode = "SessionExpiredException"
                is AuthException.SignedOutException -> errorCode = "SignedOutException"
                is AuthException.UnknownException -> errorCode = "UnknownException"
                is AuthException.UserCancelledException -> errorCode = "UserCancelledException"
                is AuthException.UsernameExistsException -> errorCode = "UsernameExistsException"
                is AuthException.UserNotConfirmedException -> errorCode = "UserNotConfirmedException"
                is AuthException.UserNotFoundException -> errorCode = "UserNotFoundException"
                else -> when (error.cause) {
                    is CognitoCodeExpiredException -> errorCode = "CodeExpiredException"
                    is InvalidLambdaResponseException -> errorCode = "LambdaException"
                    is MFAMethodNotFoundException -> errorCode = "MFAMethodNotFoundException"
                    is NotAuthorizedException -> errorCode = "NotAuthorizedException"
                    is SoftwareTokenMFANotFoundException -> errorCode = "SoftwareTokenMFANotFoundException"
                    is TooManyRequestsException -> errorCode = "TooManyRequestsException"
                    is UnexpectedLambdaException -> errorCode = "LambdaException"
                    is UserLambdaValidationException -> errorCode = "LambdaException"
                    is TooManyFailedAttemptsException -> errorCode = "FailedAttemptsLimitExceededException"
                }
            }
        }
        return errorCode
    }

    fun handleAuthError(@NonNull flutterResult: MethodChannel.Result, @NonNull error: Exception) {

        var serializedError: Map<String, Any?> = emptyMap()
        if (error is AmplifyException) {
            serializedError = ExceptionUtil.createSerializedError(error)
        // Need to catch and handle errors that originate in aws-android-sdk untransformed
        } else if (error is AmazonClientException) {
            var message: String = if (error.message != null) error.message!! else ExceptionMessages.unexpectedExceptionMessage
            serializedError = ExceptionUtil.createSerializedError(message, ExceptionMessages.unexpectedExceptionSuggestion, error.toString())
        }

        var errorCode = getErrorCode(error)
        LOG.error(errorCode, error)
        Handler (Looper.getMainLooper()).post {
            ExceptionUtil.postExceptionToFlutterChannel(flutterResult, errorCode, serializedError)
        }
    }

    fun prepareGenericException(@NonNull flutterResult: MethodChannel.Result, @NonNull error: Exception) {
        val errorCode = "AuthException"
        var message = ExceptionMessages.unexpectedExceptionMessage
        var recoverySuggestion = ExceptionMessages.unexpectedExceptionSuggestion
        LOG.error(errorCode, error)
        if (error is FlutterValidationException) {
            message = error.message ?: message
            recoverySuggestion = error.recoverySuggestion

        }
        val serializedError: Map<String, Any?> = ExceptionUtil.createSerializedError(
                message,
                recoverySuggestion,
                error.toString())
        
        Handler(Looper.getMainLooper()).post {
            ExceptionUtil.postExceptionToFlutterChannel(flutterResult,
                    errorCode,
                    serializedError)
        }
    }
}
