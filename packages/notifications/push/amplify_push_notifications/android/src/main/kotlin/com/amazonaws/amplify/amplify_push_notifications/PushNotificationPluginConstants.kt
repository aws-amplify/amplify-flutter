// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

class PushNotificationPluginConstants {
    companion object {
        const val CALLBACK_DISPATCHER_HANDLE_KEY = "callback_dispatch_handler"
        const val SHARED_PREFERENCES_KEY = "amplify_push_notification_plugin_cache"
        const val BG_EXTERNAL_CALLBACK_HANDLE_KEY = "bg_external_callback_handle"
        const val PREF_PREVIOUSLY_DENIED = "wasPermissionPreviouslyDenied"
        const val PERMISSION = "android.permission.POST_NOTIFICATIONS"
        const val BACKGROUND_METHOD_CHANNEL =
            "plugins.flutter.io/amplify_push_notification_plugin_background"
        const val CHANNEL_NAME_PREFIX = "com.amazonaws.amplify/push_notification"
        const val ACTION_NEW_TOKEN = "com.google.firebase.messaging.NEW_TOKEN"
        const val PAYLOAD_KEY = "payload"
        const val IS_LAUNCH_NOTIFICATION = "isLaunchNotification"
    }
}
