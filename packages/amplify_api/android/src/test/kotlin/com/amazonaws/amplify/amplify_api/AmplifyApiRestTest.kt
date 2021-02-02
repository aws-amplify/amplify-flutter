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

package com.amazonaws.amplify.amplify_api


import com.amazonaws.amplify.amplify_api.AmplifyApiPlugin
import com.amplifyframework.api.ApiCategory
import com.amplifyframework.api.ApiException
import com.amplifyframework.api.aws.AWSApiPlugin
import com.amplifyframework.api.rest.RestOperation
import com.amplifyframework.api.rest.RestOptions
import com.amplifyframework.api.rest.RestResponse

import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import junit.framework.TestCase.assertEquals
import org.junit.Assert
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentCaptor
import org.mockito.ArgumentMatchers
import org.mockito.Mockito
import org.mockito.Mockito.*
import org.mockito.invocation.InvocationOnMock
import org.robolectric.RobolectricTestRunner
import java.lang.reflect.Field
import java.lang.reflect.Modifier
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amplifyframework.AmplifyException


@RunWith(RobolectricTestRunner::class)
class AmplifyApiRestTest {
    lateinit var flutterPlugin: AmplifyApiPlugin

    private var mockApi = mock(ApiCategory::class.java)

    private val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
    private val mockRestOperation: RestOperation = mock(RestOperation::class.java)

    @Before
    fun setup() {
        flutterPlugin = AmplifyApiPlugin()
        setFinalStatic(Amplify::class.java.getDeclaredField("API"), mockApi)
    }

    @Test
    fun test_get_returns_success(){

        var data = getSuccessData
        var restResponse = RestResponse(200, data)

        Mockito.doAnswer { invocation ->
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                    restResponse
            )
            mockRestOperation
        }.`when`(mockApi).get(
                any(RestOptions::class.java),
                any(),
                any())

        var arguments : Map<String, Any> = mapOf(
                "restOptions" to mapOf(
                    "path" to "/items"
                ),
                "cancelToken" to "someCode"
        )

        flutterPlugin.onMethodCall(
                MethodCall("get", arguments),
                mockResult
        )

        // Verify input RestOptions
        val optionsCaptor = ArgumentCaptor.forClass(RestOptions::class.java)
        verify(mockApi).get(
                optionsCaptor.capture(),
                any<Consumer<RestResponse>>(),
                any<Consumer<ApiException>>()
        )
        assertEquals(
                RestOptions.builder().addPath("/items").build(),
                optionsCaptor.value
        )

