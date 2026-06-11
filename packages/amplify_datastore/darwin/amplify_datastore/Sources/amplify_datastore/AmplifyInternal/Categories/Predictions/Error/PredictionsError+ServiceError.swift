//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension PredictionsError {
    public struct ServiceError: Equatable {
        public static func == (lhs: PredictionsError.ServiceError, rhs: PredictionsError.ServiceError) -> Bool {
            lhs.description == rhs.description
            && lhs.recoverySuggestion == rhs.recoverySuggestion
        }

        public let description: ErrorDescription
        public let recoverySuggestion: RecoverySuggestion
        public let httpStatusCode: Int?
        public let underlyingError: Error?

        public init(
            description: ErrorDescription,
            recoverySuggestion: RecoverySuggestion,
            httpStatusCode: Int? = nil,
            underlyingError: Error? = nil
        ) {
            self.description = description
            self.recoverySuggestion = recoverySuggestion
            self.httpStatusCode = httpStatusCode
            self.underlyingError = underlyingError
        }
    }
}

extension PredictionsError.ServiceError {
    public static let translationFailed = Self(
        description: "No result was found.",
        recoverySuggestion: """
        Please make sure a text string was sent over and
        that the target language was different from the language sent.
        """
    )

    public static let internalServerError = Self(
        description: "An internal server error occurred.",
        recoverySuggestion: """
        This shouldn't never happen. There is a possibility that there is a bug if this error persists.
        Please take a look at https://github.com/aws-amplify/amplify-ios/issues to see if there are any
        existing issues that match your scenario, and file an issue with the details of the bug if there isn't.
        """
    )

    public static let detectedLanguageLowConfidence = Self(
        description: "A language was detected but with very low confidence.",
        recoverySuggestion: "Please make sure you use one of the available languages."
    )

    public static let invalidRequest = Self(
        description: "An invalid request was sent.",
        recoverySuggestion: "Please check your request and try again."
    )

    public static let resourceNotFound = Self(
        description: "The specified resource doesn't exist.",
        recoverySuggestion: "Please make sure you configured the resource properly."
    )

    public static let textSizeLimitExceeded = Self(
        description: "The size of the text string exceeded the limit.",
        recoverySuggestion: "Please send a shorter text string."
    )

    public static let unsupportedLanguagePair = Self(
        description: "Your target language and source language are an unsupported language pair.",
        recoverySuggestion: """
        Please ensure the service supports translating from the specified source
        language to the specified target language.
        """
    )

    public static let throttling = Self(
        description: "Your rate of request increase is too fast.",
        recoverySuggestion: "Slow down your request rate and gradually increase it."
    )

    public static let unsupportedLanguage = Self(
        description: "The language specified is not currently supported by the service.",
        recoverySuggestion: "Choose a new language that is supported."
    )

    public static let invalidSampleRate = Self(
        description: "The specified sample rate is not valid.",
        recoverySuggestion: ""
    )

    public static let accessDenied = Self(
        description: "Access denied",
        recoverySuggestion: """
        Please check that your Cognito IAM role has permissions
        to access this service and check to make sure the user
        is authenticated properly.
        """
    )
}
