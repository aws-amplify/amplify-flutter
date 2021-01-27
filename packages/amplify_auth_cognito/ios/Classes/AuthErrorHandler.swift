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

import Foundation
import Amplify
import AmplifyPlugins
import AWSCore
import amplify_core

func handleAuthError(authError: AuthError, flutterResult: FlutterResult){
    
    var exception: String = "UnrecognizedAuthError"
    if case .service(_, _, let error) = authError{
        if (error is AWSCognitoAuthError) {
            switch error as? AWSCognitoAuthError {
                case .aliasExists:
                   exception = "AliasExistsException"
                case .codeDelivery:
                    exception = "CodeDeliveryFailureException"
                case .codeExpired:
                    exception = "CodeExpiredException"
                case .codeMismatch:
                    exception = "CodeMismatchException"
                //TODO: Determine equivalent Android exception
                case .deviceNotTracked:
                    exception = "DeviceNotTrackedException"
                //TODO: Investigate Android case
                case .errorLoadingUI:
                    exception = "UnknownException"
                case .failedAttemptsLimitExceeded:
                    exception = "FailedAttemptsLimitExceededException"
                case .invalidAccountTypeException:
                    exception = "InvalidAccountTypeException"
                case .invalidParameter:
                    exception = "InvalidParameterException"
                case .invalidPassword:
                    exception = "InvalidPasswordException"
                case .lambda:
                    exception = "LambdaException"
                case .limitExceeded:
                    exception = "LimitExceededException"
                case .mfaMethodNotFound:
                    exception = "MFAMethodNotFoundException"
                //TODO: Determine equivalent Android exception
                case .network:
                    exception = "UnknownException"
                case .passwordResetRequired:
                    exception = "PasswordResetRequiredException"
                case .requestLimitExceeded:
                    exception = "TooManyRequestsException"
                case .resourceNotFound:
                    exception = "ResourceNotFoundException"
                case .softwareTokenMFANotEnabled:
                    exception = "SoftwareTokenMFANotFoundException"
                case .userCancelled:
                    exception = "UserCancelledException"
                case .usernameExists:
                    exception = "UsernameExistsException"
                case .userNotConfirmed:
                    exception = "UserNotConfirmedException"
                case .userNotFound:
                    exception = "UserNotFoundException"
                case .none:
                    exception = "UnknownException"
            }
        
        }
        // SessionUnavailableOfflineException
        // SessionUnavailableServiceException
    }
    
    if case .configuration = authError {
        exception = "ConfigurationException"
    }
    if case .unknown = authError {
        exception = "UnknownException"
    }
    if case .invalidState = authError {
        exception = "UnknownException"
    }
    if case .notAuthorized = authError {
        exception = "NotAuthorizedException"
    }
    if case .validation = authError {
        exception = "InvalidParameterException"
    }
    if case .signedOut = authError {
        exception = "SignedOutException"
    }
    if case .sessionExpired = authError {
        exception = "SessionExpiredException"
    }
    
    let details: Dictionary<String, String> = createSerializedError(authError: authError);
    
    ErrorUtil.postErrorToFlutterChannel(
        result: flutterResult,
        errorCode: exception,
        details: details)
}

private func createSerializedError(authError: AuthError)  -> Dictionary<String, String> {
    var serializedException: Dictionary<String, String> = [:]
    serializedException["message"] = authError.errorDescription
    serializedException["recoverySuggestion"] = authError.recoverySuggestion
    serializedException["underlyingException"] = authError.underlyingError.debugDescription
    return serializedException
}

