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
package com.amazonaws.amplify

import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.launch
import kotlinx.coroutines.test.TestCoroutineScope
import kotlinx.coroutines.test.runBlockingTest
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mock
import org.mockito.Mockito.any
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.mockito.junit.MockitoJUnitRunner

@ExperimentalCoroutinesApi
@RunWith(MockitoJUnitRunner::class)
class AtomicResultTest {
    @get:Rule
    var coroutinesTestRule = CoroutineTestRule()

    private val testScope = TestCoroutineScope(coroutinesTestRule.testDispatcher)

    @Mock
    private lateinit var mockResult: MethodChannel.Result

    @Test
    fun successIsForwarded() = coroutinesTestRule.testDispatcher.runBlockingTest {
        val atomicResult = AtomicResult(mockResult, "successIsForwarded")
        atomicResult.success(null)
        verify(mockResult).success(null)
    }

    @Test
    fun errorIsForwarded() = coroutinesTestRule.testDispatcher.runBlockingTest {
        val atomicResult = AtomicResult(mockResult, "errorIsForwarded")
        atomicResult.error("", null, null)
        verify(mockResult).error("", null, null)
    }

    @Test
    fun notImplementedIsForwarded() = coroutinesTestRule.testDispatcher.runBlockingTest {
        val atomicResult = AtomicResult(mockResult, "notImplementedIsForwarded")
        atomicResult.notImplemented()
        verify(mockResult).notImplemented()
    }

    @Test
    fun multipleSynchronousRepliesAreNotSent() = coroutinesTestRule.testDispatcher.runBlockingTest {
        val atomicResult = AtomicResult(mockResult, "multipleSynchronousRepliesAreNotSent")
        atomicResult.success(null)
        atomicResult.success(null)
        verify(mockResult, times(1)).success(any())
    }

    @Test
    fun multipleConcurrentRepliesAreNotSent() = coroutinesTestRule.testDispatcher.runBlockingTest {
        val atomicResult = AtomicResult(mockResult, "multipleConcurrentRepliesAreNotSent")
        testScope.launch {
            // Launch 10 coroutines and wait til they all complete
            (0..10).map {
                async(Dispatchers.IO) {
                    atomicResult.success(null)
                }
            }.awaitAll()
        }
        verify(mockResult, times(1)).success(any())
    }
}
