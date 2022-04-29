/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

package com.amazonaws.amplify.amplify_auth_cognito

import android.os.Handler
import android.os.Looper
import com.amplifyframework.auth.AuthChannelEventName
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.InitializationStatus
import com.amplifyframework.hub.HubChannel
import com.amplifyframework.hub.HubEvent
import com.amplifyframework.hub.SubscriptionToken
import io.flutter.plugin.common.EventChannel
import java.util.concurrent.CountDownLatch

class AuthCognitoHubEventStreamHandler : EventChannel.StreamHandler {
    private var eventSink: EventChannel.EventSink? = null
    private val handler = Handler(Looper.getMainLooper())
    private lateinit var token: SubscriptionToken
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:auth_cognito_hub_evnet_stream_handler")
    private var forwardHubResponse: (event: Map<String, Any>) -> Unit

    constructor() {
        forwardHubResponse = { event: Map<String, Any> ->
            handler.post {
                eventSink?.success(event)
            }
        }
    }

    constructor(latch: CountDownLatch) {
        forwardHubResponse = { latch.countDown() }
    }

    override fun onListen(argunents: Any?, sink: EventChannel.EventSink) {
        eventSink = sink
        token = getHubListener()
    }

    fun getHubListener(): SubscriptionToken {
        return Amplify.Hub.subscribe(HubChannel.AUTH) { hubEvent: HubEvent<*> ->
            if (hubEvent.name == InitializationStatus.SUCCEEDED.toString()) {
                LOG.info("AuthPlugin successfully initialized")
            } else if (hubEvent.name == InitializationStatus.FAILED.toString()) {
                LOG.info("AuthPlugin failed to initialize")
            } else {
                when (AuthChannelEventName.valueOf(hubEvent.name)) {
                    AuthChannelEventName.SIGNED_IN,
                    AuthChannelEventName.SIGNED_OUT,
                    AuthChannelEventName.USER_DELETED,
                    AuthChannelEventName.SESSION_EXPIRED -> {
                        var hubEvent = mapOf("eventName" to hubEvent.name)
                        sendEvent(hubEvent)
                    }
                }
            }
        }
    }

    fun sendEvent(flutterEvent: Map<String, Any>) {
        forwardHubResponse(flutterEvent)
    }

    override fun onCancel(p0: Any?) {
        eventSink = null
        Amplify.Hub.unsubscribe(token)
    }
}
