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
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoCodeExpiredException
import com.amazonaws.services.cognitoidentityprovider.model.InvalidLambdaResponseException
import com.amazonaws.services.cognitoidentityprovider.model.TooManyFailedAttemptsException
import com.amazonaws.services.cognitoidentityprovider.model.UnexpectedLambdaException
import com.amazonaws.services.cognitoidentityprovider.model.UserLambdaValidationException
import com.amazonaws.services.cognitoidentityprovider.model.ExpiredCodeException

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

        // error codes that are handled on the Dart side, excluding AuthException
        val supportedErrorCodes = listOf<String>(
                "AliasExistsException",
                "CodeDeliveryFailureException",
                "CodeExpiredException",
                "CodeMismatchException",
                "FailedAttemptsLimitExceededException",
                "InternalErrorException",
                "InvalidAccountTypeException",
                "InvalidParameterException",
                "InvalidPasswordException",
                "LambdaException",
                "LimitExceededException",
                "MFAMethodNotFoundException",
                "NotAuthorizedException",
                "PasswordResetRequiredException",
                "ResourceNotFoundException",
                "SessionExpiredException",
                "SessionUnavailableOfflineException",
                "SessionUnavailableServiceException",
                "SignedOutException",
                "SoftwareTokenMFANotFoundException",
                "TooManyFailedAttemptsException",
                "TooManyRequestsException",
                "UnknownException",
                "UserCancelledException",
                "UsernameExistsException",
                "UserNotConfirmedException",
                "UserNotFoundException",
                "AmplifyException"
        )

        if (error is AuthException) {
            when {
                supportedErrorCodes.contains(error.javaClass.simpleName) -> {
                    errorCode = error.javaClass.simpleName;
                }
                supportedErrorCodes.contains(error.cause?.javaClass?.simpleName) -> {
                    errorCode = error.cause!!.javaClass.simpleName;
                }
                else -> {
                    when (error.cause) {
                        // The following codes have to be explicitly mapped because the Exception
                        // name does not match the amplify exception name
                        is ExpiredCodeException -> errorCode = "CodeExpiredException"
                        is CognitoCodeExpiredException -> errorCode = "CodeExpiredException"
                        is TooManyFailedAttemptsException -> errorCode = "FailedAttemptsLimitExceededException"
                        is InvalidLambdaResponseException -> errorCode = "LambdaException"
                        is UnexpectedLambdaException -> errorCode = "LambdaException"
                        is UserLambdaValidationException -> errorCode = "LambdaException"
                    }
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
            var message: String = if (error.message != null) error.message!! else ExceptionMessages.missingExceptionMessage
            serializedError = ExceptionUtil.createSerializedError(message, ExceptionMessages.missingRecoverySuggestion, error.toString())
        }

        var errorCode = getErrorCode(error)
        LOG.error(errorCode, error)
        Handler (Looper.getMainLooper()).post {
            ExceptionUtil.postExceptionToFlutterChannel(flutterResult, errorCode, serializedError)
        }
    }

    fun prepareGenericException(@NonNull flutterResult: MethodChannel.Result, @NonNull error: Exception) {
        val errorCode = "AuthException"
        LOG.error(errorCode, error)
        val serializedError: Map<String, Any?> = ExceptionUtil.createSerializedError(
                ExceptionMessages.missingExceptionMessage,
                ExceptionMessages.missingRecoverySuggestion,
                error.toString())
        
        Handler(Looper.getMainLooper()).post {
            ExceptionUtil.postExceptionToFlutterChannel(flutterResult,
                    errorCode,
                    serializedError)
        }
    }
}
