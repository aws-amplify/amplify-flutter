// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.exception

class ExceptionMessages {
    companion object {

        @JvmStatic
        val createGithubIssueString: String =
            """
        Please take a look at
        https://github.com/aws-amplify/amplify-flutter/issues to see if there are any existing issues that
        match your scenario, and file an issue with the details of the bug if there isn't.
            """.trimIndent()

        @JvmStatic
        val defaultFallbackExceptionMessage: String =
            "Translating platform exception failed. $createGithubIssueString"

        @JvmStatic
        val missingRecoverySuggestion: String =
            "We currently don't have a recovery suggestion for this exception."

        @JvmStatic
        val missingExceptionMessage: String =
            "An unknown exception has happened. $createGithubIssueString"

        @JvmStatic
        val missingAttribute: String =
            "Ensure that %s attribute is present"
    }
}
