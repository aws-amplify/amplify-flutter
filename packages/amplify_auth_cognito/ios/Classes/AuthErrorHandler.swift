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

func handleAuthError(error: AuthError, flutterResult: FlutterResult, msg: String){
    if case .service( let localizedError, let recoverySuggestion, let error) = error {
        let errorCode = error != nil ? "\(error!)" : "unknown"
        SwiftAuthCognito.logErrorContents(messages: [localizedError, recoverySuggestion, errorCode])
        formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
    }
    if case .configuration(let localizedError, let recoverySuggestion, let error) = error {
        let errorCode = error != nil ? "\(error!)" : "configuration"
        SwiftAuthCognito.logErrorContents(messages: [localizedError, recoverySuggestion, errorCode])
        formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
    }
    if case .unknown(let localizedError, let error) = error {
        let errorCode = error != nil ? "\(error!)" : "unknown"
        SwiftAuthCognito.logErrorContents(messages: [localizedError, "unknown error"])
        formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: "An unknown error has occurred.")
    }
    if case .invalidState(let localizedError, let recoverySuggestion, let error) = error {
        let errorCode = error != nil ? "\(error!)" : "invalidState"
        SwiftAuthCognito.logErrorContents(messages: [localizedError, recoverySuggestion, errorCode])
        formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
    }
    if case .notAuthorized(let localizedError,  let recoverySuggestion, let error) = error {
        let errorCode = error != nil ? "\(error!)" : "notAuthorized"
        SwiftAuthCognito.logErrorContents(messages: [localizedError, recoverySuggestion, errorCode])
        formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
    }
    if case .validation(let field, let localizedError, let recoverySuggestion, let error) = error {
        let errorCode = error != nil ? "\(error!)" : "validation"
        SwiftAuthCognito.logErrorContents(messages: [field, localizedError, recoverySuggestion, errorCode])
        formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
    }
    if case .signedOut(let localizedError, let recoverySuggestion, let error) = error {
        let errorCode = error != nil ? "\(error!)" : "signedOut"
        SwiftAuthCognito.logErrorContents(messages: [localizedError, recoverySuggestion, errorCode])
        formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
    }
    if case .sessionExpired(let localizedError, let recoverySuggestion, let error) = error {
        let errorCode = error != nil ? "\(error!)" : "sessionExpired"
        SwiftAuthCognito.logErrorContents(messages: [localizedError, recoverySuggestion, errorCode])
        formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
    }
}

func formatError(flutterResult: FlutterResult, errorCode: String, msg: String, localizedError: String, recoverySuggestion: String) {
    var errorMap: [String: Any] = formatErrorMap(errorCode: errorCode, localizedError: localizedError)
    errorMap["PLATFORM_EXCEPTIONS"] = platformExceptions(localizedError: localizedError, recoverySuggestion: recoverySuggestion)
    prepareError(flutterResult: flutterResult,  msg: msg, errorMap: errorMap)
}


func prepareError(flutterResult: FlutterResult, msg: String, errorMap: [String: Any]) {
    flutterResult(FlutterError(
                    code: "AmplifyException",
                    message: msg,
                    details: errorMap)
    )
}

func platformExceptions(localizedError: String, recoverySuggestion: String) -> [String: String] {
    var platformDict: [String: String] = [:]
    platformDict["platform"] = "iOS"
    platformDict["localizedErrorMessage"] = localizedError
    platformDict["recoverySuggestion"] = recoverySuggestion
    return platformDict
}

func formatErrorMap(errorCode: String, localizedError: String = "") -> [String: Any] {
    var errorDict: [String: Any] = [:]
    let errorCodeConversion: [String: String] = [
        "codeExpired": "CODE_EXPIRED",
        "codeMismatch": "CODE_MISMATCH",
        "invalidParameter": "INVALID_PARAMETER",
        "mfaMethodNotFound": "MFA_METHOD_NOT_FOUND",
        "passwordResetRequired": "PASSWORD_RESET_REQUIRED",
        "softwareTokenMFANotEnabled": "SOFTWARE_TOKEN_MFA_NOT_FOUND",
        "usernameExists": "USERNAME_EXISTS",
        "userNotConfirmed": "USER_NOT_CONFIRMED",
        "userNotFound": "USER_NOT_FOUND",
        "aliasExists": "ALIAS_EXISTS",
        "codeDeliveryFailure": "CODE_DELIVERY_FAILURE",
        "internalError": "INTERNAL_ERROR",
        "invalidLambdaResponse": "INVALID_LAMBDA_RESPONSE",
        "invalidPassword": "INVALID_PASSWORD",
        "notAuthorized": "NOT_AUTHORIZED",
        "resourceNotFound": "RESOURCE_NOT_FOUND",
        "tooManyRequests": "TOO_MANY_REQUESTS",
        "unexpectedLambda": "UNEXPECTED_LAMBDA",
        "userLambdaValidation": "USER_LAMBDA_VALIDATION",
        "requestLimitExceeded": "REQUEST_LIMIT_EXCEEDED",
        "tooManyFailedAttempts": "TOO_MANY_FAILED_ATTEMPTS",
        "invalidState": "INVALID_STATE",
        "signedOut": "SIGNED_OUT",
        "configuration": "CONFIGURATION",
        "validation": "VALIDATION",
        "sessionExpired": "SIGNED_OUT"
    ]
    
    errorDict[errorCodeConversion[errorCode] ?? "UNKNOWN"] =  (errorCodeConversion[errorCode] != nil) ? localizedError : "An unrecognized error has occurred. See logs for details."
    
    return errorDict
}
