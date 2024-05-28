//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

// MARK: - Enum

public enum DataStoreError: Error {
    case api(AmplifyError, MutationEvent? = nil)
    case configuration(ErrorDescription, RecoverySuggestion, Error? = nil)
    case conflict(DataStoreSyncConflict)
    case invalidCondition(ErrorDescription, RecoverySuggestion, Error? = nil)
    case decodingError(ErrorDescription, RecoverySuggestion)
    case internalOperation(ErrorDescription, RecoverySuggestion, Error? = nil)
    case invalidDatabase(path: String, Error? = nil)
    case invalidModelName(String)
    case invalidOperation(causedBy: Error? = nil)
    case nonUniqueResult(model: String, count: Int)
    case sync(ErrorDescription, RecoverySuggestion, Error? = nil)
    case unknown(ErrorDescription, RecoverySuggestion, Error? = nil)
}

// MARK: - AmplifyError

extension DataStoreError: AmplifyError {
    public var errorDescription: ErrorDescription {
        switch self {
        case .api(let error, _):
            return error.errorDescription
        case .conflict:
            return "A conflict occurred syncing a local model with the remote API"
        case .invalidDatabase:
            return "Could not create a new database."
        case .invalidModelName(let modelName):
            return "No model registered with name '\(modelName)'"
        case .invalidOperation(let causedBy):
            return causedBy?.localizedDescription ?? ""
        case .nonUniqueResult(let model, let count):
            return """
            The result of the queried model of type \(model) return more than one result.
            Only a single result was expected and the actual count was \(count).
            """
        case .configuration(let errorDescription, _, _),
             .invalidCondition(let errorDescription, _, _),
             .decodingError(let errorDescription, _),
             .internalOperation(let errorDescription, _, _),
             .sync(let errorDescription, _, _),
             .unknown(let errorDescription, _, _):
            return errorDescription
        }
    }

    public var recoverySuggestion: RecoverySuggestion {
        switch self {
        case .api(let error, _):
            return error.recoverySuggestion
        case .conflict:
            return "See this error's associated value for the details of the conflict"
        case .invalidDatabase(let path, _):
            return "Make sure the path \(path) is valid and the device has available storage space."
        case .invalidModelName(let modelName):
            // TODO: Is this the right command to run to generate models?
            return "Make sure the model named '\(modelName)' is registered by running `amplify codegen`"
        case .invalidOperation(let causedBy):
            return causedBy?.localizedDescription ?? ""
        case .nonUniqueResult:
            return """
            Check that the condition applied to the query actually guarantees uniqueness, such
            as unique indexes and primary keys.
            """
        case .configuration(_, let recoverySuggestion, _),
             .invalidCondition(_, let recoverySuggestion, _),
             .decodingError(_, let recoverySuggestion),
             .internalOperation(_, let recoverySuggestion, _),
             .sync(_, let recoverySuggestion, _),
             .unknown(_, let recoverySuggestion, _):
            return recoverySuggestion
        }
    }

    public var underlyingError: Error? {
        switch self {
        case .api(let amplifyError, _):
            return amplifyError
        case .configuration(_, _, let underlyingError),
             .invalidCondition(_, _, let underlyingError),
             .internalOperation(_, _, let underlyingError),
             .invalidDatabase(_, let underlyingError),
             .invalidOperation(let underlyingError),
             .sync(_, _, let underlyingError),
             .unknown(_, _, let underlyingError):
            return underlyingError
        default:
            return nil
        }
    }

    public init(
        errorDescription: ErrorDescription = "An unknown error occurred",
        recoverySuggestion: RecoverySuggestion = "See `underlyingError` for more details",
        error: Error
    ) {
        if let error = error as? Self {
            self = error
        } else if let amplifyError = error as? AmplifyError {
            self = .api(amplifyError)
        } else if error.isOperationCancelledError {
            self = .unknown("Operation cancelled", "", error)
        } else {
            self = .unknown(errorDescription, recoverySuggestion, error)
        }
    }

}
