// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore

import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

/**
 * A utility to count down a latch.
 * This is done frequently enough in the test code that its best
 * to centralize a single pattern for it.
 */
object Latch {
    private val REASONABLE_WAIT_TIME_MS = TimeUnit.SECONDS.toMillis(5)

    /**
     * Await a latch to count down, for a given number of milliseconds.
     * @param latch A latch on which to await count down
     * @param waitTimeMs Time to wait before throwing an error
     * @throws RuntimeException If the latch doesn't count down in the allotted timeout
     */
    private fun await(latch: CountDownLatch, waitTimeMs: Long) {
        val didCountDown: Boolean = try {
            latch.await(waitTimeMs, TimeUnit.MILLISECONDS)
        } catch (interruptedException: InterruptedException) {
            throw RuntimeException("Thread interrupted while wait for latch count down.", interruptedException)
        }
        if (!didCountDown || latch.count != 0L) {
            throw RuntimeException("Failed to count down latch within " + waitTimeMs + "ms.")
        }
    }

    /**
     * Await a latch to count down, in a "reasonable" amount of time.
     * We define "reasonable," not you. If you want to take a stab, instead, try
     * [.await].
     * @param latch A latch on which we will await count down
     * @throws RuntimeException If the latch doesn't count down in the allotted time
     */
    fun await(latch: CountDownLatch) {
        await(latch, REASONABLE_WAIT_TIME_MS)
    }
}
