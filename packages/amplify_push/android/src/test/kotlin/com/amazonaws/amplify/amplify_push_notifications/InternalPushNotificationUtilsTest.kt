package com.amazonaws.amplify.amplify_push_notifications

import android.content.ComponentName
import android.content.Context
import android.os.Bundle
import androidx.test.core.app.ApplicationProvider
import com.amazonaws.amplify.amplify_push_notifications.*
import com.amplifyframework.annotations.InternalAmplifyApi
import com.amplifyframework.notifications.pushnotifications.NotificationContentProvider
import com.amplifyframework.notifications.pushnotifications.NotificationPayload
import com.amplifyframework.pushnotifications.pinpoint.PushNotificationsConstants
import com.amplifyframework.pushnotifications.pinpoint.PushNotificationsUtils
import com.amplifyframework.pushnotifications.pinpoint.permissions.PermissionRequestResult
import com.amplifyframework.pushnotifications.pinpoint.permissions.PushNotificationPermission
import com.google.android.gms.tasks.OnCompleteListener
import com.google.android.gms.tasks.Task
import com.google.firebase.messaging.FirebaseMessaging
import io.flutter.plugin.common.EventChannel
import io.mockk.*
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.runTest
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import java.lang.Exception
import kotlin.random.Random

@InternalAmplifyApi
@RunWith(RobolectricTestRunner::class)
class InternalPushNotificationUtilsTest {
    private object TestConst {
        const val ADHOC_KEY = "foo"
        const val ADHOC_VAL = "bar"
        const val BODY = "body"
        const val CAMPAIGN_ID = "campaign-id"
        const val CAMPAIGN_ACTIVITY_ID = "campaign-activity-id"
        const val DEEPLINK_URL = "deeplink://url"
        const val IMAGE_URL = "http://image.fakeurl/avocado.png"
        const val JOURNEY_ID = "journey-id"
        const val JOURNEY_ACTIVITY_ID = "journey-id"
        const val RANDOM_INT = 123
        const val TITLE = "title"
        const val URL = "https://goto.fakeurl"
    }

    private fun getTestPayload(data: Map<String, String> = mapOf()): NotificationPayload {
        return NotificationPayload.Builder(
            NotificationContentProvider.FCM(
                mapOf(PushNotificationsConstants.PINPOINT_PREFIX to "").plus(data)
            )
        ).build()
    }

    private lateinit var context: Context
    private val mockTask = mockk<Task<String>>()
    private val tokenOnCompleteListenerSlot = slot<OnCompleteListener<String>>()

    @Before
    fun setup() {
        context = ApplicationProvider.getApplicationContext()
        mockkConstructor(PushNotificationPermission::class)
        mockkConstructor(PushNotificationsUtils::class)
        mockkObject(Random)
        mockkStatic(Task::class)
        mockkStatic(FirebaseMessaging::class)

        justRun {
            anyConstructed<PushNotificationsUtils>().showNotification(any(), any(), any())
        }
        every { Random.nextInt() } returns TestConst.RANDOM_INT
        every { anyConstructed<PushNotificationsUtils>().areNotificationsEnabled() } returns true

        every { FirebaseMessaging.getInstance().token } returns mockTask
        every { mockTask.isSuccessful } returns true
        every { mockTask.result } returns "foo-bar"
        every { mockTask.addOnCompleteListener(capture(tokenOnCompleteListenerSlot)) } answers {
            tokenOnCompleteListenerSlot.captured.onComplete(mockTask)
            mockTask
        }
        val component = ComponentName(context.packageName, "TestMainActivity")
        shadowOf(context.packageManager).apply {
            addActivityIfNotPresent(component)
        }
    }

    @Test
    fun `returns permission status`() {
        val pushPermission = PushNotificationPermission(context)

        every {
            anyConstructed<PushNotificationPermission>().hasRequiredPermission
        } returns true
        assertTrue(pushPermission.hasRequiredPermission)

        every {
            anyConstructed<PushNotificationPermission>().hasRequiredPermission
        } returns false
        assertTrue(pushPermission.hasRequiredPermission)
    }

