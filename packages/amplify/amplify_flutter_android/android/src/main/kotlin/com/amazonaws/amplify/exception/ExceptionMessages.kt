/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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
