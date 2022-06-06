/*
 *
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
 *
 */

package com.amazonaws.amplify.amplify_api

import com.amplifyframework.core.async.Cancelable
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.launch
import kotlinx.coroutines.test.runBlockingTest
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.kotlin.mock
import org.mockito.kotlin.times
import org.mockito.kotlin.verify
import org.robolectric.RobolectricTestRunner

@ExperimentalCoroutinesApi
@RunWith(RobolectricTestRunner::class)
class OperationsManagerTests {

    @Test
    fun testConcurrentCancellation() = runBlockingTest {
        val cancelToken = "cancelToken"
        val operation = mock<Cancelable>()
        OperationsManager.addOperation(cancelToken, operation)

        launch {
            // Launch 10 coroutines and wait til they all complete
            (0..10).map {
                async(Dispatchers.IO) {
                    OperationsManager.cancelOperation(cancelToken)
                }
            }.awaitAll()
        }

        verify(operation, times(1)).cancel()
    }
}
