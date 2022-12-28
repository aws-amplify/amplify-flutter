// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.exception

import com.amplifyframework.AmplifyException

class InvalidRequestException : AmplifyException {
    constructor(message: String, recoverySuggestion: String) : super(message, recoverySuggestion)
}
