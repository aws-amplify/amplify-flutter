import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Bundle
import com.amazonaws.amplify.amplify_push_notifications.*
import com.amplifyframework.annotations.InternalAmplifyApi
import com.amplifyframework.notifications.pushnotifications.NotificationContentProvider
import com.amplifyframework.notifications.pushnotifications.NotificationPayload
import com.amplifyframework.pushnotifications.pinpoint.PushNotificationsConstants
import com.amplifyframework.pushnotifications.pinpoint.PushNotificationsUtils
import com.amplifyframework.pushnotifications.pinpoint.permissions.PermissionRequestResult
import com.amplifyframework.pushnotifications.pinpoint.permissions.PushNotificationPermission
import io.mockk.*
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.runTest
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import org.junit.Assert.*
import org.junit.Before
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
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

//    private val launchIntentFilter = IntentFilter(Intent.ACTION_MAIN).apply {
//        addCategory(Intent.CATEGORY_LAUNCHER)
//    }
//    private val mockMap = mockk<Map<Any, Any?>>()
    private lateinit var context: Context

    @Before
    fun setup() {
        println("context in setup")

        context = RuntimeEnvironment.getApplication().applicationContext
        mockkConstructor(PushNotificationPermission::class)
        mockkConstructor(PushNotificationsUtils::class)
        mockkObject(Random)
        mockkClass(IntentFilter::class)
//        mockkStatic(Arguments::class)
        justRun {
//            mockMap.putMap(any(), any())
//            mockMap.putString(any(), any())
            anyConstructed<PushNotificationsUtils>().showNotification(any(), any(), any())
        }
        every { Random.nextInt() } returns TestConst.RANDOM_INT
        every { anyConstructed<PushNotificationsUtils>().areNotificationsEnabled() } returns true
//        every { Arguments.createMap() } returns mockMap
        val component = ComponentName(context.packageName, "TestMainActivity")
        shadowOf(context.packageManager).apply {
            addActivityIfNotPresent(component)
//            addIntentFilterForActivity(component, launchIntentFilter)
        }
    }

    @Test
    fun `returns permission status`() {
        context = RuntimeEnvironment.getApplication().applicationContext

        val pushPermission = PushNotificationPermission(context)

        every {
            anyConstructed<PushNotificationPermission>().hasRequiredPermission
        } returns true
        Assertions.assertTrue(pushPermission.hasRequiredPermission)

        every {
            anyConstructed<PushNotificationPermission>().hasRequiredPermission
        } returns false
        Assertions.assertFalse(pushPermission.hasRequiredPermission)
    }

//    @Test
//    fun `requests permission`() = runTest {
//        coEvery {
//            anyConstructed<PushNotificationPermission>().requestPermission()
//        } returns PermissionRequestResult.Granted
//        assertTrue(PushNotificationPermission(context).requestPermission() == PermissionRequestResult.Granted)
//
//        coEvery {
//            anyConstructed<PushNotificationPermission>().requestPermission()
//        } returns PermissionRequestResult.NotGranted(
//            true
//        )
//        assertTrue(
//            PushNotificationPermission(context).requestPermission() == PermissionRequestResult.NotGranted(
//                true
//            )
//        )
//    }

    @Test
    fun `shows notification if enabled`() {
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
        Assertions.assertTrue(InternalPushNotificationUtils(context).isAppInForeground())
        every { anyConstructed<PushNotificationsUtils>().isAppInForeground() } returns false
        Assertions.assertFalse(InternalPushNotificationUtils(context).isAppInForeground())
    }

    @Test
    fun `can create a payload from bundle`() {
        val bundle = Bundle()
        bundle.apply {
            putString(PushNotificationsConstants.PINPOINT_NOTIFICATION_TITLE, TestConst.TITLE)
            putString(PushNotificationsConstants.PINPOINT_NOTIFICATION_BODY, TestConst.BODY)
        }

        println("bundle: ${bundle}")
        val payload = bundle.getNotificationPayload()
        Assertions.assertEquals(
            TestConst.TITLE,
            payload?.rawData?.get(PushNotificationsConstants.PINPOINT_NOTIFICATION_TITLE)
        )
        Assertions.assertEquals(
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

        Assertions.assertEquals(payloadMap["title"], TestConst.TITLE)
        Assertions.assertEquals(payloadMap["body"], TestConst.BODY)
        Assertions.assertEquals(payloadMap["imageUrl"], TestConst.IMAGE_URL)
        Assertions.assertEquals(fcmOptions["channelId"], PushNotificationsConstants.DEFAULT_NOTIFICATION_CHANNEL_ID)
        Assertions.assertEquals(data[TestConst.ADHOC_KEY], TestConst.ADHOC_VAL)

    }

    @Test
    fun `writable map from payload can contain url action`() {
        val payload = NotificationPayload.Builder(
            NotificationContentProvider.FCM(mapOf(PushNotificationsConstants.PINPOINT_URL to TestConst.URL))
        ).build()
        val payloadMap = payload.toWritableMap()
        val action = payloadMap["action"] as Map<*, *>
        Assertions.assertEquals(action[PushNotificationsConstants.URL], TestConst.URL)
    }

    @Test
    fun `writable map from payload can contain deeplink action`() {
        val payload = NotificationPayload.Builder(
            NotificationContentProvider.FCM(mapOf(PushNotificationsConstants.PINPOINT_DEEPLINK to TestConst.DEEPLINK_URL))
        ).build()
        val payloadMap =  payload.toWritableMap()
        val action = payloadMap["action"] as Map<*, *>
        Assertions.assertEquals(
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

        Assertions.assertTrue(payloadMap["data"] is Map<*, *>)
    }

}