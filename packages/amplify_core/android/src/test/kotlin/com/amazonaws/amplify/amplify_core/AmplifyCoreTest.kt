package com.amazonaws.amplify.amplify_core

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
class AmplifyCoreTest {

  lateinit var plugin: Core
  private val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)


  @Before
  fun setup() {
    plugin = Core()
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
