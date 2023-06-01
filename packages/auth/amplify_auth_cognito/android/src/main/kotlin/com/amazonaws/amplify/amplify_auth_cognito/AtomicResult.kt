// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_auth_cognito

import io.flutter.Log
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.launch
import java.util.concurrent.atomic.AtomicBoolean

/**
 * Thread-safe [Result] wrapper which prevents multiple replies and
 * automatically posts results to the main thread.
 */
class AtomicResult<T>(
    private val result: (Result<T>) -> Unit,
    private val operation: String
) : (Result<T>) -> Unit {
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

    override fun invoke(result: Result<T>) {
        if (isSent.getAndSet(true)) {
            Log.w(
                "AmplifyHostedUiPlugin($operation)",
                """
                    Attempted to send result after initial reply:
                    | $result
                """.trimIndent()
            )
            return
        }
        scope.launch {
            result(result)
        }
    }

}
