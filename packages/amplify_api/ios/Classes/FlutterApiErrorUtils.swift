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


class FlutterApiErrorUtils {
    
    static func handleAPIError(flutterResult: @escaping FlutterResult, error: APIError, msg: String, rawResponse: String? = nil) {
        var errorMap =
            createErrorMap(localizedError: error.localizedDescription, recoverySuggestion: error.recoverySuggestion)
        if(rawResponse != nil) {
            errorMap["rawResponse"] = rawResponse
        }
        createFlutterError(flutterResult:flutterResult, msg: msg, errorMap: errorMap)
    }
    
    static func createErrorMap(localizedError: String, recoverySuggestion: String?) -> [String: Any] {
        var errorMap: [String: Any] = [:]
        var platformDict: [String: String] = [:]
        
        platformDict["platform"] = "iOS"
        platformDict["localizedErrorMessage"] = localizedError
        platformDict["recoverySuggestion"] = recoverySuggestion
        
        errorMap["PLATFORM_EXCEPTIONS"] = platformDict
        return errorMap
    }
    
    static func createFlutterError(flutterResult: @escaping FlutterResult, msg: String, errorMap: [String: Any]) {
        let flutterError = FlutterError(
            code: "AmplifyException",
            message: msg,
            details: errorMap)
        flutterResult(flutterError)
    }
}
