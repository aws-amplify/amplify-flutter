// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.util.Log
import androidx.lifecycle.DefaultLifecycleObserver
import androidx.lifecycle.LifecycleOwner
import com.amplifyframework.annotations.InternalAmplifyApi

private const val TAG = "AmplifyLifecycleObserver"

@InternalAmplifyApi
class AmplifyLifecycleObserver : DefaultLifecycleObserver {
    private  var isCalledAtStart:Boolean = true
    override fun onResume(owner: LifecycleOwner) {

        // Need to null it only when the app resumes from background and not on app start.
        if(!isCalledAtStart) {
            AmplifyPushNotificationsPlugin.launchNotification = null
        }
        refreshToken()
        isCalledAtStart = false
        super.onResume(owner)
    }
    override fun onCreate(owner: LifecycleOwner) {
        refreshToken()
        super.onCreate(owner)
    }
}
