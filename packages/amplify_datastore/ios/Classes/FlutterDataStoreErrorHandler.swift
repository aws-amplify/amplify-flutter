// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify
import AmplifyPlugins
import amplify_flutter_ios

class FlutterDataStoreErrorHandler {
    static func handleDataStoreError(error: DataStoreError, flutterResult: FlutterResult) {
        ErrorUtil.postErrorToFlutterChannel(result: flutterResult,
                                            errorCode: "DataStoreException",
                                            details: FlutterDataStoreErrorHandler.createSerializedError(error: error))
    }

    static func createSerializedError(error: AmplifyError) -> [String: String] {
        return createSerializedError(message: error.errorDescription,
                                     recoverySuggestion: error.recoverySuggestion,
                                     underlyingError: error.underlyingError?.localizedDescription)
    }

    static func createSerializedError(message: String,
                                       recoverySuggestion: String?,
                                       underlyingError: String?) -> [String: String]
    {
        var serializedException: [String: String] = [:]
        serializedException["message"] = message
        serializedException["recoverySuggestion"] = recoverySuggestion
        serializedException["underlyingException"] = underlyingError
        return serializedException
    }
}
