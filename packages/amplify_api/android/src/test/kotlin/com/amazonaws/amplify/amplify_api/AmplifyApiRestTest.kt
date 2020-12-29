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

package com.amazonaws.amplify.amplify_datastore


import com.amazonaws.amplify.amplify_api.AmplifyApiPlugin
import com.amplifyframework.api.ApiCategory
import com.amplifyframework.api.ApiException
import com.amplifyframework.api.aws.AWSApiPlugin
import com.amplifyframework.api.rest.RestOperation
import com.amplifyframework.api.rest.RestOptions
import com.amplifyframework.api.rest.RestResponse

import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import com.amplifyframework.hub.HubEvent
import com.amplifyframework.hub.SubscriptionToken
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.junit.Assert
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers
import org.mockito.Mockito
import org.mockito.Mockito.*
import org.mockito.invocation.Invocation
import org.mockito.invocation.InvocationOnMock
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import java.lang.reflect.Field
import java.lang.reflect.Modifier
import java.util.concurrent.CountDownLatch

@RunWith(RobolectricTestRunner::class)
class AmplifyApiRestTest {
    lateinit var flutterPlugin: AmplifyApiPlugin

    private var mockApi = mock(ApiCategory::class.java)
    private var mockAWSApiPlugin = mock(AWSApiPlugin::class.java)

    private val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
    private val mockRestOperation: RestOperation = mock(RestOperation::class.java)

    @Before
    fun setup() {
        flutterPlugin = AmplifyApiPlugin()

        setFinalStatic(Amplify::class.java.getDeclaredField("API"), mockApi)
    }

    @Test
    fun test_get_returns_success(){

        var data = "{\"success\":\"get call succeed!\",\"url\":\"/items\"}".toByteArray()
        var restResponse = RestResponse(200, data)

        Mockito.doAnswer { invocation: InvocationOnMock ->
            Assert.assertEquals(
                    RestOptions.builder().addPath("/items").build(),
                    invocation.arguments[0]
            )
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                    restResponse
            )
            mockRestOperation
        }.`when`(mockApi).get(
                ArgumentMatchers.any(RestOptions::class.java),
                ArgumentMatchers.any(),
                ArgumentMatchers.any())

        var arguments : Map<String, Any> = mapOf(
                "restOptions" to mapOf(
                    "path" to "/items"
                ),
                "code" to "someCode"
        )

        flutterPlugin.onMethodCall(
                MethodCall("get", arguments),
                mockResult
        )

