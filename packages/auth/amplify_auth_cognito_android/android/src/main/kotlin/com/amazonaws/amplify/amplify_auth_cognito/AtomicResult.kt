// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
    private val result: NativeAuthPluginBindings.Result<T>,
    private val operation: String
) : NativeAuthPluginBindings.Result<T> {
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
