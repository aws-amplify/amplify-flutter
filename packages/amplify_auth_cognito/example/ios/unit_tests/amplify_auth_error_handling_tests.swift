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

import XCTest
import Amplify
@testable import AmplifyPlugins
@testable import AWSPluginsCore
@testable import amplify_auth_cognito

class  amplify_auth_cognito_error_handler_tests: XCTestCase {
    
    var errorHandler: AuthErrorHandler = AuthErrorHandler()

    func test_aliasExistsException() {
        let authError = AuthError.service("Could not deliver code", MockErrorConstants.aliasExistsError, AWSCognitoAuthError.codeDelivery)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "CodeDeliveryFailureException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.codeDelivery)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.aliasExistsError, details?["recoverySuggestion"])
               XCTAssertEqual( "Could not deliver code", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_codeDeliveryException() {
        let authError = AuthError.service("Could not deliver code", MockErrorConstants.codeDeliveryError, AWSCognitoAuthError.codeDelivery)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "CodeDeliveryFailureException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.codeDelivery)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.codeDeliveryError, details?["recoverySuggestion"])
               XCTAssertEqual( "Could not deliver code", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_codeExpiredException() {
        let authError = AuthError.service("Code expired", MockErrorConstants.codeExpiredError, AWSCognitoAuthError.codeExpired)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "CodeExpiredException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.codeExpired)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.codeExpiredError, details?["recoverySuggestion"])
               XCTAssertEqual( "Code expired", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_codeMismatchException() {
        let authError = AuthError.service("Code mismatch", MockErrorConstants.codeMismatchError, AWSCognitoAuthError.codeMismatch)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "CodeMismatchException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.codeMismatch)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.codeMismatchError, details?["recoverySuggestion"])
               XCTAssertEqual( "Code mismatch", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_deviceNotTrackedException() {
        let authError = AuthError.service("Device not tracked", MockErrorConstants.deviceNotRememberedError, AWSCognitoAuthError.deviceNotTracked)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "DeviceNotTrackedException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.deviceNotTracked)", details?["underlyingException"])
                XCTAssertEqual( MockErrorConstants.deviceNotRememberedError, details?["recoverySuggestion"])
               XCTAssertEqual( "Device not tracked", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_errorLoadingUIException() {
        let authError = AuthError.service("Error loading ui", MockErrorConstants.errorLoadingPageError, AWSCognitoAuthError.errorLoadingUI)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "AuthException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.errorLoadingUI)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.errorLoadingPageError, details?["recoverySuggestion"])
               XCTAssertEqual( "Error loading ui", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_failedAttemptsLimitExceededException() {
        let authError = AuthError.service("Failed limit exceeded", MockErrorConstants.tooManyFailedError, AWSCognitoAuthError.failedAttemptsLimitExceeded)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "FailedAttemptsLimitExceededException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.failedAttemptsLimitExceeded)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.tooManyFailedError, details?["recoverySuggestion"])
               XCTAssertEqual( "Failed limit exceeded", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_invalidAccountTypeException() {
        let authError = AuthError.service("Invalid account configuration", MockErrorConstants.signedInAWSCredentialsWithNoCIDPError.recoverySuggestion, AWSCognitoAuthError.invalidAccountTypeException)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "InvalidAccountTypeException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.invalidAccountTypeException)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.signedInAWSCredentialsWithNoCIDPError.recoverySuggestion, details?["recoverySuggestion"])
               XCTAssertEqual( "Invalid account configuration", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_invalidParameterException() {
        let authError = AuthError.service("Invalid parameter", MockErrorConstants.invalidParameterError, AWSCognitoAuthError.invalidParameter)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "InvalidParameterException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.invalidParameter)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.invalidParameterError, details?["recoverySuggestion"])
               XCTAssertEqual( "Invalid parameter", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_invalidPasswordException() {
        let authError = AuthError.service("Invalid password", MockErrorConstants.invalidPasswordError, AWSCognitoAuthError.invalidPassword)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "InvalidPasswordException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.invalidPassword)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.invalidPasswordError, details?["recoverySuggestion"])
               XCTAssertEqual( "Invalid password", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_lambdaException() {
        let authError = AuthError.service("Invalid lambda response", MockErrorConstants.lambdaError, AWSCognitoAuthError.lambda)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "LambdaException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.lambda)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.lambdaError, details?["recoverySuggestion"])
               XCTAssertEqual( "Invalid lambda response", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_limitExceededException() {
        let authError = AuthError.service("Limit exceeded", MockErrorConstants.tooManyRequestError, AWSCognitoAuthError.requestLimitExceeded)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "TooManyRequestsException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.requestLimitExceeded)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.tooManyRequestError, details?["recoverySuggestion"])
               XCTAssertEqual( "Limit exceeded", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_mfaMethodNotFoundException() {
        let authError = AuthError.service("MFA method not found", MockErrorConstants.mfaMethodNotFoundError, AWSCognitoAuthError.mfaMethodNotFound)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "MFAMethodNotFoundException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.mfaMethodNotFound)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.mfaMethodNotFoundError, details?["recoverySuggestion"])
               XCTAssertEqual( "MFA method not found", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_unknownException() {
        let authError = AuthError.unknown("Encountered unexpected problem", nil)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "UnknownException", res.code )
               XCTAssertEqual( "nil", details?["underlyingException"])
            XCTAssertEqual( true, details?["recoverySuggestion"]?.starts(with: "This should not happen."))
               XCTAssertEqual( "Unexpected error occurred with message: Encountered unexpected problem", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_networkException() {
        let authError = AuthError.service("Network issue", "Network issue", AWSCognitoAuthError.network)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "AuthException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.network)", details?["underlyingException"])
               XCTAssertEqual( "Network issue", details?["recoverySuggestion"])
               XCTAssertEqual( "Network issue", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_passwordResetRequiredException() {
        let authError = AuthError.service("Password reset required", MockErrorConstants.passwordResetRequired, AWSCognitoAuthError.passwordResetRequired)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "PasswordResetRequiredException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.passwordResetRequired)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.passwordResetRequired, details?["recoverySuggestion"])
               XCTAssertEqual( "Password reset required", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_resourceNotFoundException() {
        let authError = AuthError.service("Resource not found", MockErrorConstants.resourceNotFoundError, AWSCognitoAuthError.resourceNotFound)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "ResourceNotFoundException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.resourceNotFound)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.resourceNotFoundError, details?["recoverySuggestion"])
               XCTAssertEqual( "Resource not found", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_softwareTokenMFANotEnabledException() {
        let authError = AuthError.service("TOTP not enabled", MockErrorConstants.softwareTokenNotFoundError, AWSCognitoAuthError.softwareTokenMFANotEnabled)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "SoftwareTokenMFANotFoundException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.softwareTokenMFANotEnabled)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.softwareTokenNotFoundError, details?["recoverySuggestion"])
               XCTAssertEqual( "TOTP not enabled", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_userCancelledException() {
        let authError = AuthError.service("User cancelled", MockErrorConstants.hostedUIUserCancelledError.recoverySuggestion, AWSCognitoAuthError.userCancelled)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "UserCancelledException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.userCancelled)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.hostedUIUserCancelledError.recoverySuggestion, details?["recoverySuggestion"])
               XCTAssertEqual( "User cancelled", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_usernameExistsException() {
        let authError = AuthError.service("User name exists", MockErrorConstants.userNameExistsError, AWSCognitoAuthError.usernameExists)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "UsernameExistsException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.usernameExists)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.userNameExistsError, details?["recoverySuggestion"])
               XCTAssertEqual( "User name exists", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_userNotConfirmedException() {
        let authError = AuthError.service("User not confirmed", MockErrorConstants.userNotConfirmedError, AWSCognitoAuthError.userNotConfirmed)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "UserNotConfirmedException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.userNotConfirmed)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.userNotConfirmedError, details?["recoverySuggestion"])
               XCTAssertEqual( "User not confirmed", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_userNotFoundException() {
        let authError = AuthError.service("User not found", MockErrorConstants.userNotFoundError, AWSCognitoAuthError.userNotFound)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "UserNotFoundException", res.code )
               XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.userNotFound)", details?["underlyingException"])
               XCTAssertEqual( MockErrorConstants.userNotFoundError, details?["recoverySuggestion"])
               XCTAssertEqual( "User not found", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_configurationException() {
        let authError = AuthError.configuration("Invalid Configuration", MockErrorConstants.configurationError)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "ConfigurationException", res.code )
               XCTAssertEqual( MockErrorConstants.configurationError, details?["recoverySuggestion"])
               XCTAssertEqual( "Invalid Configuration", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_invalidStateException() {
        let authError = AuthError.invalidState("Invalid State", MockErrorConstants.invalidStateError)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "AuthException", res.code )
               XCTAssertEqual( MockErrorConstants.invalidStateError, details?["recoverySuggestion"])
               XCTAssertEqual( "Invalid State", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_notAuthorizedException() {
        let authError = AuthError.notAuthorized("Not Authorized", MockErrorConstants.notAuthorizedError)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "NotAuthorizedException", res.code )
               XCTAssertEqual( MockErrorConstants.notAuthorizedError, details?["recoverySuggestion"])
               XCTAssertEqual( "Not Authorized", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_validationException() {
        let authError = AuthError.validation("email", "Validation error", MockErrorConstants.invalidParameterError)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "InvalidParameterException", res.code )
               XCTAssertEqual( MockErrorConstants.invalidParameterError, details?["recoverySuggestion"])
               XCTAssertEqual( "Validation error", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signedOutException() {
        let authError = AuthError.signedOut("User is signed out", MockErrorConstants.fetchAttributeSignedOutError.recoverySuggestion)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "SignedOutException", res.code )
               XCTAssertEqual( MockErrorConstants.fetchAttributeSignedOutError.recoverySuggestion, details?["recoverySuggestion"])
               XCTAssertEqual( "User is signed out", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_sessionExpiredException() {
        let authError = AuthError.sessionExpired("Session expired", MockErrorConstants.usersubSessionExpiredError.recoverySuggestion)
        
        errorHandler.handleAuthError(authError: authError, flutterResult: {(result)->Void in
            if let res = result as? FlutterError {
               let details = res.details as? Dictionary<String, String>
               XCTAssertEqual( "SessionExpiredException", res.code )
               XCTAssertEqual( MockErrorConstants.usersubSessionExpiredError.recoverySuggestion, details?["recoverySuggestion"])
               XCTAssertEqual( "Session expired", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
}
