//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Push Notifications Error
public enum PushNotificationsError {
    /// Configuration Error
    case configuration(ErrorDescription, RecoverySuggestion, Error? = nil)
    /// Network Error
    case network(ErrorDescription, RecoverySuggestion, Error? = nil)
    /// Service Error
    case service(ErrorDescription, RecoverySuggestion, Error? = nil)
    /// Unknown Error
    case unknown(ErrorDescription, Error? = nil)
}

extension PushNotificationsError: AmplifyError {
    public var errorDescription: ErrorDescription {
        switch self {
        case .configuration(let description, _, _),
             .network(let description, _, _),
             .service(let description, _, _):
            return description
        case .unknown(let description, _):
            return "Unexpected error occurred with message: \(description)"
        }
    }

    public var recoverySuggestion: RecoverySuggestion {
        switch self {
        case .configuration(_, let recoverySuggestion, _),
             .network(_, let recoverySuggestion, _),
             .service(_, let recoverySuggestion, _):
            return recoverySuggestion
        case .unknown:
            return AmplifyErrorMessages.shouldNotHappenReportBugToAWS()
        }
    }

    public var underlyingError: Error? {
        switch self {
        case .configuration(_, _, let error),
             .network(_, _, let error),
             .service(_, _, let error),
             .unknown(_, let error):
            return error
        }
    }

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
