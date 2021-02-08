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

import Foundation
import Amplify
import AmplifyPlugins
import AWSCore
import amplify_core


public class AuthErrorHandler {
    
    func handleAuthError(authError: AmplifyError, flutterResult: FlutterResult){
        var exception: String = "AuthException"
        if authError is AuthError {
            if case .service(_, _, let error) = authError as! AuthError{
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
                            exception = "AuthException"
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
                            exception = "AuthException"
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
                            exception = "AuthException"
                    }
                }
            }
            
            if case .configuration = authError as! AuthError {
                exception = "ConfigurationException"
            }
            if case .unknown = authError as! AuthError {
                exception = "UnknownException"
            }
            if case .invalidState = authError as! AuthError {
                exception = "AuthException"
            }
            if case .notAuthorized = authError as! AuthError  {
                exception = "NotAuthorizedException"
            }
            if case .validation = authError as! AuthError  {
                exception = "InvalidParameterException"
            }
            if case .signedOut = authError as! AuthError  {
                exception = "SignedOutException"
            }
            if case .sessionExpired = authError as! AuthError  {
                exception = "SessionExpiredException"
            }
        }
        
        let details: Dictionary<String, String> = createSerializedError(authError: authError)
        logErrorContents(error: authError)
        ErrorUtil.postErrorToFlutterChannel(result: flutterResult,
                                            errorCode: exception,
                                            details: details)
        
    }

   func prepareGenericException(flutterResult: @escaping FlutterResult, error: Error) {
        let details: Dictionary<String, String> = createSerializedError(message: ErrorMessages.missingExceptionMessage,
                                                                        recoverySuggestion: ErrorMessages.missingRecoverySuggestion,
                                                                        underlyingError: error)

        logErrorContents(error: error)
        ErrorUtil.postErrorToFlutterChannel(result: flutterResult,
                                            errorCode: "AuthException",
                                            details: details)
    }
    
    func createSerializedError(authError: AmplifyError)  -> Dictionary<String, String> {
        var serializedException: Dictionary<String, String> = [:]
        serializedException["message"] = authError.errorDescription
        serializedException["recoverySuggestion"] = authError.recoverySuggestion
        serializedException["underlyingException"] = authError.underlyingError?.localizedDescription
        return serializedException
    }

    private func createSerializedError(message: String, recoverySuggestion: String, underlyingError: Error)  -> Dictionary<String, String> {
        var serializedException: Dictionary<String, String> = [:]
        serializedException["message"] = message
        serializedException["recoverySuggestion"] = recoverySuggestion
        serializedException["underlyingException"] = underlyingError.localizedDescription
        return serializedException
    }
    
    func logErrorContents(error: Error) {
        log.error(error: error)
    }
}

extension AuthErrorHandler: DefaultLogger { }
