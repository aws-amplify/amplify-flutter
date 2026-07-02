package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import android.os.Bundle
import android.os.Looper
import androidx.test.core.app.ApplicationProvider
import androidx.work.Data
import androidx.work.ListenableWorker
import androidx.work.WorkManager
import androidx.work.testing.TestListenableWorkerBuilder
import androidx.work.testing.WorkManagerTestInitHelper
import com.amplifyframework.annotations.InternalAmplifyApi
import com.amplifyframework.notifications.pushnotifications.NotificationContentProvider
import com.amplifyframework.notifications.pushnotifications.NotificationPayload
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
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows


@InternalAmplifyApi
@RunWith(RobolectricTestRunner::class)
class PushNotificationBackgroundServiceTest {

    private lateinit var pushNotificationBackgroundWorker: PushNotificationBackgroundWorker
    private lateinit var mockContext: Context
    private val mockSharedPreferences = mockk<SharedPreferences>()
    private lateinit var appContext: Context
    private lateinit var mockFlutterLoader: FlutterLoader
    private lateinit var mockFlutterEngine: FlutterEngine

    @Before
    fun setUp() {
        appContext = ApplicationProvider.getApplicationContext()
        WorkManagerTestInitHelper.initializeTestWorkManager(appContext)
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
        this.mockFlutterEngine = mockFlutterEngine
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
        pushNotificationBackgroundWorker =
            TestListenableWorkerBuilder<PushNotificationBackgroundWorker>(appContext).build()
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
        val result = pushNotificationBackgroundWorker.createAndRunBackgroundEngine(
            mockContext,
            mockFlutterLoader,
            mockFlutterEngine,
        )
        Shadows.shadowOf(Looper.getMainLooper()).idle()
        assertEquals(EngineStartResult.STARTED, result)
    }


    @Test
    fun `should throw if background processor function is not found`() {
        every {
            FlutterCallbackInformation.lookupCallbackInformation(any())
        } returns null
        assertThrows(Exception::class.java) {
            pushNotificationBackgroundWorker.createAndRunBackgroundEngine(
                mockContext,
                mockFlutterLoader,
                null,
            )
            Shadows.shadowOf(Looper.getMainLooper()).idle()
        }
    }

    @Test
    fun `enqueueWork submits work to WorkManager`() {
        val intent = Intent().apply {
            putExtras(Bundle().apply {
                putString("google.message_id", "test-123")
                putString("pinpoint.notification.title", "Test Title")
            })
        }

        PushNotificationBackgroundService.enqueueWork(appContext, intent)

        // A single request was submitted to the unique serialized work chain.
        val workInfos = WorkManager.getInstance(appContext)
            .getWorkInfosForUniqueWork("amplify_push_notification_background_work")
            .get()
        assertEquals(1, workInfos.size)
    }

    @Test
    fun `createAndRunBackgroundEngine returns CALLBACK_NOT_REGISTERED when no callback handle`() {
        every { mockSharedPreferences.getLong(any(), any()) } returns 0L
        every {
            anyConstructed<FlutterEngineCache>()
                .get(PushNotificationPluginConstants.BACKGROUND_ENGINE_ID)
        } returns null
        val mockFlutterEngine = mockk<FlutterEngine>()
        every { mockFlutterEngine.dartExecutor.executeDartCallback(any()) } returns mockk()
        every { mockFlutterEngine.dartExecutor.binaryMessenger } returns mockk()

        val result = pushNotificationBackgroundWorker.createAndRunBackgroundEngine(
            mockContext,
            mockFlutterLoader,
            mockFlutterEngine,
        )
        Shadows.shadowOf(Looper.getMainLooper()).idle()
        assertEquals(EngineStartResult.CALLBACK_NOT_REGISTERED, result)
    }

    @Test
    fun `doWork returns success on empty payload`() {
        val worker = TestListenableWorkerBuilder<PushNotificationBackgroundWorker>(appContext)
            .build()
        assertEquals(ListenableWorker.Result.success(), worker.doWork())
    }

    @Test
    fun `doWork returns failure once retry cap is reached`() {
        val worker = TestListenableWorkerBuilder<PushNotificationBackgroundWorker>(appContext)
            .setInputData(Data.Builder().putString("from", "test").build())
            .setRunAttemptCount(3)
            .build()
        assertEquals(ListenableWorker.Result.failure(), worker.doWork())
    }

    // Note: the REUSED-engine delivery path and the WorkManager-not-initialized guard
    // are covered at the instrumented level (see test plan Level 2). They depend on the
    // FlutterEngineCache singleton and real WorkManager initialization, which the JVM
    // unit test (mockk constructor/static mocking) cannot model reliably.

    @Test
    fun `toWorkData and toIntent round-trip supported types`() {
        val bundle = Bundle().apply {
            putString("string", "value")
            putInt("int", 42)
            putLong("long", 99L)
            putBoolean("boolean", true)
            putFloat("float", 1.5f)
            putDouble("double", 2.5)
        }

        val intent = bundle.toWorkData().toIntent()

        assertEquals("value", intent.getStringExtra("string"))
        assertEquals(42, intent.getIntExtra("int", 0))
        assertEquals(99L, intent.getLongExtra("long", 0L))
        assertTrue(intent.getBooleanExtra("boolean", false))
        assertEquals(1.5f, intent.getFloatExtra("float", 0f), 0f)
        assertEquals(2.5, intent.getDoubleExtra("double", 0.0), 0.0)
    }
}
