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
import amplify_core

class FlutterApiErrorHandler {
    static func handleApiError(error: APIError, flutterResult: FlutterResult) {
        ErrorUtil.postErrorToFlutterChannel(result: flutterResult,
                                            errorCode: "ApiException",
                                            details: createSerializedError(error: error))
    }

    static func createSerializedError(error: APIError) -> [String: String] {
        let httpStatusCode: String?
        switch error {
        case .httpStatusError(let statusCode, _):
            httpStatusCode = String(statusCode)
        default:
            httpStatusCode = nil
        }
        return ErrorUtil.createSerializedError(
            message: error.errorDescription,
            recoverySuggestion: error.recoverySuggestion,
            underlyingError: error.underlyingError?.localizedDescription,
            httpStatusCode: httpStatusCode)
    }
}
