//
//  DataStoreErrorHandler.swift
//  Pods
//
//  Created by Gupta, Praveen on 10/28/20.
//

import Foundation
import Amplify
import AmplifyPlugins

class FlutterDataStoreErrorHandler {
    
    static func handleDataStoreError(error: DataStoreError, flutterResult: FlutterResult, msg: String) {
        if case .internalOperation(let localizedError, let recoverySuggestion, let error) = error {
            let errorCode = error != nil ? "\(error!)" : "unknown"
            formatError(flutterResult: flutterResult,
                        errorCode: errorCode,
                        msg: msg,
                        localizedError: localizedError,
                        recoverySuggestion: recoverySuggestion)

        }
        if case .configuration(let localizedError, let recoverySuggestion, let error) = error {
            let errorCode = error != nil ? "\(error!)" : "configuration"
            formatError(flutterResult: flutterResult,
                        errorCode: errorCode,
                        msg: msg,
                        localizedError: localizedError,
                        recoverySuggestion: recoverySuggestion)

        }
        if case .invalidCondition(let localizedError, let recoverySuggestion, let error) = error {
            let errorCode = error != nil ? "\(error!)" : "invalidCondition"
            formatError(flutterResult: flutterResult,
                        errorCode: errorCode,
                        msg: msg,
                        localizedError: localizedError,
                        recoverySuggestion: recoverySuggestion)

        }
        if case .decodingError(let localizedError, let recoverySuggestion) = error {
            let errorCode = "decodingError"
            formatError(flutterResult: flutterResult,
                        errorCode: errorCode,
                        msg: msg,
                        localizedError: localizedError,
                        recoverySuggestion: recoverySuggestion)

        }
        if case .unknown(let localizedError, let recoverySuggestion, let error) = error {
            let errorCode = error != nil ? "\(error!)" : "unknown"
            formatError(flutterResult: flutterResult,
                        errorCode: errorCode,
                        msg: msg,
                        localizedError: localizedError,
                        recoverySuggestion: recoverySuggestion)

        }
    }
    
    static func platformExceptions(localizedError: String, recoverySuggestion: String) -> [String: String] {
        var platformDict: [String: String] = [:]
        platformDict["platform"] = "iOS"
        platformDict["localizedErrorMessage"] = localizedError
        platformDict["recoverySuggestion"] = recoverySuggestion
        return platformDict
    }
    
    static func formatError(flutterResult: FlutterResult,
                     errorCode: String,
                     msg: String,
                     localizedError: String,
                     recoverySuggestion: String) {
        var errorMap: [String: Any] = [errorCode: localizedError]
        errorMap["PLATFORM_EXCEPTIONS"] =
            platformExceptions(localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        prepareError(flutterResult: flutterResult,  msg: msg, errorMap: errorMap)
    }
    
    static func prepareError(flutterResult: FlutterResult, msg: String, errorMap: [String: Any]) {
        flutterResult(FlutterError(
                        code: "AmplifyException",
                        message: msg,
                        details: errorMap)
        )
    }
}
