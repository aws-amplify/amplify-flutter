// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import androidx.lifecycle.DefaultLifecycleObserver
import androidx.lifecycle.LifecycleOwner
import com.amplifyframework.annotations.InternalAmplifyApi

private const val TAG = "AmplifyLifecycleObserver"

@InternalAmplifyApi
class AmplifyLifecycleObserver : DefaultLifecycleObserver {
    private var isAppLaunch: Boolean = true
    override fun onResume(owner: LifecycleOwner) {

        // Only set launchNotification to null when app resumes from background.
        if (!isAppLaunch) {
            AmplifyPushNotificationsPlugin.launchNotification = null
            AmplifyPushNotificationsPlugin.flutterApi!!.nullifyLaunchNotification {  }
        }
        refreshToken()
        isAppLaunch = false
        super.onResume(owner)
    }
}
