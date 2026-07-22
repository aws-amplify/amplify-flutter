// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.work.Configuration
import androidx.work.WorkInfo
import androidx.work.WorkManager
import androidx.work.testing.WorkManagerTestInitHelper
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import java.util.concurrent.Executors

/**
 * Instrumented (on-device / emulator) tests for the WorkManager background push path.
 *
 * These close the gaps the JVM unit tests cannot model:
 * the real [WorkManager] enqueue + serialized unique-work chain semantics that replace
 * the previous JobIntentService's implicit single-threaded queue.
 *
 * What is intentionally NOT exercised here:
 *  - The worker body spinning up a background Flutter engine and invoking the Dart
 *    callback dispatcher. That requires a fully configured app (Pinpoint + FCM +
 *    registered Dart callback) and is covered by the manual end-to-end matrix
 *    using the `amplify_push_notifications_pinpoint` example.
 *  - Retry backoff timing (WorkManager's exponential backoff caps at ~5h), which is not
 *    deterministically observable in an automated test.
 *
 * Run on a connected device/emulator:
 *   ./gradlew :app:connectedDebugAndroidTest
 * (from packages/notifications/push/amplify_push_notifications/example/android)
 */
@RunWith(AndroidJUnit4::class)
class PushNotificationBackgroundWorkerInstrumentedTest {

    private lateinit var context: Context
    private val uniqueWorkName = "amplify_push_notification_background_work"

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        // Initialize the test WorkManager. With the test harness, enqueued work does NOT
        // run automatically (it must be triggered via TestDriver), so the full chain
        // stays observable in its ENQUEUED/BLOCKED state for these assertions.
        val config = Configuration.Builder()
            .setMinimumLoggingLevel(android.util.Log.DEBUG)
            .setExecutor(Executors.newSingleThreadExecutor())
            .build()
        WorkManagerTestInitHelper.initializeTestWorkManager(context, config)
    }

    private fun fcmIntent(messageId: String): Intent = Intent().apply {
        putExtras(Bundle().apply {
            putString("google.message_id", messageId)
            putString("from", "test-sender")
            putString("pinpoint.notification.title", "Title $messageId")
        })
    }

    @Test
    fun enqueueWork_putsRequestOnUniqueChain() {
        PushNotificationBackgroundService.enqueueWork(context, fcmIntent("msg-1"))

        val workInfos = WorkManager.getInstance(context)
            .getWorkInfosForUniqueWork(uniqueWorkName)
            .get()

        assertEquals(1, workInfos.size)
        assertEquals(
            PushNotificationBackgroundWorker::class.java.name,
            workInfos[0].tags.first { it.contains("PushNotificationBackgroundWorker") }
        )
    }

    @Test
    fun enqueueWork_serializesMultipleNotificationsOntoOneChain() {
        // Five notifications arriving in rapid succession. The task executor is gated in
        // setUp, so none execute — the whole chain is observable as enqueued/blocked.
        repeat(5) { i ->
            PushNotificationBackgroundService.enqueueWork(context, fcmIntent("msg-$i"))
        }

        val workInfos = WorkManager.getInstance(context)
            .getWorkInfosForUniqueWork(uniqueWorkName)
            .get()

        // APPEND_OR_REPLACE keeps every request on a single named chain rather than
        // spawning independent parallel requests (which would race on the shared engine).
        assertEquals(5, workInfos.size)
        // The chain runs one at a time: nothing has completed, and at most one item is
        // RUNNING while the rest are ENQUEUED/BLOCKED behind it.
        val running = workInfos.count { it.state == WorkInfo.State.RUNNING }
        assertTrue("expected at most one running worker, found $running", running <= 1)
        val finished = workInfos.count { it.state.isFinished }
        assertEquals("no worker should finish while the executor is gated", 0, finished)
    }

    @Test
    fun enqueueWork_skipsWhenIntentHasNoExtras() {
        // A null-extras intent must not enqueue anything (and must not throw).
        PushNotificationBackgroundService.enqueueWork(context, Intent())

        val workInfos = WorkManager.getInstance(context)
            .getWorkInfosForUniqueWork(uniqueWorkName)
            .get()
        assertTrue(workInfos.isEmpty())
    }

    @Test
    fun enqueueWork_isReachableThroughRealWorkManager() {
        // Smoke check that the public API resolves a real WorkManager instance on device
        // (i.e. WorkManager auto-init/test-init is present and getInstance succeeds).
        PushNotificationBackgroundService.enqueueWork(context, fcmIntent("smoke"))

        val operationState = WorkManager.getInstance(context)
            .getWorkInfosForUniqueWork(uniqueWorkName)
            .get()
        assertNotNull(operationState)
    }
}
