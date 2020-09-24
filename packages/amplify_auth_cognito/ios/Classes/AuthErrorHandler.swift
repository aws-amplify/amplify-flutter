//
//  AuthErrorHandler.swift
//  amplify_auth_cognito
//
//  Created by Noyes, Dustin on 9/24/20.
//

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
    switch errorCode {
    case "codeExpired":
        errorDict["CODE_EXPIRED"] = localizedError
    case "codeMismatch":
        errorDict["CODE_MISMATCH"] = localizedError
    case "invalidParameter":
        errorDict["INVALID_PARAMETER"] = localizedError
    case "mfaMethodNotFound":
        errorDict["MFA_METHOD_NOT_FOUND"] = localizedError
    case "passwordResetRequired":
        errorDict["PASSWORD_RESET_REQUIRED"] = localizedError
    case "softwareTokenMFANotEnabled":
        errorDict["SOFTWARE_TOKEN_MFA_NOT_FOUND"] = localizedError
    case "usernameExists":
        errorDict["USERNAME_EXISTS"] = localizedError
    case "userNotConfirmed":
        errorDict["USER_NOT_CONFIRMED"] = localizedError
    case "userNotFound":
        errorDict["USER_NOT_FOUND"] = localizedError
    case "aliasExists":
        errorDict["ALIAS_EXISTS"] = localizedError
    case "codeDeliveryFailure":
        errorDict["CODE_DELIVERY_FAILURE"] = localizedError
    case "internalError":
        errorDict["INTERNAL_ERROR"] = localizedError
    case "invalidLambdaResponse":
        errorDict["INVALID_LAMBDA_RESPONSE"] = localizedError
    case "invalidPassword":
        errorDict["INVALID_PASSWORD"] = localizedError
    case "notAuthorized":
        errorDict["NOT_AUTHORIZED"] = localizedError
    case "resourceNotFound":
        errorDict["RESOURCE_NOT_FOUND"] = localizedError
    case "tooManyRequests":
        errorDict["TOO_MANY_REQUESTS"] = localizedError
    case "unexpectedLambda":
        errorDict["UNEXPECTED_LAMBDA"] = localizedError
    case "userLambdaValidation":
        errorDict["USER_LAMBDA_VALIDATION"] = localizedError
    case "requestLimitExceeded":
        errorDict["REQUEST_LIMIT_EXCEEDED"] = localizedError
    case "tooManyFailedAttempts":
        errorDict["TOO_MANY_FAILED_ATTEMPTS"] = localizedError
    case "invalidState":
        errorDict["INVALID_STATE"] = localizedError
    case "signedOut":
        errorDict["SIGNED_OUT"] = localizedError
    case "configuration":
        errorDict["CONFIGURATION"] = localizedError
    case "validation":
        errorDict["VALIDATION"] = localizedError
    case "sessionExpired":
        // use SIGNED_OUT to match android
        errorDict["SIGNED_OUT"] = localizedError
    default:
        errorDict["UNKNOWN"] = "An unrecognized error has occurred. See logs for details."
    }
    return errorDict
}
