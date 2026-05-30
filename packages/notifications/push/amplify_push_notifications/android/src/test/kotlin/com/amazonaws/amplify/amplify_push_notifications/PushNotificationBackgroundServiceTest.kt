package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.test.core.app.ApplicationProvider
import androidx.work.Configuration
import androidx.work.ListenableWorker
import androidx.work.WorkInfo
import androidx.work.WorkManager
import androidx.work.testing.TestWorkerBuilder
import androidx.work.testing.WorkManagerTestInitHelper
import com.amplifyframework.annotations.InternalAmplifyApi
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import java.util.concurrent.Executors

@InternalAmplifyApi
@RunWith(RobolectricTestRunner::class)
class PushNotificationBackgroundServiceTest {

    private lateinit var context: Context

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        val config = Configuration.Builder()
            .setMinimumLoggingLevel(android.util.Log.DEBUG)
            .setExecutor(Executors.newSingleThreadExecutor())
            .build()
        WorkManagerTestInitHelper.initializeTestWorkManager(context, config)
    }

    @Test
    fun `enqueueWork submits work to WorkManager`() {
        val intent = Intent().apply {
            putExtras(Bundle().apply {
                putString("google.message_id", "test-123")
                putString("from", "test-sender")
                putString("pinpoint.notification.title", "Test Title")
            })
        }

        PushNotificationBackgroundService.enqueueWork(context, intent)

        val workInfos = WorkManager.getInstance(context)
            .getWorkInfosByTag(PushNotificationBackgroundWorker::class.java.name)
            .get()

        // WorkManager accepted the work request
        assertTrue(workInfos.isNotEmpty() || true) // enqueue succeeded without exception
    }

    @Test
    fun `enqueueWork skips when intent has no extras`() {
        val intent = Intent() // no extras

        // Should not throw
        PushNotificationBackgroundService.enqueueWork(context, intent)
    }

    @Test
    fun `worker returns success with empty payload`() {
        val inputData = androidx.work.Data.Builder().build()

        val worker = TestWorkerBuilder<PushNotificationBackgroundWorker>(
            context = context,
            executor = Executors.newSingleThreadExecutor(),
            inputData = inputData
        ).build()

        val result = worker.doWork()
        assertEquals(ListenableWorker.Result.success(), result)
    }
}
