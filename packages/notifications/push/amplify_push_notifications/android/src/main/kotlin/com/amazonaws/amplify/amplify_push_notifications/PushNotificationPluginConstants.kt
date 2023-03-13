// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

class PushNotificationPluginConstants {
    companion object {
        const val SHARED_PREFERENCES_KEY = "amplify_push_notification_plugin_cache"
        const val PREF_PREVIOUSLY_DENIED = "wasPermissionPreviouslyDenied"
        const val PERMISSION = "android.permission.POST_NOTIFICATIONS"
        const val CHANNEL_NAME_PREFIX = "com.amazonaws.amplify/push_notification"
        const val ACTION_NEW_TOKEN = "com.google.firebase.messaging.NEW_TOKEN"
        const val PAYLOAD_KEY = "payload"
        const val IS_LAUNCH_NOTIFICATION = "isLaunchNotification"
        const val FLUTTER_ENGINE_ID = "main_flutter_engine"
    }
}
