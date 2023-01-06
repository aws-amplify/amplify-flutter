// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_auth_cognito

/**
 * An exception thrown during the Hosted UI sign in/sign out process.
 */
abstract class HostedUiException(message: String? = null) : Exception(message) {
    companion object {
        fun fromThrowable(e: Throwable): HostedUiException {
            if (e is HostedUiException) {
                return e
            }
            return UNKNOWN(e.message)
        }
    }

    class NOBROWSER() : HostedUiException("No browser available for launching URL intent")
    class UNKNOWN(message: String? = null) : HostedUiException(message)
    class CANCELLED : HostedUiException()
}
