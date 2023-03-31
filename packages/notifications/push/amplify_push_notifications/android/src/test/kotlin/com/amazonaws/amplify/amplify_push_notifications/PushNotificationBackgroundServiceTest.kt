package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import com.amplifyframework.annotations.InternalAmplifyApi
import io.mockk.every
import io.mockk.justRun
import io.mockk.mockk
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

// TODO(Samaritan1011001): Test background service starting service, queueing and handling work
@InternalAmplifyApi
@RunWith(RobolectricTestRunner::class)
class PushNotificationBackgroundServiceTest {

    private lateinit var pushNotificationBackgroundService: PushNotificationBackgroundService
    private lateinit var context: Context
    private val mockSharedPreferences = mockk<SharedPreferences>()

    @Before
    fun setUp() {
        context = mockk()
        every {
            context.getSharedPreferences(
                PushNotificationPluginConstants.SHARED_PREFERENCES_KEY,
                Context.MODE_PRIVATE
            )
        } returns mockSharedPreferences
    }

    @Test
    fun `should start the background service`() {
        val mockSharedPreferencesEditor = mockk<SharedPreferences.Editor>()
        justRun { mockSharedPreferencesEditor.apply() }
        every { mockSharedPreferences.edit() } returns mockSharedPreferencesEditor
        PushNotificationBackgroundService.enqueueWork(
            context,
            Intent(context, AmplifyPushNotificationsPlugin::class.java)
        )
    }

}