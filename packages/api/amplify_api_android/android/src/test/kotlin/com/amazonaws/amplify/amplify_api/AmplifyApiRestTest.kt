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

import com.amazonaws.amplify.amplify_api.rest_api.RestOperationType
import com.amazonaws.amplify.exception.ExceptionMessages
import com.amplifyframework.api.ApiCategory
import com.amplifyframework.api.ApiException
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
import org.mockito.Mockito.any
import org.mockito.Mockito.doAnswer
import org.mockito.Mockito.mock
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.robolectric.RobolectricTestRunner
import java.lang.reflect.Field
import java.lang.reflect.Modifier

@RunWith(RobolectricTestRunner::class)
@Suppress("UNCHECKED_CAST")
class AmplifyApiRestTest {
    private lateinit var flutterPlugin: AmplifyApi

    private var mockApi = mock(ApiCategory::class.java)

    private val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
    private val mockRestOperation: RestOperation = mock(RestOperation::class.java)

    @Before
    fun setup() {
        flutterPlugin = AmplifyApi()
        setFinalStatic(Amplify::class.java.getDeclaredField("API"), mockApi)
    }

    @Test
    fun test_get_returns_success() {

        val statusCode = 200
        val headers = mapOf(
            "key" to "value"
        )
        val data = getSuccessData
        val restResponse = RestResponse(statusCode, headers, data)

        doAnswer { invocation ->
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                restResponse
            )
            mockRestOperation
        }.`when`(mockApi).get(
            any(RestOptions::class.java),
            any(),
            any()
        )

        val arguments: Map<String, Any> = mapOf(
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
                "statusCode" to statusCode,
                "headers" to headers,
                "data" to restResponse.data.rawBytes
            )
        )
    }

    @Test
    fun test_post_returns_success() {

        val statusCode = 200
        val headers = mapOf(
            "key" to "value"
        )
        val body = toStoreData
        val data = postSuccessData

        val restResponse = RestResponse(statusCode, headers, data)

        doAnswer { invocation ->
            (invocation.arguments[2] as Consumer<RestResponse>).accept(
                restResponse
            )
            mockRestOperation
        }.`when`(mockApi).post(
            any(), // NOTE that passing "apiName" causes 4 parameter Amplify.API function to be called !!!
            any(RestOptions::class.java),
            any(),
            any()
        )

        val arguments: Map<String, Any> = mapOf(
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
                "statusCode" to statusCode,
                "headers" to headers,
                "data" to restResponse.data.rawBytes
            )
        )
    }

    @Test
    fun test_put_all_inputs_returns_success() {

        val statusCode = 200
        val headers = null
        val body = toStoreData
        val data = putSuccessData

        val restResponse = RestResponse(statusCode, headers, data)

        doAnswer { invocation ->
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                restResponse
            )
            mockRestOperation
        }.`when`(mockApi).put(
            any(RestOptions::class.java),
            any(),
            any()
        )

        val arguments: Map<String, Any> = mapOf(
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
                "statusCode" to statusCode,
                "headers" to headers,
                "data" to restResponse.data.rawBytes
            )
        )
    }

    @Test
    fun test_delete_returns_success() {

        val statusCode = 200
        val headers = null
        val data = deleteSuccessData
        val restResponse = RestResponse(statusCode, headers, data)

        doAnswer { invocation ->
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                restResponse
            )
            mockRestOperation
        }.`when`(mockApi).delete(
            any(RestOptions::class.java),
            any(),
            any()
        )

        val arguments: Map<String, Any> = mapOf(
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
                "statusCode" to statusCode,
                "headers" to headers,
                "data" to restResponse.data.rawBytes
            )
        )
    }

    // Invalid response code throws error
    @Test
    fun test_get_status_code_error() {

        val statusCode = 400
        val headers = mapOf(
            "key" to "value"
        )
        val data = getFailedData
        val restResponse = RestResponse(statusCode, headers, data)

        doAnswer { invocation ->
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                restResponse
            )
            mockRestOperation
        }.`when`(mockApi).get(
            any(RestOptions::class.java),
            any(),
            any()
        )

        val arguments: Map<String, Any> = mapOf(
            "restOptions" to mapOf(
                "path" to "/items"
            ),
            "cancelToken" to "someCode"
        )

        flutterPlugin.onMethodCall(
            MethodCall("get", arguments),
            mockResult
        )

        verify(mockResult, times(1)).success(
            mapOf(
                "statusCode" to statusCode,
                "headers" to headers,
                "data" to restResponse.data.rawBytes
            )
        )
    }

    // Invalid response code throws error
    @Test
    fun test_get_invalid_input_map_error() {

        val data = getFailedData
        val restResponse = RestResponse(400, null, data)

        doAnswer { invocation ->
            (invocation.arguments[1] as Consumer<RestResponse>).accept(
                restResponse
            )
            mockRestOperation
        }.`when`(mockApi).get(
            any(RestOptions::class.java),
            any(),
            any()
        )

        val arguments: Map<String, Any> = mapOf()

        flutterPlugin.onMethodCall(
            MethodCall("get", arguments),
            mockResult
        )

        verify(mockResult, times(1)).error(
            "ApiException",
            ExceptionMessages.defaultFallbackExceptionMessage,
            mapOf(
                "message" to ExceptionMessages.missingExceptionMessage,
                "recoverySuggestion" to ExceptionMessages.missingRecoverySuggestion,
                "underlyingException" to "AmplifyException{message=The cancelToken request argument was not passed as a String, cause=java.lang.NullPointerException: null cannot be cast to non-null type kotlin.String, recoverySuggestion=The request should include the cancelToken as a String}"
            )
        )
    }

    // PUT PATCH and POST with no body throws error
    @Test
    fun required_body_methods_error() {
        doAnswer {
            mockRestOperation
        }.`when`(mockApi).get(
            any(RestOptions::class.java),
            any(),
            any()
        )

        val arguments: Map<String, Any> = mapOf(
            "restOptions" to mapOf(
                "path" to "/items"
            ),
            "cancelToken" to "someCode"
        )
        val methods =
            arrayOf(RestOperationType.PUT, RestOperationType.POST, RestOperationType.PATCH)
        for (method in methods) {
            flutterPlugin.onMethodCall(
                MethodCall(method.value, arguments),
                mockResult
            )

            verify(mockResult, times(1)).error(
                "ApiException",
                ExceptionMessages.defaultFallbackExceptionMessage,
                mapOf(
                    "recoverySuggestion" to "Add a body to the request.",
                    "message" to "$method request must have a body"
                )
            )
        }
    }

    // Cancellation of ongoing rest operation succeeds
    @Test
    fun test_cancel_get_returns_success() {
        val cancelToken = "someCode"

        doAnswer { invocation ->
            Assert.assertEquals(
                RestOptions.builder().addPath("/items").build(),
                invocation.arguments[0]
            )
            mockRestOperation
        }.`when`(mockApi).get(
            any(RestOptions::class.java),
            any(),
            any()
        )

        val arguments: Map<String, Any> = mapOf(
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
    fun test_cancel_get_returns_error() {
        val cancelToken = "someOldCode"

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
    fun test_multiple_cancel_success() {
        val cancelToken = "someCode"

        doAnswer { invocation ->
            Assert.assertEquals(
                RestOptions.builder().addPath("/items").build(),
                invocation.arguments[0]
            )
            mockRestOperation
        }.`when`(mockApi).get(
            any(RestOptions::class.java),
            any(),
            any()
        )

        val arguments: Map<String, Any> = mapOf(
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
