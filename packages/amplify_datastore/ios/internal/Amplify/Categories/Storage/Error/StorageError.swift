//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Errors thrown by implementations of the
/// [StorageCategoryPlugin](x-source-tag://StorageCategoryPlugin) protocol.
///
/// - Tag: StorageError
public enum StorageError {

    /// Surfaced when a storage operation is attempted for either a file or a key to which the current user
    /// does not have access.
    ///
    /// - Tag: StorageError.accessDenied
    case accessDenied(ErrorDescription, RecoverySuggestion, Error? = nil)

    /// Surfaced when a storage operation is unable to resolve the current user.
    ///
    /// - Tag: StorageError.authError
    case authError(ErrorDescription, RecoverySuggestion, Error? = nil)

    /// Surfaced when a storage plugin encounters an error during its configuration.
    ///
    /// - Tag: StorageError.configuration
    case configuration(ErrorDescription, RecoverySuggestion, Error? = nil)

    /// Surfaced when a storage operation encounters an HTTP status code it considers an error.
    ///
    /// - Tag: StorageError.httpStatusError
    case httpStatusError(Int, RecoverySuggestion, Error? = nil)

    /// Surfaced when a storage operation encounters an HTTP status code it considers an error.
    ///
    /// - Tag: StorageError.keyNotFound
    case keyNotFound(Key, ErrorDescription, RecoverySuggestion, Error? = nil)

    /// Surfaced when a storage operation is unable to find a local file, usually when attempting to upload.
    ///
    /// - Tag: StorageError.localFileNotFound
    case localFileNotFound(ErrorDescription, RecoverySuggestion, Error? = nil)

    /// Surfaced when a storage operation encounters an unexpected server-side error.
    ///
    /// - Tag: StorageError.service
    case service(ErrorDescription, RecoverySuggestion, Error? = nil)

    /// Surfaced when a storage operation encounters an general unexpected error.
    ///
    /// - Tag: StorageError.unknown
    case unknown(ErrorDescription, Error? = nil)

    /// Surfaced when a storage operation encounters invalid input.
    ///
    /// - Tag: StorageError.validation
    case validation(Field, ErrorDescription, RecoverySuggestion, Error? = nil)
}

extension StorageError: AmplifyError {
    public var errorDescription: ErrorDescription {
        switch self {
        case .accessDenied(let errorDescription, _, _),
             .authError(let errorDescription, _, _),
             .configuration(let errorDescription, _, _),
             .service(let errorDescription, _, _),
             .localFileNotFound(let errorDescription, _, _):
            return errorDescription
        case .httpStatusError(let statusCode, _, _):
            return "The HTTP response status code is [\(statusCode)]."
        case .keyNotFound(let key, let errorDescription, _, _):
            return "The key '\(key)' could not be found with message: \(errorDescription)."
        case .unknown(let errorDescription, _):
            return "Unexpected error occurred with message: \(errorDescription)"
        case .validation(let field, let errorDescription, _, _):
            return "There is a client side validation error for the field [\(field)] with message: \(errorDescription)"
        }
    }

    public var recoverySuggestion: RecoverySuggestion {
        switch self {
        case .accessDenied(_, let recoverySuggestion, _),
             .authError(_, let recoverySuggestion, _),
             .configuration(_, let recoverySuggestion, _),
             .localFileNotFound(_, let recoverySuggestion, _),
             .service(_, let recoverySuggestion, _),
             .validation(_, _, let recoverySuggestion, _):
            return recoverySuggestion
        case .httpStatusError(_, let recoverySuggestion, _):
            return """
            \(recoverySuggestion).
            For more information on HTTP status codes, take a look at
            https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
            """
        case .keyNotFound(_, _, let recoverySuggestion, _):
            return """
            \(recoverySuggestion)
            The object for key in the public access level should exist under the public folder as public/<key>.
            When looking for the key in protected or private access level, it will be under its respective folder
            such as 'protected/<targetIdentityId>/<key>' or 'private/<targetIdentityId>/<key>'.
            """
        case .unknown:
            return AmplifyErrorMessages.shouldNotHappenReportBugToAWS()
        }
    }

    public var underlyingError: Error? {
        switch self {
        case .accessDenied(_, _, let underlyingError),
             .authError(_, _, let underlyingError),
             .configuration(_, _, let underlyingError),
             .httpStatusError(_, _, let underlyingError),
             .keyNotFound(_, _, _, let underlyingError),
             .localFileNotFound(_, _, let underlyingError),
             .service(_, _, let underlyingError),
             .unknown(_, let underlyingError),
             .validation(_, _, _, let underlyingError):
            return underlyingError
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
