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

import android.app.Activity
import android.content.Context
import android.os.Looper.getMainLooper
import androidx.test.core.app.ApplicationProvider.getApplicationContext
import com.amplifyframework.auth.AuthChannelEventName
import com.amplifyframework.auth.AuthException
import com.amplifyframework.core.Amplify
import com.amplifyframework.hub.HubChannel
import com.amplifyframework.hub.HubEvent
import com.amplifyframework.hub.SubscriptionToken
import com.amplifyframework.logging.Logger
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mockito.any
import org.mockito.Mockito.anyString
import org.mockito.Mockito.doNothing
import org.mockito.Mockito.mock
import org.mockito.Mockito.spy
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import java.util.concurrent.CountDownLatch

@RunWith(RobolectricTestRunner::class)
class AmplifyAuthCognitoHubTest {
    private var context: Context = getApplicationContext()
    private lateinit var flutterPlugin: AuthCognito
    private var mockHubHandler: AuthCognitoHubEventStreamHandler =
        mock(AuthCognitoHubEventStreamHandler::class.java)

    @Before
    fun setup() {
        flutterPlugin = AuthCognito()
        val mockLog = mock(Logger::class.java)
        doNothing().`when`(mockLog).error(anyString(), any(AuthException::class.java))
    }

    @Test
    fun test_hub_signedIn_event() {
        val latch = CountDownLatch(1)
        val realHubHandler = AuthCognitoHubEventStreamHandler(latch)

        flutterPlugin = AuthCognito(realHubHandler, mock(Activity::class.java))
        var eventData: HashMap<String, Any> = (
            readMapFromFile(
                "hub",
                "signedInEvent.json",
                HashMap::class.java
            ) as HashMap<String, Any>
            )

        var event: HubEvent<*> = HubEvent.create(AuthChannelEventName.SIGNED_IN)

        val hubSpy = spy(realHubHandler)

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.AUTH, event)
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(eventData)
    }

    @Test
    fun test_hub_signedOut_event() {
        val latch = CountDownLatch(1)
        val realHubHandler = AuthCognitoHubEventStreamHandler(latch)

        flutterPlugin = AuthCognito(realHubHandler, mock(Activity::class.java))
        var eventData: HashMap<String, Any> = (
            readMapFromFile(
                "hub",
                "signedOutEvent.json",
                HashMap::class.java
            ) as HashMap<String, Any>
            )

        var event: HubEvent<*> = HubEvent.create(AuthChannelEventName.SIGNED_OUT)

        val hubSpy = spy(realHubHandler)

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.AUTH, event)
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(eventData)
    }

    @Test
    fun test_hub_sessionExpired_event() {
        val latch = CountDownLatch(1)
        val realHubHandler = AuthCognitoHubEventStreamHandler(latch)

        flutterPlugin = AuthCognito(realHubHandler, mock(Activity::class.java))
        var eventData: HashMap<String, Any> = (
            readMapFromFile(
                "hub",
                "sessionExpiredEvent.json",
                HashMap::class.java
            ) as HashMap<String, Any>
            )

        var event: HubEvent<*> = HubEvent.create(AuthChannelEventName.SESSION_EXPIRED)

        val hubSpy = spy(realHubHandler)

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.AUTH, event)
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(eventData)
    }

    @Test
    fun test_hub_userDeleteEvent_event() {
        val latch = CountDownLatch(1)
        val realHubHandler = AuthCognitoHubEventStreamHandler(latch)

        flutterPlugin = AuthCognito(realHubHandler, mock(Activity::class.java))
        var eventData: HashMap<String, Any> = (readMapFromFile("hub",
            "userDeletedEvent.json",
            HashMap::class.java) as HashMap<String, Any>)

        var event: HubEvent<*> = HubEvent.create(AuthChannelEventName.USER_DELETED)

        val hubSpy = spy(realHubHandler)

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.AUTH, event)
        Latch.await(latch);
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(eventData)
    }
}
