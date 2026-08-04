//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Analytics Error
public enum AnalyticsError {
    /// Configuration Error
    case configuration(ErrorDescription, RecoverySuggestion, Error? = nil)
    /// Unknown Error
    case unknown(ErrorDescription, Error? = nil)
}

extension AnalyticsError: AmplifyError {
    /// Error Description
    public var errorDescription: ErrorDescription {
        switch self {
        case .configuration(let errorDescription, _, _):
            return errorDescription
        case .unknown(let errorDescription, _):
            return "Unexpected error occurred with message: \(errorDescription)"
        }
    }

    /// Recovery Suggestion
    public var recoverySuggestion: RecoverySuggestion {
        switch self {
        case .configuration(_, let recoverySuggestion, _):
            return recoverySuggestion
        case .unknown:
            return AmplifyErrorMessages.shouldNotHappenReportBugToAWS()
        }
    }

    /// Underlying Error
    public var underlyingError: Error? {
        switch self {
        case .configuration(_, _, let error):
            return error
        case .unknown(_, let error):
            return error
        }
    }

    /// Initializer
    /// - Parameters:
    ///   - errorDescription: Error Description
    ///   - recoverySuggestion: Recovery Suggestion
    ///   - error: Underlying Error
    public init(
        errorDescription: ErrorDescription = "An unknown error occurred",
        recoverySuggestion: RecoverySuggestion = "(Ignored)",
        error: Error
    ) {
        if let error = error as? Self {
            self = error
        } else if error.isOperationCancelledError {
            self = .unknown("Operation cancelled", error)
        } else {
            self = .unknown(errorDescription, error)
        }
    }

}