    @OptIn(ExperimentalCoroutinesApi::class)
    @Test
    fun `requests permission`() = runTest {
        coEvery {
            anyConstructed<PushNotificationPermission>().requestPermission()
        } returns PermissionRequestResult.Granted
        assertTrue(PushNotificationPermission(context).requestPermission() == PermissionRequestResult.Granted)

        coEvery {
            anyConstructed<PushNotificationPermission>().requestPermission()
        } returns PermissionRequestResult.NotGranted(
            true
        )
        assertTrue(
            PushNotificationPermission(context).requestPermission() == PermissionRequestResult.NotGranted(
                true
            )
        )
    }

    @Test
    fun `show notification if enabled`() {
        InternalPushNotificationUtils(context).showNotification(getTestPayload())
        verify {
            anyConstructed<PushNotificationsUtils>().showNotification(
                TestConst.RANDOM_INT,
                any(),
                context.getLaunchActivityClass()
            )
        }
    }

    @Test
    fun `does not show notification if not enabled`() {
        every { anyConstructed<PushNotificationsUtils>().areNotificationsEnabled() } returns false
        InternalPushNotificationUtils(context).showNotification(getTestPayload())
        verify(exactly = 0) {
            anyConstructed<PushNotificationsUtils>().showNotification(
                any(), any(), any()
            )
        }
    }

    @Test
    fun `does not show notification if explicitly silent`() {
        InternalPushNotificationUtils(context).showNotification(
            getTestPayload(
                mapOf(
                    PushNotificationsConstants.PINPOINT_NOTIFICATION_SILENTPUSH to "1"
                )
            )
        )
        verify(exactly = 0) {
            anyConstructed<PushNotificationsUtils>().showNotification(
                any(), any(), any()
            )
        }
    }

    @Test
    fun `builds a notificationId based on campaign attributes`() {
        InternalPushNotificationUtils(context).showNotification(
            getTestPayload(
                mapOf(
                    PushNotificationsConstants.PINPOINT_CAMPAIGN_CAMPAIGN_ID to TestConst.CAMPAIGN_ID,
                    PushNotificationsConstants.PINPOINT_CAMPAIGN_CAMPAIGN_ACTIVITY_ID to TestConst.CAMPAIGN_ACTIVITY_ID
                )
            )
        )
        verify {
            anyConstructed<PushNotificationsUtils>().showNotification(
                "${TestConst.CAMPAIGN_ID}:${TestConst.CAMPAIGN_ACTIVITY_ID}".hashCode(),
                any(),
                any()
            )
        }
    }

    @Test
    fun `builds a notificationId based on journey attributes`() {
        InternalPushNotificationUtils(context).showNotification(
            getTestPayload(
                mapOf(
                    PushNotificationsConstants.PINPOINT_PREFIX to Json.encodeToString(
                        mapOf(
                            PushNotificationsConstants.JOURNEY to mapOf(
                                PushNotificationsConstants.JOURNEY_ID to TestConst.JOURNEY_ID,
                                PushNotificationsConstants.JOURNEY_ACTIVITY_ID to TestConst.JOURNEY_ACTIVITY_ID
                            )
                        )
                    )
                )
            )
        )
        verify {
            anyConstructed<PushNotificationsUtils>().showNotification(
                "${TestConst.JOURNEY_ID}:${TestConst.JOURNEY_ACTIVITY_ID}".hashCode(), any(), any()
            )
        }
    }

    @Test
    fun `builds a random notificationId if only campaign id is present`() {
        InternalPushNotificationUtils(context).showNotification(
            getTestPayload(
                mapOf(
                    PushNotificationsConstants.PINPOINT_CAMPAIGN_CAMPAIGN_ID to TestConst.CAMPAIGN_ID
                )
            )
        )
        verify {
            anyConstructed<PushNotificationsUtils>().showNotification(
                TestConst.RANDOM_INT, any(), any()
            )
        }
    }

    @Test
    fun `returns if app is in foreground`() {
        every { anyConstructed<PushNotificationsUtils>().isAppInForeground() } returns true
        assertTrue(InternalPushNotificationUtils(context).isAppInForeground())
        every { anyConstructed<PushNotificationsUtils>().isAppInForeground() } returns false
        assertFalse(InternalPushNotificationUtils(context).isAppInForeground())
    }

