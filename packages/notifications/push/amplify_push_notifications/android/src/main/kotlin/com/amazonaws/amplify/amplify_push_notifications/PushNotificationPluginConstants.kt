// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import com.amplifyframework.annotations.InternalAmplifyApi

@InternalAmplifyApi
class PushNotificationPluginConstants {
    companion object {
        const val BACKGROUND_FUNCTION_KEY = "amplify_background_dart_entry_point"
        const val SHARED_PREFERENCES_KEY = "amplify_push_notification_plugin_cache"
        const val PREF_PREVIOUSLY_DENIED = "wasPermissionPreviouslyDenied"
        const val PERMISSION = "android.permission.POST_NOTIFICATIONS"
        const val CHANNEL_NAME_PREFIX = "com.amazonaws.amplify/push_notification"
        const val ACTION_NEW_TOKEN = "com.google.firebase.messaging.NEW_TOKEN"
        const val PAYLOAD_KEY = "payload"
        const val IS_LAUNCH_NOTIFICATION = "isLaunchNotification"
        const val FLUTTER_ENGINE_ID = "running_flutter_engine"
        const val BACKGROUND_ENGINE_ID = "background_flutter_engine"
        const val BACKGROUND_METHOD_CHANNEL =
            "plugins.flutter.io/amplify_push_notification_plugin_background"
    }
}
