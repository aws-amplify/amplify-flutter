// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import com.google.firebase.messaging.FirebaseMessagingService

class PushNotificationFirebaseMessagingService : FirebaseMessagingService() {

    /**
     * Called if the FCM registration token is updated. This may occur if the security of
     * the previous token had been compromised. Note that this is called when the
     * FCM registration token is initially generated so this is where you would retrieve the token.
     */
    override fun onNewToken(token: String) {
        val hashMap: HashMap<String, Any?> = HashMap()
        hashMap["token"] = token
        PushNotificationEventsStreamHandler.sendEvent(
            PushNotificationsEvent(NativeEvent.TOKEN_RECEIVED, hashMap)
        )

    }
}
