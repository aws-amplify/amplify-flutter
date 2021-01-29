package com.amazonaws.amplify.amplify_auth_cognito

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import com.amazonaws.AmazonClientException
import com.amazonaws.AmazonServiceException
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoCodeExpiredException
import com.amazonaws.services.cognitoidentityprovider.model.*
import com.amplifyframework.AmplifyException
import com.amplifyframework.auth.AuthException
import com.amplifyframework.core.Amplify
import io.flutter.plugin.common.MethodChannel

private val LOG = Amplify.Logging.forNamespace("amplify:flutter:auth_cognito")

fun getErrorCode(@NonNull error: Exception): String {
    var errorCode: String = "AmplifyAuthException"

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