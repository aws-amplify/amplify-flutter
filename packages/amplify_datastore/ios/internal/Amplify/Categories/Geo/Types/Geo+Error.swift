//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension Geo {
    /// Geo Error
    enum Error {
        /// Invalid Configuration.
        case invalidConfiguration(ErrorDescription, RecoverySuggestion, Swift.Error? = nil)
        /// Network Error - Request failed or network unavailable.
        case networkError(ErrorDescription, RecoverySuggestion, Swift.Error? = nil)
        /// Access Denied - request authorization issue
        case accessDenied(ErrorDescription, RecoverySuggestion, Swift.Error? = nil)
        /// Service Error - Service may be down [500, 503]
        case serviceError(ErrorDescription, RecoverySuggestion, Swift.Error? = nil)
        /// Encapsulated error received by a dependent plugin
        case pluginError(AmplifyError)
        /// Unknown Error
        case unknown(ErrorDescription, RecoverySuggestion, Swift.Error? = nil)
    }
}

extension Geo.Error: AmplifyError {
    /// Initializer
    public init(errorDescription: ErrorDescription = "An unknown error occurred",
                recoverySuggestion: RecoverySuggestion = "See `underlyingError` for more details",
                error: Error) {
        if let error = error as? Self {
            self = error
        } else if error.isOperationCancelledError {
            self = .unknown("Operation cancelled", "", error)
        } else {
            self = .unknown(errorDescription, recoverySuggestion, error)
        }
    }

    /// Error Description
    public var errorDescription: ErrorDescription {
        switch self {
        case .invalidConfiguration(let errorDescription, _, _),
             .networkError(let errorDescription, _, _),
             .accessDenied(let errorDescription, _, _),
             .serviceError(let errorDescription, _, _),
             .unknown(let errorDescription, _, _):
            return errorDescription
        case .pluginError(let error):
            return error.errorDescription
        }
    }

    /// Recovery Suggestion
    public var recoverySuggestion: RecoverySuggestion {
        switch self {
        case .invalidConfiguration(_, let recoverySuggestion, _),
             .networkError(_, let recoverySuggestion, _),
             .accessDenied(_, let recoverySuggestion, _),
             .serviceError(_, let recoverySuggestion, _),
             .unknown(_, let recoverySuggestion, _):
            return recoverySuggestion
        case .pluginError(let error):
            return error.recoverySuggestion
        }
    }

    /// Underlying Error
    public var underlyingError: Error? {
        switch self {
        case .invalidConfiguration(_, _, let underlyingError),
             .networkError(_, _, let underlyingError),
             .accessDenied(_, _, let underlyingError),
             .serviceError(_, _, let underlyingError),
             .unknown(_, _, let underlyingError):
            return underlyingError
        case .pluginError(let error):
            return error.underlyingError
        }
    }
}
