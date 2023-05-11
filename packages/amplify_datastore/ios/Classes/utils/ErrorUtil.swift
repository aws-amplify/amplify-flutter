// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Flutter

/// Thrown when a function receives arguments of a different type than it expects.
public let invalidArgumentsError = FlutterError(
    code: "InvalidArgumentsError",
    message: "Invalid arguments passed to \(#function)",
    details: nil)

public enum ErrorUtil {
    public static func postErrorToFlutterChannel(
        result: FlutterResult,
        errorCode: String,
        details: [String: String]
    ) {
        result(FlutterError(code: errorCode,
                            message: ErrorMessages.defaultFallbackErrorMessage,
                            details: details))
    }

    public static func createSerializedError(
        message: String,
        recoverySuggestion: String?,
        underlyingError: String?,
        httpStatusCode: String?
    ) -> [String: String] {
        var serializedException: [String: String] = [:]
        serializedException["message"] = message
        serializedException["recoverySuggestion"] = recoverySuggestion
        serializedException["underlyingException"] = underlyingError
        serializedException["httpStatusCode"] = httpStatusCode
        return serializedException
    }
}
