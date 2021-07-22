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
package com.amazonaws.amplify.amplify_auth_cognito.base

import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.*
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runBlockingTest
import kotlinx.coroutines.test.setMain
import org.junit.AfterClass
import org.junit.BeforeClass
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mock
import org.mockito.Mockito.*
import org.mockito.junit.MockitoJUnitRunner

@ObsoleteCoroutinesApi
@ExperimentalCoroutinesApi
@RunWith(MockitoJUnitRunner::class)
class AtomicResultTest {
    companion object {
        /**
         * Used to replace unavailable [Dispatchers.Main] context.
         */
        private val mainThreadSurrogate = newSingleThreadContext("UI Thread")

        @JvmStatic
        @BeforeClass
        fun setUp() {
            Dispatchers.setMain(mainThreadSurrogate)
        }

        @JvmStatic
        @AfterClass
        fun tearDown() {
            Dispatchers.resetMain()
            mainThreadSurrogate.close()
        }
    }

    @Mock
    private lateinit var mockResult: MethodChannel.Result

    @Test
    fun successIsForwarded() = runBlockingTest {
        val atomicResult = AtomicResult(mockResult)
        atomicResult.success(null)
        verify(mockResult).success(null)
    }

    @Test
    fun errorIsForwarded() = runBlockingTest {
        val atomicResult = AtomicResult(mockResult)
        atomicResult.error(null, null, null)
        verify(mockResult).error(null, null, null)
    }

    @Test
    fun notImplementedIsForwarded() = runBlockingTest {
        val atomicResult = AtomicResult(mockResult)
        atomicResult.notImplemented()
        verify(mockResult).notImplemented()
    }

    @Test
    fun multipleSynchronousRepliesAreNotSent() = runBlockingTest {
        val atomicResult = AtomicResult(mockResult)
        atomicResult.success(null)
        atomicResult.success(null)
        verify(mockResult, times(1)).success(any())
    }

    @Test
    fun multipleConcurrentRepliesAreNotSent() = runBlockingTest {
        val atomicResult = AtomicResult(mockResult)
        val jobs = mutableListOf<Job>()
        for (i in 0..1000) {
            val job = launch(Dispatchers.IO) {
                atomicResult.success(null)
            }
            jobs.add(job)
        }
        // Block til jobs complete
        jobs.forEach {
            it.join()
        }
        verify(mockResult, times(1)).success(any())
    }
}