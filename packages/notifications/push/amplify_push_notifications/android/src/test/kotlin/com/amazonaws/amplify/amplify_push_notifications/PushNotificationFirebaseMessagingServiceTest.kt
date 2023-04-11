package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.os.Looper.getMainLooper
import com.amplifyframework.annotations.InternalAmplifyApi
import com.amplifyframework.notifications.pushnotifications.NotificationContentProvider
import com.amplifyframework.notifications.pushnotifications.NotificationPayload
import io.flutter.embedding.engine.loader.FlutterLoader
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink
import io.mockk.*
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers
import org.robolectric.Robolectric.buildService
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.android.controller.ServiceController

@InternalAmplifyApi
@RunWith(RobolectricTestRunner::class)
class PushNotificationFirebaseMessagingServiceTest {
    private lateinit var context: Context
    private lateinit var mockEventSink: EventSink
    private object TestConst {
        const val TOKEN = "foo-bar"
    }

    private val testPayload = NotificationPayload.Builder(
        NotificationContentProvider.FCM(
            content = mapOf()
        )
    ).build()
    private lateinit var controller: ServiceController<PushNotificationFirebaseMessagingService>

    @Before
    fun setup() {
        context = RuntimeEnvironment.getApplication().baseContext
        val mockedBinaryMessenger = mockk<BinaryMessenger>()
        mockkConstructor(EventChannel::class)
        every { anyConstructed<EventChannel>().setStreamHandler(any()) } returns StreamHandlers.initStreamHandlers(
            refresh = true
        )
        StreamHandlers.initEventChannels(mockedBinaryMessenger)
        mockEventSink = mockk()
        mockkConstructor(EventSink::class)
        mockkConstructor(InternalPushNotificationUtils::class)
        mockkStatic(Bundle::getNotificationPayload)
        mockkStatic(NotificationPayload::toWritableMap)

        justRun {
            anyConstructed<InternalPushNotificationUtils>().showNotification(any())
        }
        every { any<Bundle>().getNotificationPayload() } returns testPayload
        controller = buildService(PushNotificationFirebaseMessagingService::class.java, Intent())
    }

    @After
    fun tearDown() {
        unmockkStatic(Bundle::getNotificationPayload)
        unmockkStatic(NotificationPayload::toWritableMap)
    }

    @Test
    fun `sends token received event on new token`() {
        controller.create().get().onNewToken(TestConst.TOKEN)
        shadowOf(getMainLooper()).idle()

        StreamHandlers.tokenReceived!!.onListen(ArgumentMatchers.any(), mockEventSink)
        verify(exactly = 1) {
            mockEventSink.success(any())
        }
    }

    @Test
    fun `handles message in foreground`() {
        context = mockk()
        every { anyConstructed<InternalPushNotificationUtils>().isAppInForeground() } returns true
        mockkConstructor(FlutterLoader::class)
        controller.create().get().handleIntent(Intent())
        shadowOf(getMainLooper()).idle()
        StreamHandlers.foregroundMessageReceived!!.onListen(ArgumentMatchers.any(), mockEventSink)
        verify(exactly = 1) {
            mockEventSink.success(any())
        }
    }

    @Test
    fun `handles message in background`() {
        every { anyConstructed<InternalPushNotificationUtils>().isAppInForeground() } returns false
        controller.create().get().handleIntent(Intent())
        shadowOf(getMainLooper()).idle()

        verify {
            anyConstructed<InternalPushNotificationUtils>().showNotification(testPayload)
        }
    }
}
