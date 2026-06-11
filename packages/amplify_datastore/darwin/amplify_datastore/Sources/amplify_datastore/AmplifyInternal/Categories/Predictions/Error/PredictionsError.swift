//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Error occured while using Prediction category
public enum PredictionsError {
    /// Access denied while executing the operation
    case client(ClientError)
    case service(ServiceError)
    case unknown(ErrorDescription, RecoverySuggestion, Error? = nil)
}

extension PredictionsError: AmplifyError {
    public var errorDescription: ErrorDescription {
        switch self {
        case .client(let clientError):
            return "A client error occurred with message:\(clientError.description)"
        case .service(let serviceError):
            return "A service error occurred with message:\(serviceError.description)"
        case .unknown(let errorDescription, _, _):
            return "Unexpected error occurred with message: \(errorDescription)"
        }

    }

    public var recoverySuggestion: RecoverySuggestion {
        switch self {
        case .client(let clientError):
            return clientError.recoverySuggestion
        case .service(let serviceError):
            return serviceError.recoverySuggestion
        case .unknown:
            return AmplifyErrorMessages.shouldNotHappenReportBugToAWS()
        }
    }

    public var underlyingError: Error? {
        switch self {
        case .client(let clientError):
            return clientError.underlyingError
        case .service(let serviceError):
            return serviceError.underlyingError
        case .unknown(_, _, let underlyingError):
            return underlyingError
        }
    }

    public init(
        errorDescription: ErrorDescription = "An unknown error occurred",
        recoverySuggestion: RecoverySuggestion = "See `underlyingError` for more details",
        error: Error
    ) {
        if let error = error as? Self {
            self = error
        } else {
            self = .unknown(errorDescription, recoverySuggestion, error)
        }
    }
}