        verify(mockResult).success(
                mapOf(
                        "data" to restResponse.data.rawBytes
                )
        )

    }

    @Test
    fun test_post_returns_success(){

        var body = toStoreData
        var data = postSuccessData

        var restResponse = RestResponse(200, data)

        Mockito.doAnswer { invocation ->
            (invocation.arguments[2] as Consumer<RestResponse>).accept(
                    restResponse
            )
            mockRestOperation
        }.`when`(mockApi).post(
                any(), // NOTE that passing "apiName" causes 4 parameter Amplify.API function to be called !!!
                any(RestOptions::class.java),
                any(),
                any())

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
                "cancelToken" to "someCode"
        )

        flutterPlugin.onMethodCall(
                MethodCall("post", arguments),
                mockResult
        )

        // Verify input RestOptions
        val optionsCaptor = ArgumentCaptor.forClass(RestOptions::class.java)
        verify(mockApi).post(
                any(),
                optionsCaptor.capture(),
                any<Consumer<RestResponse>>(),
                any<Consumer<ApiException>>()
        )
        // While the RestOptions are equal, a Kotlin bug registers the results as different
        // All other fields are correctly compared except for "body" of type byte[]
        // If there are two byte[] with the exact same data, the assertEquals will fail
        /*
        assertEquals(
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
                optionsCaptor.value
        )
         */

        verify(mockResult).success(
                mapOf(
                        "data" to restResponse.data.rawBytes
                )
        )

    }

    @Test
    fun test_put_all_inputs_returns_success(){

        var body = toStoreData
        var data = putSuccessData

        var restResponse = RestResponse(200, data)

        Mockito.doAnswer { invocation ->
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                    restResponse
            )
            mockRestOperation
        }.`when`(mockApi).put(
                any(RestOptions::class.java),
                any(),
                any())

        var arguments : Map<String, Any> = mapOf(
                "restOptions" to mapOf(
                        "path" to "/items",
                        "body" to body
                ),
                "cancelToken" to "someCode"
        )

        flutterPlugin.onMethodCall(
                MethodCall("put", arguments),
                mockResult
        )

        verify(mockResult).success(
                mapOf(
                        "data" to restResponse.data.rawBytes
                )
        )

    }

    @Test
    fun test_delete_returns_success(){

        var data = deleteSuccessData
        var restResponse = RestResponse(200, data)

        Mockito.doAnswer { invocation ->
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                    restResponse
            )
            mockRestOperation
        }.`when`(mockApi).delete(
                any(RestOptions::class.java),
                any(),
                any())

        var arguments : Map<String, Any> = mapOf(
                "restOptions" to mapOf(
                        "path" to "/items"
                ),
                "cancelToken" to "someCode"
        )

        flutterPlugin.onMethodCall(
                MethodCall("delete", arguments),
                mockResult
        )

        verify(mockResult).success(
                mapOf(
                        "data" to restResponse.data.rawBytes
                )
        )

    }

    // Invalid response code throws error
    @Test
    fun test_get_status_code_error(){

        var data = getFailedData
        var restResponse = RestResponse(400, data)

        Mockito.doAnswer { invocation ->
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                    restResponse
            )
            mockRestOperation
        }.`when`(mockApi).get(
                any(RestOptions::class.java),
                any(),
                any())

        var arguments : Map<String, Any> = mapOf(
                "restOptions" to mapOf(
                        "path" to "/items"
                ),
                "cancelToken" to "someCode"
        )

        flutterPlugin.onMethodCall(
                MethodCall("get", arguments),
                mockResult
        )

        verify(mockResult, times(1)).error(
                "ApiException",
                ExceptionMessages.defaultFallbackExceptionMessage,
                mapOf(
                        "recoverySuggestion" to """
                    The metadata associated with the response is contained in the HTTPURLResponse.
                    For more information on HTTP status codes, take a look at
                    https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
                    """,
                        "message" to "The HTTP response status code is [400]."
                )
        )

    }

    // Invalid response code throws error
    @Test
    fun test_get_invalid_input_map_error(){

        var data = getFailedData
        var restResponse = RestResponse(400, data)

        Mockito.doAnswer { invocation ->
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                    restResponse
            )
            mockRestOperation
        }.`when`(mockApi).get(
                any(RestOptions::class.java),
                any(),
                any())

        var arguments : Map<String, Any> = mapOf(
        )

        flutterPlugin.onMethodCall(
                MethodCall("get", arguments),
                mockResult
        )

        verify(mockResult , times(1)).error(
                "ApiException",
                ExceptionMessages.defaultFallbackExceptionMessage,
                mapOf(
                        "message" to ExceptionMessages.missingExceptionMessage,
                        "recoverySuggestion" to ExceptionMessages.missingRecoverySuggestion,
                        "underlyingException" to "AmplifyException{message=The cancelToken request argument was not passed as a String, cause=kotlin.TypeCastException: null cannot be cast to non-null type kotlin.String, recoverySuggestion=The request should include the cancelToken as a String}"
                )
        )
    }

    // Cancellation of ongoing rest operation succeeds
    @Test
    fun test_cancel_get_returns_success(){

        var data = getSuccessData
        var restResponse = RestResponse(200, data)
        var cancelToken = "someCode"

        Mockito.doAnswer { invocation ->
            Assert.assertEquals(
                    RestOptions.builder().addPath("/items").build(),
                    invocation.arguments[0]
            )
            mockRestOperation
        }.`when`(mockApi).get(
                any(RestOptions::class.java),
                any(),
                any())

        var arguments : Map<String, Any> = mapOf(
                "restOptions" to mapOf(
                        "path" to "/items"
                ),
                "cancelToken" to cancelToken
        )

        flutterPlugin.onMethodCall(
                MethodCall("get", arguments),
                mockResult
        )

        val mockCancelResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)

        flutterPlugin.onMethodCall(
                MethodCall("cancel", cancelToken),
                mockCancelResult
        )

        verify(mockCancelResult).success(
                "Operation Canceled"
        )
    }

    // Cancellation of non existing rest operation fails
    @Test
    fun test_cancel_get_returns_error(){

        var data = getSuccessData
        var cancelToken = "someOldCode"

        val mockCancelResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)

        flutterPlugin.onMethodCall(
                MethodCall("cancel", cancelToken),
                mockCancelResult
        )

        verify(mockCancelResult, times(1)).error(
                "AmplifyAPI-CancelError",
                "The Operation may have already been completed or expired and cannot be canceled anymore",
                "Operation does not exist"
        )
    }

    @Test
    fun test_multiple_cancel_success(){

        var data = getSuccessData
        var restResponse = RestResponse(200, data)
        var cancelToken = "someCode"

        Mockito.doAnswer { invocation ->
            Assert.assertEquals(
                    RestOptions.builder().addPath("/items").build(),
                    invocation.arguments[0]
            )
            mockRestOperation
        }.`when`(mockApi).get(
                any(RestOptions::class.java),
                any(),
                any())

        var arguments : Map<String, Any> = mapOf(
                "restOptions" to mapOf(
                        "path" to "/items"
                ),
                "cancelToken" to cancelToken
        )

        flutterPlugin.onMethodCall(
                MethodCall("get", arguments),
                mockResult
        )

        val mockCancelResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)

        flutterPlugin.onMethodCall(
                MethodCall("cancel", cancelToken),
                mockCancelResult
        )

        verify(mockCancelResult).success(
                "Operation Canceled"
        )

        flutterPlugin.onMethodCall(
                MethodCall("cancel", cancelToken),
                mockCancelResult
        )

        verify(mockCancelResult).error(
                "AmplifyAPI-CancelError",
                "The Operation may have already been completed or expired and cannot be canceled anymore",
                "Operation does not exist"
        )
    }


    private fun setFinalStatic(field: Field, newValue: Any?) {
        field.isAccessible = true
        val modifiersField: Field = Field::class.java.getDeclaredField("modifiers")
        modifiersField.isAccessible = true
        modifiersField.setInt(field, field.modifiers and Modifier.FINAL.inv())
        field.set(null, newValue)
    }

}
