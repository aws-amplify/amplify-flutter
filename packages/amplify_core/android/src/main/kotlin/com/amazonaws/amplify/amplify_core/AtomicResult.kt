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
package com.amazonaws.amplify.amplify_core

import io.flutter.Log
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.launch
import java.util.concurrent.atomic.AtomicBoolean

/**
 * Thread-safe [MethodChannel.Result] wrapper which prevents multiple replies and automatically posts
 * results to the main thread.
 */
class AtomicResult(private val result: MethodChannel.Result, private val operation: String) :
    MethodChannel.Result {
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

    override fun success(value: Any?) {
        scope.launch {
            if (isSent.getAndSet(true)) {
                Log.w(
                    "AtomicResult($operation)",
                    "Attempted to send success value after initial reply"
                )
                return@launch
            }
            result.success(value)
        }
    }

    override fun error(errorCode: String, errorMessage: String?, errorDetails: Any?) {
        scope.launch {
            if (isSent.getAndSet(true)) {
                Log.w(
                    "AtomicResult($operation)",
                    """
                    Attempted to send error value after initial reply:
                    | PlatformException{code=$errorCode, message=$errorMessage, details=$errorDetails}
                    """.trimMargin()
                )
                return@launch
            }
            result.error(errorCode, errorMessage, errorDetails)
        }
    }

    override fun notImplemented() {
        scope.launch {
            if (isSent.getAndSet(true)) {
                Log.w(
                    "AtomicResult($operation)",
                    "Attempted to send notImplemented value after initial reply"
                )
                return@launch
            }
            result.notImplemented()
        }
    }
}
