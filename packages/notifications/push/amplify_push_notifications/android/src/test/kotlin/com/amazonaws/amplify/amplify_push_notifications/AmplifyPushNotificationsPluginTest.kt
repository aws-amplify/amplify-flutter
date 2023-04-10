package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import com.amplifyframework.annotations.InternalAmplifyApi
import com.amplifyframework.notifications.pushnotifications.NotificationContentProvider
import com.amplifyframework.notifications.pushnotifications.NotificationPayload
import com.amplifyframework.pushnotifications.pinpoint.permissions.PermissionRequestResult
import com.amplifyframework.pushnotifications.pinpoint.permissions.PermissionRequestResult.*
import com.amplifyframework.pushnotifications.pinpoint.permissions.PushNotificationPermission
import com.google.android.gms.tasks.Task
import com.google.firebase.messaging.FirebaseMessaging
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink
import io.mockk.*
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers
import org.robolectric.RobolectricTestRunner


@InternalAmplifyApi
@ExperimentalCoroutinesApi
@RunWith(RobolectricTestRunner::class)
class AmplifyPushNotificationsPluginTest {

    private lateinit var amplifyPushNotificationsPlugin: AmplifyPushNotificationsPlugin
    private lateinit var mockEventSink: EventSink
    private val testPayload = NotificationPayload.Builder(
        NotificationContentProvider.FCM(emptyMap())
    ).build()
    private val mockTask = mockk<Task<String>>()
    private lateinit var context: Context
    private val mockSharedPreferences = mockk<SharedPreferences>()

    @Before
    fun setUp() {
        context = mockk()

        val mockedBinaryMessenger = mockk<BinaryMessenger>()
        mockkConstructor(EventChannel::class)
        every { anyConstructed<EventChannel>().setStreamHandler(any()) } returns
                StreamHandlers.initStreamHandlers(refresh = true)
        StreamHandlers.initEventChannels(mockedBinaryMessenger)

        mockkConstructor(PushNotificationPermission::class)
        mockkObject(NotificationPayload)
        mockkStatic(FirebaseMessaging::class)
        mockkStatic(NotificationPayload::toWritableMap)
        mockkStatic(PushNotificationPermission::class)
        mockkStatic(Task::class)
        mockEventSink = mockk()
        mockkConstructor(EventSink::class)
        val mockFlutterBinding = mockk<FlutterPluginBinding>()

        every {
            context.getSharedPreferences(
                PushNotificationPluginConstants.SHARED_PREFERENCES_KEY,
                Context.MODE_PRIVATE
            )
        } returns mockSharedPreferences
        every { mockSharedPreferences.getBoolean(any(), any()) } returns false
        every { FirebaseMessaging.getInstance().token } returns mockTask
        every { NotificationPayload.fromIntent(any()) } returns testPayload
        every { anyConstructed<PushNotificationPermission>().hasRequiredPermission } returns false
        amplifyPushNotificationsPlugin = AmplifyPushNotificationsPlugin()
        every { mockFlutterBinding.binaryMessenger } returns mockk()
        every { mockFlutterBinding.binaryMessenger.setMessageHandler(any(), any()) } returns mockk()
        every { mockFlutterBinding.flutterEngine } returns mockk()
        every { mockFlutterBinding.applicationContext } returns context
        mockkStatic(::refreshToken)
        every { refreshToken() } returns mockk()
        amplifyPushNotificationsPlugin.onAttachedToEngine(mockFlutterBinding)
    }

    @After
    fun tearDown() {
        StreamHandlers.deInit()
        unmockkStatic(::refreshToken)
        unmockkObject(NotificationPayload)
        unmockkStatic(FirebaseMessaging::class)
        unmockkStatic(NotificationPayload::toWritableMap)
        unmockkStatic(PushNotificationPermission::class)
    }

    @Test
    fun `onNewIntent does nothing if intent does not contain payload`() {
        every { NotificationPayload.fromIntent(any()) } returns null
        amplifyPushNotificationsPlugin.onNewIntent(Intent())

        StreamHandlers.notificationOpened!!.onListen(ArgumentMatchers.any(), mockEventSink)
        verify(exactly = 0) {
            mockEventSink.success(any())
        }
    }

    @Test
    fun `onNewIntent sends notification opened event if intent contains payload`() {
        amplifyPushNotificationsPlugin.onNewIntent(Intent())
        StreamHandlers.notificationOpened!!.onListen(ArgumentMatchers.any(), mockEventSink)
        verify(exactly = 1) {
            mockEventSink.success(any())
        }
    }

    @Test
    fun `getLaunchNotification is available only when the app starts from a killed state`() {
        amplifyPushNotificationsPlugin.onNewIntent(
            Intent().putExtra(
                PushNotificationPluginConstants.IS_LAUNCH_NOTIFICATION,
                true
            )
        )
        assertEquals(amplifyPushNotificationsPlugin.launchNotification, testPayload.toWritableMap())
    }

    @Test
    fun `getLaunchNotification is wiped when accessed more than once`() {
        amplifyPushNotificationsPlugin.onNewIntent(
            Intent().putExtra(
                PushNotificationPluginConstants.IS_LAUNCH_NOTIFICATION,
                true
            )
        )
        assertEquals(amplifyPushNotificationsPlugin.launchNotification, testPayload.toWritableMap())
        assertNull(amplifyPushNotificationsPlugin.launchNotification)
    }

    // TODO(Samaritan1011001): Implement after figuring out the above todo
    @Test
    fun `returns Granted permission status`() {
        every { anyConstructed<PushNotificationPermission>().hasRequiredPermission } returns true
        val mockResult =
            mockk<PushNotificationsHostApiBindings.Result<PushNotificationsHostApiBindings.GetPermissionStatusResult>>()
        every { mockResult.success(any()) } returns mockk()
        mockkConstructor(PushNotificationsHostApiBindings.GetPermissionStatusResult.Builder::class)
        amplifyPushNotificationsPlugin.getPermissionStatus(mockResult)
        verify {
            mockResult.success(any())
        }
    }

    @Test
    fun `requests permission`() = runTest {
        coEvery { anyConstructed<PushNotificationPermission>().requestPermission() } returns PermissionRequestResult.Granted
        val mockResult = mockk<PushNotificationsHostApiBindings.Result<Boolean>>()
        every { mockResult.success(any()) } returns mockk()
        amplifyPushNotificationsPlugin.requestPermissions(mockk(), mockResult)
        advanceUntilIdle()
        verify { mockResult.success(true) }
    }

    @Test
    fun `requests permission sets previously denied flag`() = runTest {
        val mockSharedPreferencesEditor = mockk<SharedPreferences.Editor>()
        justRun { mockSharedPreferencesEditor.apply() }
        every { mockSharedPreferences.edit() } returns mockSharedPreferencesEditor
        every {
            mockSharedPreferencesEditor.putBoolean(
                any(), any()
            )
        } returns mockSharedPreferencesEditor
        coEvery { anyConstructed<PushNotificationPermission>().requestPermission() } returns NotGranted(
            shouldShowRationale = true
        )
        val mockResult = mockk<PushNotificationsHostApiBindings.Result<Boolean>>()
        every { mockResult.success(any()) } returns mockk()
        amplifyPushNotificationsPlugin.requestPermissions(mockk(), mockResult)
        advanceUntilIdle()
        verify {
            mockResult.success(false)
            mockSharedPreferencesEditor.putBoolean(
                PushNotificationPluginConstants.PREF_PREVIOUSLY_DENIED,
                true
            )
        }
    }
}