    @Test
    fun `can create a payload from bundle`() {
        val bundle = Bundle()
        bundle.apply {
            putString(PushNotificationsConstants.PINPOINT_NOTIFICATION_TITLE, TestConst.TITLE)
            putString(PushNotificationsConstants.PINPOINT_NOTIFICATION_BODY, TestConst.BODY)
        }
        val payload = bundle.getNotificationPayload()
        assertEquals(
            TestConst.TITLE,
            payload?.rawData?.get(PushNotificationsConstants.PINPOINT_NOTIFICATION_TITLE)
        )
        assertEquals(
            TestConst.BODY,
            payload?.rawData?.get(PushNotificationsConstants.PINPOINT_NOTIFICATION_BODY)
        )
    }

    @Test
    fun `can create a writable map from payload`() {
        val payload = NotificationPayload.Builder(
            NotificationContentProvider.FCM(
                mapOf(
                    PushNotificationsConstants.PINPOINT_NOTIFICATION_TITLE to TestConst.TITLE,
                    PushNotificationsConstants.PINPOINT_NOTIFICATION_BODY to TestConst.BODY,
                    PushNotificationsConstants.PINPOINT_NOTIFICATION_IMAGEURL to TestConst.IMAGE_URL,
                    TestConst.ADHOC_KEY to TestConst.ADHOC_VAL
                )
            )
        ).build()
        val payloadMap = payload.toWritableMap()
        val fcmOptions = payloadMap["fcmOptions"] as Map<*,*>
        val data = payloadMap["data"] as Map<*,*>

        assertEquals(payloadMap["title"], TestConst.TITLE)
        assertEquals(payloadMap["body"], TestConst.BODY)
        assertEquals(payloadMap["imageUrl"], TestConst.IMAGE_URL)
        assertEquals(fcmOptions["channelId"], PushNotificationsConstants.DEFAULT_NOTIFICATION_CHANNEL_ID)
        assertEquals(data[TestConst.ADHOC_KEY], TestConst.ADHOC_VAL)

    }

    @Test
    fun `writable map from payload can contain url action`() {
        val payload = NotificationPayload.Builder(
            NotificationContentProvider.FCM(mapOf(PushNotificationsConstants.PINPOINT_URL to TestConst.URL))
        ).build()
        val payloadMap = payload.toWritableMap()
        val action = payloadMap["action"] as Map<*, *>
        assertEquals(action[PushNotificationsConstants.URL], TestConst.URL)
    }

    @Test
    fun `writable map from payload can contain deeplink action`() {
        val payload = NotificationPayload.Builder(
            NotificationContentProvider.FCM(mapOf(PushNotificationsConstants.PINPOINT_DEEPLINK to TestConst.DEEPLINK_URL))
        ).build()
        val payloadMap =  payload.toWritableMap()
        val action = payloadMap["action"] as Map<*, *>
        assertEquals(
            action[PushNotificationsConstants.DEEPLINK],
            TestConst.DEEPLINK_URL
        )

    }

    @Test
    fun `writable map from payload always has data`() {
        val payload = NotificationPayload.Builder(
            NotificationContentProvider.FCM(emptyMap())
        ).build()
        val payloadMap = payload.toWritableMap()

        assertTrue(payloadMap["data"] is Map<*, *>)
    }

    @Test
    fun `refresh token runs successfully`() {
        StreamHandlers.initStreamHandlers(refresh = true)
        val mockEventSink = mockk<EventChannel.EventSink>()
        mockkConstructor(EventChannel.EventSink::class)
        refreshToken()
        StreamHandlers.tokenReceived!!.onListen(ArgumentMatchers.any(), mockEventSink)
        verify(exactly = 1) {
            mockEventSink.success(any())
        }
    }

    @Test
    fun `refresh token sends error`() {
        StreamHandlers.initStreamHandlers(refresh = true)
        val mockEventSink = mockk<EventChannel.EventSink>()
        mockkConstructor(EventChannel.EventSink::class)
        every { mockTask.exception } returns Exception("test")
        every { mockTask.isSuccessful } returns false
        refreshToken()
        StreamHandlers.tokenReceived!!.onListen(ArgumentMatchers.any(), mockEventSink)
        verify(exactly = 1) {
            mockEventSink.error(any(),any(),any())
        }
    }

}