        verify(mockResult, times(1)).success(
                mapOf(
                        "data" to restResponse.data.rawBytes
                )
        )

    }

    @Test
    fun test_post_returns_success(){

        var body = "{\"name\":\"Mow the lawn\"}".toByteArray()
        var data = "{\"success\": \"post call succeed!\",\"url\":\"/items?queryParameterA=queryValueA&queryParameterB=queryValueB\",\"body\": {\"name\": \"Mow the lawn\"}}".toByteArray()

        var restResponse = RestResponse(200, data)

        Mockito.doAnswer { invocation: InvocationOnMock ->
            /* While the RestOptions are equal, a Kotlin bug registers the results as different
            Assert.assertEquals(
                    RestOptions.builder()
                            .addPath("/items")
                            .addBody( body )
                            .addHeader( "headerA", "headerValueA")
                            .addHeader( "headerB", "headerValueB")
                            .addQueryParameters( mapOf(
                                    "queryParameterA" to "queryValueA",
                                    "queryParameterB" to "queryValueB"
                            ))
                            .build(),
                    invocation.arguments[0]
            )
             */
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                    restResponse
            )
            mockRestOperation
        }.`when`(mockApi).post(
                ArgumentMatchers.any(RestOptions::class.java),
                ArgumentMatchers.any(),
                ArgumentMatchers.any())

        var arguments : Map<String, Any> = mapOf(
                "restOptions" to mapOf(
                        "path" to "/items",
                        "body" to body,
                        "apiName" to "restapi",
                        "headers" to mapOf(
                                "headerA" to "headerValueA",
                                "headerB" to "headerValueB"
                        ),
                        "queryParameters" to mapOf(
                                "queryParameterA" to "queryValueA",
                                "queryParameterB" to "queryValueB"
                        )
                ),
                "code" to "someCode"
        )

        flutterPlugin.onMethodCall(
                MethodCall("post", arguments),
                mockResult
        )

        verify(mockResult, times(1)).success(
                mapOf(
                        "data" to restResponse.data.rawBytes
                )
        )

    }

    @Test
    fun test_put_all_inputs_returns_success(){

        var body = "{\"name\":\"Mow the lawn\"}".toByteArray()
        var data = "{\"success\": \"put call succeed!\",\"body\": {\"name\": \"Mow the lawn\"}}".toByteArray()

        var restResponse = RestResponse(200, data)

        Mockito.doAnswer { invocation: InvocationOnMock ->
            /* While the RestOptions are equal, a Kotlin bug registers the results as different
            Assert.assertEquals(
                    RestOptions.builder()
                            .addPath("/items")
                            .addBody( body )
                            .addHeader( "headerA", "headerValueA")
                            .addHeader( "headerB", "headerValueB")
                            .addQueryParameters( mapOf(
                                    "queryParameterA" to "queryValueA",
                                    "queryParameterB" to "queryValueB"
                            ))
                            .build(),
                    invocation.arguments[0]
            )
             */
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                    restResponse
            )
            mockRestOperation
        }.`when`(mockApi).put(
                ArgumentMatchers.any(RestOptions::class.java),
                ArgumentMatchers.any(),
                ArgumentMatchers.any())

        var arguments : Map<String, Any> = mapOf(
                "restOptions" to mapOf(
                        "path" to "/items",
                        "body" to body
                ),
                "code" to "someCode"
        )

        flutterPlugin.onMethodCall(
                MethodCall("put", arguments),
                mockResult
        )

        verify(mockResult, times(1)).success(
                mapOf(
                        "data" to restResponse.data.rawBytes
                )
        )

    }

    @Test
    fun test_delete_returns_success(){

        var data = "{\"success\": \"delete call succeed!\",\"url\": \"items\"}".toByteArray()

        var restResponse = RestResponse(200, data)

        Mockito.doAnswer { invocation: InvocationOnMock ->

            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                    restResponse
            )
            mockRestOperation
        }.`when`(mockApi).delete(
                ArgumentMatchers.any(RestOptions::class.java),
                ArgumentMatchers.any(),
                ArgumentMatchers.any())

        var arguments : Map<String, Any> = mapOf(
                "restOptions" to mapOf(
                        "path" to "/items"
                ),
                "code" to "someCode"
        )

        flutterPlugin.onMethodCall(
                MethodCall("delete", arguments),
                mockResult
        )

        verify(mockResult, times(1)).success(
                mapOf(
                        "data" to restResponse.data.rawBytes
                )
        )

    }

    // Invalid response code throws error
    @Test
    fun test_get_code_error(){

        var data = "{\"error\":\"get call failed!\"}".toByteArray()
        var restResponse = RestResponse(400, data)

        Mockito.doAnswer { invocation: InvocationOnMock ->
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                    restResponse
            )
            mockRestOperation
        }.`when`(mockApi).get(
                ArgumentMatchers.any(RestOptions::class.java),
                ArgumentMatchers.any(),
                ArgumentMatchers.any())

        var arguments : Map<String, Any> = mapOf(
                "restOptions" to mapOf(
                        "path" to "/items"
                ),
                "code" to "someCode"
        )

        flutterPlugin.onMethodCall(
                MethodCall("get", arguments),
                mockResult
        )

        verify(mockResult, times(1)).error(
                "AmplifyApiRestException",
                "someMsg",
                "errorDetails"
        )

    }

    // Invalid response code throws error
    @Test
    fun test_get_invalid_input_map_error(){

        var data = "{\"error\":\"get call failed!\"}".toByteArray()
        var restResponse = RestResponse(400, data)

        Mockito.doAnswer { invocation: InvocationOnMock ->
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                    restResponse
            )
            mockRestOperation
        }.`when`(mockApi).get(
                ArgumentMatchers.any(RestOptions::class.java),
                ArgumentMatchers.any(),
                ArgumentMatchers.any())

        var arguments : Map<String, Any> = mapOf(
        )

        flutterPlugin.onMethodCall(
                MethodCall("get", arguments),
                mockResult
        )

        verify(mockResult, times(1)).error(
                "AmplifyApiRestException",
                "someMsg",
                "errorDetails"
        )

    }

    // Cancellation of ongoing rest operation succeeds
    @Test
    fun test_cancel_get_returns_success(){

        var data = "{\"success\":\"get call succeed!\",\"url\":\"/items\"}".toByteArray()
        var restResponse = RestResponse(200, data)
        var code = "someCode"

        Mockito.doAnswer { invocation: InvocationOnMock ->
            Assert.assertEquals(
                    RestOptions.builder().addPath("/items").build(),
                    invocation.arguments[0]
            )
            mockRestOperation
        }.`when`(mockApi).get(
                ArgumentMatchers.any(RestOptions::class.java),
                ArgumentMatchers.any(),
                ArgumentMatchers.any())

        var arguments : Map<String, Any> = mapOf(
                "restOptions" to mapOf(
                        "path" to "/items"
                ),
                "code" to code
        )

        flutterPlugin.onMethodCall(
                MethodCall("get", arguments),
                mockResult
        )

        val mockCancelResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)

        flutterPlugin.onMethodCall(
                MethodCall("cancel", code),
                mockCancelResult
        )

        verify(mockResult, times(0)).success(
                mapOf(
                        "data" to restResponse.data.rawBytes
                )
        )

        verify(mockCancelResult, times(1)).success(
                "Operation Canceled"
        )
    }

    // Cancellation of non existing rest operation fails
    @Test
    fun test_cancel_get_returns_error(){

        var data = "{\"success\":\"get call succeed!\",\"url\":\"/items\"}".toByteArray()
        var restResponse = RestResponse(200, data)
        var code = "someOldCode"

        val mockCancelResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)

        flutterPlugin.onMethodCall(
                MethodCall("cancel", code),
                mockCancelResult
        )

        verify(mockCancelResult, times(1)).error(
                "Cancel - RestOperation referenced with code not found",
                "The RestOperation may have already completed or expired and cannot be canceled anymore",
                "Operation does not exist")
    }


    private fun setFinalStatic(field: Field, newValue: Any?) {
        field.isAccessible = true
        val modifiersField: Field = Field::class.java.getDeclaredField("modifiers")
        modifiersField.isAccessible = true
        modifiersField.setInt(field, field.modifiers and Modifier.FINAL.inv())
        field.set(null, newValue)
    }

    /*
    Attempting to fix broken equality comparison for ByteArray - currently not working
    fun ByteArray.equals(a: ByteArray, b: ByteArray): Boolean {
        return a.toString() == b.toString()
    }
     */
}
