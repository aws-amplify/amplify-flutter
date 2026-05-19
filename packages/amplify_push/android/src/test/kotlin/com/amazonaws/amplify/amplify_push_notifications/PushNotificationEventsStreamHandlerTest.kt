package com.amazonaws.amplify.amplify_push_notifications

import com.amplifyframework.annotations.InternalAmplifyApi
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink
import io.mockk.*
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers.any
import org.robolectric.RobolectricTestRunner

@InternalAmplifyApi
@RunWith(RobolectricTestRunner::class)
class PushNotificationEventsStreamHandlerTest {

    @Before
    fun setUp() {
        val mockedBinaryMessenger = mockk<BinaryMessenger>()
        mockkConstructor(EventChannel::class)
        every { anyConstructed<EventChannel>().setStreamHandler(any()) } returns
        StreamHandlers.initStreamHandlers(refresh = true)
        StreamHandlers.initEventChannels(mockedBinaryMessenger)
    }

    @Test
    fun `should queue and send event when listener is added`() {
        val testMap = mapOf<Any, Any?>()
        val mockEventSink = mockk<EventSink>()
        mockkConstructor(EventSink::class)
        StreamHandlers.tokenReceived!!.send(testMap)

        verify(exactly = 0) {
            mockEventSink.success(any())
        }
        StreamHandlers.tokenReceived!!.onListen(any(), mockEventSink)
        verify(exactly = 1) {
            mockEventSink.success(any())
        }
    }

    @Test
    fun `should send error event`() {
        val mockEventSink = mockk<EventSink>()
        mockkConstructor(EventSink::class)
        StreamHandlers.tokenReceived!!.sendError(Exception("test"))

        verify(exactly = 0) {
            mockEventSink.error(any(), any(), any())
        }
        StreamHandlers.tokenReceived!!.onListen(any(), mockEventSink)
        verify(exactly = 1) {
            mockEventSink.error(any(), "test", any())
        }
    }
}
