//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension PredictionsError {
    public struct ClientError: Equatable {
        public static func == (lhs: PredictionsError.ClientError, rhs: PredictionsError.ClientError) -> Bool {
            lhs.description == rhs.description
            && lhs.recoverySuggestion == rhs.recoverySuggestion
        }

        public let description: ErrorDescription
        public let recoverySuggestion: RecoverySuggestion
        public let underlyingError: Error?

        public init(
            description: ErrorDescription,
            recoverySuggestion: RecoverySuggestion,
            underlyingError: Error? = nil
        ) {
            self.description = description
            self.recoverySuggestion = recoverySuggestion
            self.underlyingError = underlyingError
        }
    }
}

extension PredictionsError.ClientError {
    public static let imageNotFound = Self(
        description: "Something was wrong with the image file, make sure it exists.",
        recoverySuggestion: "Try choosing an image and sending it again."
    )

    public static let invalidRegion = Self(
        description: "Invalid region",
        recoverySuggestion: "Ensure that you provide a valid region in your configuration"
    )

    public static let missingSourceLanguage = Self(
        description: "Source language is not provided",
        recoverySuggestion: "Provide a supported source language"
    )

    public static let missingTargetLanguage = Self(
        description: "Target language is not provided",
        recoverySuggestion: "Provide a supported target language"
    )

    public static let onlineIdentityServiceUnavailable = Self(
        description: "Online identify service is not available",
        recoverySuggestion: "Please check if the values are proprely initialized"
    )

    public static let offlineIdentityServiceUnavailable = Self(
        description: "Offline identify service is not available",
        recoverySuggestion: "Please check if the values are proprely initialized"
    )

    public static let onlineInterpretServiceUnavailable = Self(
        description: "Online interpret service is not available",
        recoverySuggestion: "Please check if the values are proprely initialized"
    )

    public static let offlineInterpretServiceUnavailable = Self(
        description: "Offline interpret service is not available",
        recoverySuggestion: "Please check if the values are proprely initialized"
    )

    public static let unableToInterpretText = Self(
        description: "No result found for the text",
        recoverySuggestion: "Interpret text did not produce any result"
    )
}
