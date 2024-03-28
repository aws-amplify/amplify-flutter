//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Errors associated with configuring and inspecting Amplify Plugins
public enum PluginError {

    /// A plugin is being added to the wrong category
    case mismatchedPlugin(ErrorDescription, RecoverySuggestion, Error? = nil)

    /// The plugin specified by `getPlugin(key)` does not exist
    case noSuchPlugin(ErrorDescription, RecoverySuggestion, Error? = nil)

    /// The plugin encountered an error during configuration
    case pluginConfigurationError(ErrorDescription, RecoverySuggestion, Error? = nil)

    /// An unknown error occurred
    case unknown(ErrorDescription, RecoverySuggestion, Error?)
}

extension PluginError: AmplifyError {
    public var errorDescription: ErrorDescription {
        switch self {
        case .mismatchedPlugin(let description, _, _),
             .noSuchPlugin(let description, _, _),
             .pluginConfigurationError(let description, _, _),
             .unknown(let description, _, _):
            return description
        }
    }

    public var recoverySuggestion: RecoverySuggestion {
        switch self {
        case .mismatchedPlugin(_, let recoverySuggestion, _),
             .noSuchPlugin(_, let recoverySuggestion, _),
             .pluginConfigurationError(_, let recoverySuggestion, _),
             .unknown(_, let recoverySuggestion, _):
            return recoverySuggestion
        }
    }

    public var underlyingError: Error? {
        switch self {
        case .mismatchedPlugin(_, _, let underlyingError),
             .noSuchPlugin(_, _, let underlyingError),
             .pluginConfigurationError(_, _, let underlyingError),
             .unknown(_, _, let underlyingError):
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
