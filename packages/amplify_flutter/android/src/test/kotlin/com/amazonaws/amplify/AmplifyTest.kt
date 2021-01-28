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

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mockito.mock
import org.mockito.Mockito.verify
import org.mockito.Mockito.times
import org.robolectric.RobolectricTestRunner


@RunWith(RobolectricTestRunner::class)
class AmplifyTest {

  lateinit var plugin: Amplify
  private val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)


  @Before
  fun setup() {
    plugin = Amplify()
  }

  @Test
  fun configure_doesNotExecuteMoreThanOnce() {
    // Setup
    val arguments: HashMap<String, Any> = hashMapOf(
            "version" to "1",
            "configuration" to "{}"
    )
    val call = MethodCall("configure", arguments)
    val res = true
    plugin.setConfigured(true)

    // Act
    plugin.onMethodCall(call, mockResult)

    // Assert
    // if configure was actually called by this test, and error would be thrown instead of result.success being called
    verify(mockResult, times(1)).success(res);
  }
}
