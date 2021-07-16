package com.amazonaws.amplify.amplify_auth_cognito.base

import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.*

/**
 * Thread-safe [MethodChannel.Result] wrapper which prevents multiple replies and automatically posts
 * results to the main thread.
 */
class AtomicResult(private val result: MethodChannel.Result) : MethodChannel.Result {
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
    private var isSent = false

    override fun success(value: Any?) {
        scope.launch {
            if (isSent) return@launch
            result.success(value)
            isSent = true
        }
    }

    override fun error(errorCode: String?, errorMessage: String?, errorDetails: Any?) {
        scope.launch {
            if (isSent) return@launch
            result.error(errorCode, errorMessage, errorDetails)
            isSent = true
        }
    }

    override fun notImplemented() {
        scope.launch {
            if (isSent) return@launch
            result.notImplemented()
            isSent = true
        }
    }
}