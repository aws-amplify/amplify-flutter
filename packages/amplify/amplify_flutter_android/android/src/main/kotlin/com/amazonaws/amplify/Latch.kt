/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

package com.amazonaws.amplify

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
    fun await(latch: CountDownLatch, waitTimeMs: Long) {
        val didCountDown: Boolean
        didCountDown = try {
            latch.await(waitTimeMs, TimeUnit.MILLISECONDS)
        } catch (interruptedException: InterruptedException) {
            throw RuntimeException(
                "Thread interrupted while wait for latch count down.",
                interruptedException
            )
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
