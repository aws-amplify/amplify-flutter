// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Commonly used cross-category error messages.
public enum ErrorMessages {
    public static let createGithubIssueString: String =
        """
        Please take a look at \
        https://github.com/aws-amplify/amplify-flutter/issues to see if there are any existing issues that \
        match your scenario, and file an issue with the details of the bug if there isn't.
        """

    public static let defaultFallbackErrorMessage: String =
        "Translating platform exception failed. " + createGithubIssueString

    public static let missingRecoverySuggestion: String =
        "We currently don't have a recovery suggestion for this exception."

    public static let missingExceptionMessage: String =
        "An unknown exception has happened. " + createGithubIssueString

    public static let missingAttribute: String = "Ensure that %@ attribute is present"
}
