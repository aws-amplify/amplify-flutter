// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_auth_cognito

import io.flutter.Log
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.launch
import java.util.concurrent.atomic.AtomicBoolean

/**
 * Thread-safe [NativeAuthPluginBindings.Result] wrapper which prevents multiple replies and
 * automatically posts results to the main thread.
 */
class AtomicResult<T>(
    private val result: NativeAuthPluginBindingsPigeon.Result<T>,
    private val operation: String
) : NativeAuthPluginBindingsPigeon.Result<T> {
    private companion object {
        /**
         * Scope for performing result handling.
         * Method channel results must be sent on the main (UI) thread.
         */
        val scope = MainScope()
    }

    /**
     * Whether a response has been sent.
     */
    private val isSent = AtomicBoolean(false)

    override fun success(value: T) {
        if (isSent.getAndSet(true)) {
            Log.w(
                "AmplifyHostedUiPlugin($operation)",
                """
                    Attempted to send success value after initial reply:
                    | $value
                """.trimIndent()
            )
            return
        }
        scope.launch {
            result.success(value)
        }
    }

    override fun error(error: Throwable?) {
        if (isSent.getAndSet(true)) {
            Log.w(
                "AmplifyHostedUiPlugin($operation)",
                """
                    Attempted to send error value after initial reply:
                    | $error
                    | Cause: ${error?.cause}
                    """.trimMargin()
            )
            return
        }
        scope.launch {
            result.error(error ?: HostedUiException.UNKNOWN())
        }
    }

}
