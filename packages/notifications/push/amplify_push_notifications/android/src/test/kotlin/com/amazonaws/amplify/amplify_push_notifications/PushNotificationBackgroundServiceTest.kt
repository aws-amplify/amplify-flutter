package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import android.os.Looper
import com.amplifyframework.annotations.InternalAmplifyApi
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.loader.FlutterLoader
import io.flutter.plugin.common.MethodChannel
import io.flutter.view.FlutterCallbackInformation
import io.mockk.*
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows
import org.robolectric.android.controller.ServiceController


@InternalAmplifyApi
@RunWith(RobolectricTestRunner::class)
class PushNotificationBackgroundServiceTest {

    private lateinit var pushNotificationBackgroundService: PushNotificationBackgroundService
    private lateinit var mockContext: Context
    private val mockSharedPreferences = mockk<SharedPreferences>()
    private lateinit var controller: ServiceController<PushNotificationBackgroundService>
    private lateinit var mockFlutterLoader: FlutterLoader

    @Before
    fun setUp() {
        controller =
            Robolectric.buildService(PushNotificationBackgroundService::class.java, Intent())
        mockContext = mockk()
        every {
            mockContext.getSharedPreferences(
                PushNotificationPluginConstants.SHARED_PREFERENCES_KEY,
                Context.MODE_PRIVATE
            )
        } returns mockSharedPreferences

        mockFlutterLoader = mockk()

        val mockSharedPreferencesEditor = mockk<SharedPreferences.Editor>()
        justRun { mockSharedPreferencesEditor.apply() }
        every { mockSharedPreferences.edit() } returns mockSharedPreferencesEditor
        every {
            mockSharedPreferences.getLong(
                any(), any()
            )
        } returns 5555

        val mockFlutterEngine = mockk<FlutterEngine>()
        mockkConstructor(FlutterEngineCache::class)
        every {
            anyConstructed<FlutterEngineCache>()
                .get(PushNotificationPluginConstants.BACKGROUND_ENGINE_ID)
        } returns mockFlutterEngine

        every {
            mockFlutterEngine.dartExecutor.executeDartCallback(any())
        } returns mockk()
        every {
            mockFlutterEngine.dartExecutor.binaryMessenger
        } returns mockk()
        mockkStatic(FlutterCallbackInformation::class)
        val mockFlutterCallbackInformation = mockk<FlutterCallbackInformation>()
        every {
            FlutterCallbackInformation.lookupCallbackInformation(any())
        } returns mockFlutterCallbackInformation

        mockkConstructor(MethodChannel::class)
        every { anyConstructed<MethodChannel>().setMethodCallHandler(any()) } returns mockk()

        every { mockContext.assets } returns mockk()
        every { mockFlutterLoader.findAppBundlePath() } returns ""
        pushNotificationBackgroundService = PushNotificationBackgroundService()
    }

    @After
    fun tearDown() {
        unmockkStatic(FlutterCallbackInformation::class)
    }

    @Test
    fun `should start the background service`() {
        val mockFlutterEngine = mockk<FlutterEngine>()
        every {
            anyConstructed<FlutterEngineCache>()
                .get(PushNotificationPluginConstants.BACKGROUND_ENGINE_ID)
        } returns null

        every { mockFlutterEngine.dartExecutor.executeDartCallback(any()) } returns mockk()
        every { mockFlutterEngine.dartExecutor.binaryMessenger } returns mockk()
        pushNotificationBackgroundService.createAndRunBackgroundEngine(
            mockContext,
            mockFlutterLoader,
            mockFlutterEngine,
        )
        Shadows.shadowOf(Looper.getMainLooper()).idle()
    }


    @Test
    fun `should throw if background processor function is not found`() {
        every {
            FlutterCallbackInformation.lookupCallbackInformation(any())
        } returns null
        assertThrows(Exception::class.java) {
            pushNotificationBackgroundService.createAndRunBackgroundEngine(
                mockContext,
                mockFlutterLoader,
                null,
            )
            Shadows.shadowOf(Looper.getMainLooper()).idle()
        }
    }
}
