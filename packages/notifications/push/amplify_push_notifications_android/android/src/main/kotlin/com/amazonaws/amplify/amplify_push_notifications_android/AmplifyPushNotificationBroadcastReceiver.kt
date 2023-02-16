package com.amazonaws.amplify.amplify_push_notifications_android


import android.app.ActivityManager
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import com.google.firebase.messaging.RemoteMessage



class PushNotificationReceiver : BroadcastReceiver() {
    companion object {
        private val TAG = "PushNotifReceiver"
    }

    override fun onReceive(context: Context, intent: Intent?) {
        intent?.let {
            if (isPushNotificationIntent(it)) {
                val remoteMessage = RemoteMessage(it.extras)
                val remoteMessageBundle = getBundleFromRemoteMessage(remoteMessage)
                if (isAppInForeground(context)) {
                    val notificationDataJson = convertBundleToJson(remoteMessageBundle)
                    Log.d(TAG, "Send foreground message received event: $notificationDataJson")

                    NativeToDartEventManager.sendEvent(
                        PushNotificationEventType.FOREGROUND_MESSAGE_RECEIVED, notificationDataJson
                    )
                } else {
                    Log.d(TAG, "App is in background, start background service and enqueue work")
                    try {

                        // TODO: Use PushNotification Utils from the native team
//                        PushNotificationsUtils(context,"testChannelId").showNotification(NotificationPayload("test", "bodyyyy",null,"https://9to5mac.com/wp-content/uploads/sites/6/2022/06/7411.WWDC_2022_Light-1024w-1366h@2xipad.jpeg?quality=82&strip=all"),

                        // TODO: Start a background headless service
//                        FlutterMain.startInitialization(context)
//                        FlutterMain.ensureInitializationComplete(context, null)
//                        PushNotificationBackgroundService.enqueueWork(context, it)

                    } catch (exception: Exception) {
                        Log.e(TAG, "Something went wrong while starting headless task $exception")
                    }
                }
            }
        }
    }

    private fun isAppInForeground(context: Context): Boolean {
        // Gets a list of running processes.
        val processes =
            (context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager).runningAppProcesses

        // On some versions of android the first item in the list is what runs in the foreground, but this is not true
        // on all versions. Check the process importance to see if the app is in the foreground.
        val packageName = context.applicationContext.packageName
        for (appProcess in processes) {
            val processName = appProcess.processName
            if (appProcess.importance == ActivityManager.RunningAppProcessInfo.IMPORTANCE_FOREGROUND && processName == packageName) {
                return true
            }
        }
        return false
    }

}