//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Errors associated with configuring and inspecting Amplify Categories
///
/// See: [Amplify.configure](x-source-tag://Amplify.configure)
/// 
/// - Tag: ConfigurationError
public enum ConfigurationError {
    /// The client issued a subsequent call to `Amplify.configure` after the first had already succeeded
    ///
    /// - Tag: ConfigurationError.amplifyAlreadyConfigured
    case amplifyAlreadyConfigured(ErrorDescription, RecoverySuggestion, Error? = nil)

    /// The specified `amplifyconfiguration.json` file was not present or unreadable
    ///
    /// - Tag: ConfigurationError.invalidAmplifyConfigurationFile
    case invalidAmplifyConfigurationFile(ErrorDescription, RecoverySuggestion, Error? = nil)

    /// Unable to decode `amplifyconfiguration.json` into a valid AmplifyConfiguration object
    ///
    /// - Tag: ConfigurationError.unableToDecode
    case unableToDecode(ErrorDescription, RecoverySuggestion, Error? = nil)

    /// An unknown error occurred
    ///
    /// - Tag: ConfigurationError.unknown
    case unknown(ErrorDescription, RecoverySuggestion, Error?)
}

extension ConfigurationError: AmplifyError {
    /// - Tag: ConfigurationError.errorDescription
    public var errorDescription: ErrorDescription {
        switch self {
        case .amplifyAlreadyConfigured(let description, _, _),
             .invalidAmplifyConfigurationFile(let description, _, _),
             .unableToDecode(let description, _, _),
             .unknown(let description, _, _):
            return description
        }
    }

    /// - Tag: ConfigurationError.recoverySuggestion
    public var recoverySuggestion: RecoverySuggestion {
        switch self {
        case .amplifyAlreadyConfigured(_, let recoverySuggestion, _),
             .invalidAmplifyConfigurationFile(_, let recoverySuggestion, _),
             .unableToDecode(_, let recoverySuggestion, _),
             .unknown(_, let recoverySuggestion, _):
            return recoverySuggestion
        }
    }

    /// - Tag: ConfigurationError.underlyingError
    public var underlyingError: Error? {
        switch self {
        case .amplifyAlreadyConfigured(_, _, let underlyingError),
             .invalidAmplifyConfigurationFile(_, _, let underlyingError),
             .unableToDecode(_, _, let underlyingError),
             .unknown(_, _, let underlyingError):
            return underlyingError
        }
    }

    /// - Tag: ConfigurationError.init
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
