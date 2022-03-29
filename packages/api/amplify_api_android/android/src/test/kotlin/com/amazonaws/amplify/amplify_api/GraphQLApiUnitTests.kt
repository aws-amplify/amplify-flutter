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

import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil
import com.amplifyframework.AmplifyException
import com.amplifyframework.api.ApiCategory
import com.amplifyframework.api.ApiException
import com.amplifyframework.api.aws.GsonVariablesSerializer
import com.amplifyframework.api.graphql.GraphQLOperation
import com.amplifyframework.api.graphql.GraphQLRequest
import com.amplifyframework.api.graphql.GraphQLResponse
import com.amplifyframework.api.graphql.SimpleGraphQLRequest
import com.amplifyframework.core.Action
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.TestCoroutineDispatcher
import kotlinx.coroutines.test.runBlockingTest
import org.junit.Assert
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatcher
import org.mockito.Mockito.any
import org.mockito.Mockito.doAnswer
import org.mockito.Mockito.eq
import org.mockito.Mockito.mock
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.mockito.kotlin.argThat
import org.robolectric.RobolectricTestRunner
import java.lang.reflect.Field
import java.lang.reflect.Modifier

const val underlyingMalformedException =
    "AmplifyException{message=The graphQL document request argument " +
            "was not passed as a String, cause=java.lang.NullPointerException: null cannot be cast to " +
            "non-null type kotlin.String, recoverySuggestion=The request should include the graphQL document as a String}"

const val underlyingInvalidApiException =
    "AmplifyException{message=The apiName request argument " +
            "was not passed as a String"

@RunWith(RobolectricTestRunner::class)
@ExperimentalCoroutinesApi
@Suppress("UNCHECKED_CAST")
class GraphQLApiUnitTests {
    private lateinit var flutterPlugin: AmplifyApi
    private var mockApi = mock(ApiCategory::class.java)
    private val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
    private val mockGraphQLOperation = mock(GraphQLOperation::class.java)
    private val mockStreamHandler: GraphQLSubscriptionStreamHandler =
        mock(GraphQLSubscriptionStreamHandler::class.java)

    @Before
    fun setup() {
        flutterPlugin = AmplifyApi(mockStreamHandler, testDispatcher)
        setFinalStatic(Amplify::class.java.getDeclaredField("API"), mockApi)
    }

    private val testDispatcher = TestCoroutineDispatcher()

    @Test
    fun test_query_returns_success() = runBlockingTest {
        val testRequest = HashMap<String, Any>()
        testRequest["document"] = """query MyQuery {
            listBlogs {
                items {
                id
                name
                createdAt
                }
            }
        }"""
        testRequest["variables"] = HashMap<String, Any>()
        testRequest["cancelToken"] = "someCode"

        val graphQLResponse: GraphQLResponse<String> = GraphQLResponse("result", null)

        doAnswer { invocation ->
            Assert.assertEquals(
                SimpleGraphQLRequest<String>(
                    testRequest["document"] as String,
                    testRequest["variables"] as Map<String, Any>,
                    String::class.java,
                    GsonVariablesSerializer()
                ),
                invocation.arguments[0]
            )
            (invocation.arguments[1] as Consumer<GraphQLResponse<String>>).accept(
                graphQLResponse
            )
            mockGraphQLOperation
        }.`when`(mockApi).query(
            any<GraphQLRequest<String>>(),
            any(),
            any()
        )

        flutterPlugin.onMethodCall(
            MethodCall("query", testRequest),
            mockResult
        )

        verify(mockResult).success(
            mapOf(
                "data" to "result",
                "errors" to listOf<String>()
            )
        )
    }

    @Test
    fun test_query_malformed_request_error() = runBlockingTest {
        val testRequest = HashMap<String, Any>()

        flutterPlugin.onMethodCall(
            MethodCall("query", testRequest),
            mockResult
        )

        verify(mockResult).error(
            "ApiException",
            ExceptionMessages.defaultFallbackExceptionMessage,
            mapOf(
                "message" to ExceptionMessages.missingExceptionMessage,
                "recoverySuggestion" to ExceptionMessages.missingRecoverySuggestion,
                "underlyingException" to underlyingMalformedException
            )
        )
    }

    @Test
    fun test_query_api_error() = runBlockingTest {
        val apiException =
            ApiException("AmplifyException", ApiException.REPORT_BUG_TO_AWS_SUGGESTION)

        val testRequest = HashMap<String, Any>()
        testRequest["document"] = """query MyQuery {
            listBlogs {
                items {
                id
                name
                createdAt
                }
            }
        }"""
        testRequest["variables"] = HashMap<String, Any>()
        testRequest["cancelToken"] = "someCode"

        doAnswer { invocation ->
            Assert.assertEquals(
                SimpleGraphQLRequest<String>(
                    testRequest["document"] as String,
                    testRequest["variables"] as Map<String, Any>,
                    String::class.java,
                    GsonVariablesSerializer()
                ),
                invocation.arguments[0]
            )
            (invocation.arguments[2] as Consumer<ApiException>).accept(
                apiException
            )
            mockGraphQLOperation
        }.`when`(mockApi).query(
            any<GraphQLRequest<String>>(),
            any(),
            any()
        )

        flutterPlugin.onMethodCall(
            MethodCall("query", testRequest),
            mockResult
        )

        verify(mockResult).error(
            "ApiException",
            ExceptionMessages.defaultFallbackExceptionMessage,
            mapOf(
                "message" to "AmplifyException",
                "recoverySuggestion" to AmplifyException.REPORT_BUG_TO_AWS_SUGGESTION
            )
        )
    }

    @Test
    fun test_query_with_valid_api_name() = runBlockingTest {
        val testRequest = HashMap<String, Any>()
        testRequest["apiName"] = "publicApi"
        testRequest["document"] = """query MyQuery {
            listBlogs {
                items {
                id
                name
                createdAt
                }
            }
        }"""
        testRequest["variables"] = HashMap<String, Any>()
        testRequest["cancelToken"] = "someCode"

        val graphQLResponse: GraphQLResponse<String> = GraphQLResponse("result", null)

        doAnswer { invocation ->
            Assert.assertEquals(testRequest["apiName"] as String, invocation.arguments[0])
            Assert.assertEquals(
                SimpleGraphQLRequest<String>(
                    testRequest["document"] as String,
                    testRequest["variables"] as Map<String, Any>,
                    String::class.java,
                    GsonVariablesSerializer()
                ),
                invocation.arguments[1]
            )
            (invocation.arguments[2] as Consumer<GraphQLResponse<String>>).accept(
                graphQLResponse
            )
            mockGraphQLOperation
        }.`when`(mockApi).query(
            any(),
            any<GraphQLRequest<String>>(),
            any(),
            any()
        )

        flutterPlugin.onMethodCall(
            MethodCall("query", testRequest),
            mockResult
        )

        verify(mockResult).success(
            mapOf(
                "data" to "result",
                "errors" to listOf<String>()
            )
        )
    }

    @Test
    fun test_mutate_returns_success() = runBlockingTest {
        val testRequest = HashMap<String, Any>()

        testRequest["document"] = "mutation MyMutation(\$name: String!) {" +
                "createBlog(input: {name: \$name}) {" +
                "id" +
                "name" +
                "createdAt" +
                "}" +
                "}"

        testRequest["variables"] = mapOf(
            "name" to "Test App Blog"
        )
        testRequest["cancelToken"] = "someCode"

        val graphQLResponse: GraphQLResponse<String> = GraphQLResponse("mutate result", null)

        doAnswer { invocation ->
            Assert.assertEquals(
                SimpleGraphQLRequest<String>(
                    testRequest["document"] as String,
                    testRequest["variables"] as Map<String, Any>,
                    String::class.java,
                    GsonVariablesSerializer()
                ),
                invocation.arguments[0]
            )
            (invocation.arguments[1] as Consumer<GraphQLResponse<String>>).accept(
                graphQLResponse
            )
            mockGraphQLOperation
        }.`when`(mockApi).mutate(
            any<GraphQLRequest<String>>(),
            any<Consumer<GraphQLResponse<String>>>(),
            any()
        )

        flutterPlugin.onMethodCall(
            MethodCall("mutate", testRequest),
            mockResult
        )

        verify(mockResult).success(
            mapOf(
                "data" to "mutate result",
                "errors" to listOf<String>()
            )
        )
    }

    @Test
    fun test_mutate_malformed_request_error() = runBlockingTest {
        val testRequest = HashMap<String, Any>()

        flutterPlugin.onMethodCall(
            MethodCall("mutate", testRequest),
            mockResult
        )

        verify(mockResult).error(
            "ApiException",
            ExceptionMessages.defaultFallbackExceptionMessage,
            mapOf(
                "message" to ExceptionMessages.missingExceptionMessage,
                "recoverySuggestion" to ExceptionMessages.missingRecoverySuggestion,
                "underlyingException" to underlyingMalformedException
            )
        )
    }

    @Test
    fun test_mutate_api_error() = runBlockingTest {
        val apiException =
            ApiException("AmplifyException", ApiException.REPORT_BUG_TO_AWS_SUGGESTION)
        val testRequest = HashMap<String, Any>()

        testRequest["document"] = "mutation MyMutation(\$name: String!) {" +
                "createBlog(input: {name: \$name}) {" +
                "id" +
                "name" +
                "createdAt" +
                "}" +
                "}"

        testRequest["variables"] = mapOf(
            "name" to "Test App Blog"
        )
        testRequest["cancelToken"] = "someCode"

        doAnswer { invocation ->
            Assert.assertEquals(
                SimpleGraphQLRequest<String>(
                    testRequest["document"] as String,
                    testRequest["variables"] as Map<String, Any>,
                    String::class.java,
                    GsonVariablesSerializer()
                ),
                invocation.arguments[0]
            )
            (invocation.arguments[2] as Consumer<ApiException>).accept(
                apiException
            )
            mockGraphQLOperation
        }.`when`(mockApi).mutate(
            any<GraphQLRequest<String>>(),
            any(),
            any()
        )

        flutterPlugin.onMethodCall(
            MethodCall("mutate", testRequest),
            mockResult
        )

        verify(mockResult).error(
            "ApiException",
            ExceptionMessages.defaultFallbackExceptionMessage,
            mapOf(
                "message" to "AmplifyException",
                "recoverySuggestion" to AmplifyException.REPORT_BUG_TO_AWS_SUGGESTION
            )
        )
    }

    @Test
    fun test_mutate_with_valid_api_name() = runBlockingTest {
        val testRequest = HashMap<String, Any>()
        testRequest["apiName"] = "publicApi"
        testRequest["document"] = "mutation MyMutation(\$name: String!) {" +
                "createBlog(input: {name: \$name}) {" +
                "id" +
                "name" +
                "createdAt" +
                "}" +
                "}"
        testRequest["variables"] = mapOf(
            "name" to "Test App Blog"
        )
        testRequest["cancelToken"] = "someCode"

        val graphQLResponse: GraphQLResponse<String> = GraphQLResponse("mutate result", null)

        doAnswer { invocation ->
            Assert.assertEquals(testRequest["apiName"] as String, invocation.arguments[0])
            Assert.assertEquals(
                SimpleGraphQLRequest<String>(
                    testRequest["document"] as String,
                    testRequest["variables"] as Map<String, Any>,
                    String::class.java,
                    GsonVariablesSerializer()
                ),
                invocation.arguments[1]
            )
            (invocation.arguments[2] as Consumer<GraphQLResponse<String>>).accept(
                graphQLResponse
            )
            mockGraphQLOperation
        }.`when`(mockApi).mutate(
            any(),
            any<GraphQLRequest<String>>(),
            any<Consumer<GraphQLResponse<String>>>(),
            any()
        )

        flutterPlugin.onMethodCall(
            MethodCall("mutate", testRequest),
            mockResult
        )

        verify(mockResult).success(
            mapOf(
                "data" to "mutate result",
                "errors" to listOf<String>()
            )
        )
    }

    @Test
    fun test_subscription_establishes_successfully() = runBlockingTest {
        val testRequest = HashMap<String, Any>()
        val id = "someCode"

        testRequest["document"] = "subscription MySubscription {" +
                "onCreateBlog {" +
                "id" +
                "name" +
                "createdAt" +
                "}" +
                "}"

        testRequest["variables"] = mapOf(
            "name" to "Test App Blog"
        )
        testRequest["cancelToken"] = id

        doAnswer { invocation ->
            Assert.assertEquals(
                SimpleGraphQLRequest<String>(
                    testRequest["document"] as String,
                    testRequest["variables"] as Map<String, Any>,
                    String::class.java,
                    GsonVariablesSerializer()
                ),
                invocation.arguments[0]
            )
            (invocation.arguments[1] as Consumer<String>).accept(
                id
            )
            mockGraphQLOperation
        }.`when`(mockApi).subscribe(
            any<GraphQLRequest<String>>(),
            any<Consumer<String>>(),
            any<Consumer<GraphQLResponse<String>>>(),
            any<Consumer<ApiException>>(),
            any()
        )

        flutterPlugin.onMethodCall(
            MethodCall("subscribe", testRequest),
            mockResult
        )

        verify(mockResult).success(null)
    }

    @Test
    fun test_subscribe_success_event() = runBlockingTest {
        val testRequest = HashMap<String, Any>()
        val id = "someCode"

        testRequest["document"] = "subscription MySubscription {" +
                "onCreateBlog {" +
                "id" +
                "name" +
                "createdAt" +
                "}" +
                "}"

        testRequest["variables"] = mapOf(
            "name" to "Test App Blog"
        )
        testRequest["cancelToken"] = id

        val graphQLResponse: GraphQLResponse<String> = GraphQLResponse("result data", null)

        doAnswer { invocation ->
            Assert.assertEquals(
                SimpleGraphQLRequest<String>(
                    testRequest["document"] as String,
                    testRequest["variables"] as Map<String, Any>,
                    String::class.java,
                    GsonVariablesSerializer()
                ),
                invocation.arguments[0]
            )
            (invocation.arguments[2] as Consumer<GraphQLResponse<String>>).accept(
                graphQLResponse
            )
            mockGraphQLOperation
        }.`when`(mockApi).subscribe(
            any<GraphQLRequest<String>>(),
            any<Consumer<String>>(),
            any<Consumer<GraphQLResponse<String>>>(),
            any<Consumer<ApiException>>(),
            any()
        )

        flutterPlugin.onMethodCall(
            MethodCall("subscribe", testRequest),
            mockResult
        )

        val payload: Map<String, Any> = mapOf(
            "data" to graphQLResponse.data,
            "errors" to graphQLResponse.errors
        )

        verify(mockStreamHandler, times(1))
            .sendEvent(
                payload,
                id,
                GraphQLSubscriptionEventTypes.DATA
            )
    }

    @Test
    fun test_subscribe_error_event() = runBlockingTest {
        val apiException =
            ApiException("AmplifyException", ApiException.REPORT_BUG_TO_AWS_SUGGESTION)
        val testRequest = HashMap<String, Any>()
        val id = "someCode"

        testRequest["document"] = "subscription MySubscription {" +
                "onCreateBlog {" +
                "id" +
                "name" +
                "createdAt" +
                "}" +
                "}"

        testRequest["variables"] = mapOf(
            "name" to "Test App Blog"
        )
        testRequest["cancelToken"] = id

        doAnswer { invocation ->
            Assert.assertEquals(
                SimpleGraphQLRequest<String>(
                    testRequest["document"] as String,
                    testRequest["variables"] as Map<String, Any>,
                    String::class.java,
                    GsonVariablesSerializer()
                ),
                invocation.arguments[0]
            )
            (invocation.arguments[1] as Consumer<String>).accept(
                id
            )
            (invocation.arguments[3] as Consumer<ApiException>).accept(
                apiException
            )
            mockGraphQLOperation
        }.`when`(mockApi).subscribe(
            any<GraphQLRequest<String>>(),
            any<Consumer<String>>(),
            any<Consumer<GraphQLResponse<String>>>(),
            any<Consumer<ApiException>>(),
            any()
        )

        flutterPlugin.onMethodCall(
            MethodCall("subscribe", testRequest),
            mockResult
        )

        verify(mockResult).success(null)
        verify(mockStreamHandler, times(1))
            .sendError(
                "ApiException",
                id,
                ExceptionUtil.createSerializedError(apiException)
            )
    }

    @Test
    fun test_subscribe_malformed_request_error() = runBlockingTest {
        val testRequest = HashMap<String, Any>()

        flutterPlugin.onMethodCall(
            MethodCall("subscribe", testRequest),
            mockResult
        )

        verify(mockResult).error(
            "ApiException",
            ExceptionMessages.defaultFallbackExceptionMessage,
            mapOf(
                "message" to ExceptionMessages.missingExceptionMessage,
                "recoverySuggestion" to ExceptionMessages.missingRecoverySuggestion,
                "underlyingException" to underlyingMalformedException
            )
        )
    }

    @Test
    fun test_subscribe_api_error() = runBlockingTest {
        val apiException =
            ApiException("AmplifyException", ApiException.REPORT_BUG_TO_AWS_SUGGESTION)
        val testRequest = HashMap<String, Any>()

        testRequest["document"] = "subscription MySubscription {" +
                "onCreateBlog {" +
                "id" +
                "name" +
                "createdAt" +
                "}" +
                "}"

        testRequest["variables"] = mapOf(
            "name" to "Test App Blog"
        )
        testRequest["cancelToken"] = "someCode"

        doAnswer { invocation ->
            Assert.assertEquals(
                SimpleGraphQLRequest<String>(
                    testRequest["document"] as String,
                    testRequest["variables"] as Map<String, Any>,
                    String::class.java,
                    GsonVariablesSerializer()
                ),
                invocation.arguments[0]
            )
            (invocation.arguments[3] as Consumer<ApiException>).accept(
                apiException
            )
            mockGraphQLOperation
        }.`when`(mockApi).subscribe(
            any<GraphQLRequest<String>>(),
            any<Consumer<String>>(),
            any(),
            any(),
            any()
        )

        flutterPlugin.onMethodCall(
            MethodCall("subscribe", testRequest),
            mockResult
        )

        verify(mockResult).error(
            "ApiException",
            ExceptionMessages.defaultFallbackExceptionMessage,
            mapOf(
                "message" to "AmplifyException",
                "recoverySuggestion" to AmplifyException.REPORT_BUG_TO_AWS_SUGGESTION
            )
        )
    }

    @Test
    fun test_subscription_with_valid_api_name() = runBlockingTest {
        val testRequest = HashMap<String, Any>()
        val id = "someCode"
        testRequest["apiName"] = "publicApi"
        testRequest["document"] = "subscription MySubscription {" +
                "onCreateBlog {" +
                "id" +
                "name" +
                "createdAt" +
                "}" +
                "}"

        testRequest["variables"] = mapOf(
            "name" to "Test App Blog"
        )
        testRequest["cancelToken"] = id

        doAnswer { invocation ->
            Assert.assertEquals(testRequest["apiName"] as String, invocation.arguments[0])
            Assert.assertEquals(
                SimpleGraphQLRequest<String>(
                    testRequest["document"] as String,
                    testRequest["variables"] as Map<String, Any>,
                    String::class.java,
                    GsonVariablesSerializer()
                ),
                invocation.arguments[1]
            )
            (invocation.arguments[2] as Consumer<String>).accept(
                id
            )
            mockGraphQLOperation
        }.`when`(mockApi).subscribe(
            any(),
            any<GraphQLRequest<String>>(),
            any<Consumer<String>>(),
            any<Consumer<GraphQLResponse<String>>>(),
            any<Consumer<ApiException>>(),
            any()
        )

        flutterPlugin.onMethodCall(
            MethodCall("subscribe", testRequest),
            mockResult
        )

        verify(mockResult).success(null)
    }

    @Test
    fun test_operation_with_invalid_api_name() = runBlockingTest {
        val testRequest = HashMap<String, Any>()
        testRequest["apiName"] = 5
        testRequest["document"] = """query MyQuery {
            listBlogs {
                items {
                id
                name
                createdAt
                }
            }
        }"""
        testRequest["variables"] = HashMap<String, Any>()
        testRequest["cancelToken"] = "someCode"

        flutterPlugin.onMethodCall(
            MethodCall("query", testRequest),
            mockResult
        )

        verify(mockResult).error(
            eq("ApiException"),
            eq(ExceptionMessages.defaultFallbackExceptionMessage),
            argThat(
                InvalidApiMapErrorArgumentMatcher()
            )
        )
    }

    class InvalidApiMapErrorArgumentMatcher : ArgumentMatcher<Map<String, String>> {
        override fun matches(argument: Map<String, String>): Boolean {
            return argument["message"] == ExceptionMessages.missingExceptionMessage &&
                    argument["recoverySuggestion"] == ExceptionMessages.missingRecoverySuggestion &&
                    argument["underlyingException"]!!.contains(underlyingInvalidApiException)
        }
    }

    fun test_grapqhql_request_document_sanitization() = runBlockingTest {
        // test no-op
        val validRequest = HashMap<String, Any>()
        val validDocument = """query MyQuery {
            listBlogs {
                items {
                    id
                    name
                    createdAt
                }
            }
        }"""
        validRequest["document"] = validDocument
        val validResult = FlutterApiRequest.getGraphQLDocument(validRequest)
        Assert.assertEquals(
            validResult,
            validDocument
        )

        // test remove tab
        val tabbedRequest = HashMap<String, Any>()
        // tab before name and id
        val tabbedDocument = """query MyQuery {
            listBlogs {
                items {
                	id
                	name
                }
            }
        }"""
        val tabRemovedDocument = """query MyQuery {
            listBlogs {
                items {
                id
                name
                }
            }
        }"""
        tabbedRequest["document"] = tabbedDocument
        val tabRemovedResult = FlutterApiRequest.getGraphQLDocument(tabbedRequest)
        Assert.assertEquals(
            tabRemovedResult,
            tabRemovedDocument
        )

        // tab in hardcoded string is no-op
        val tabQuoteRequest = HashMap<String, Any>()
        val tabQuoteDocument = """"mutation MyMutation {
            createBlog(input: {name: "tabbed 	name"}) {
                id
                name
            }
        }""""
        tabQuoteRequest["document"] = tabQuoteDocument
        val tabQuoteResult = FlutterApiRequest.getGraphQLDocument(tabQuoteRequest)
        Assert.assertEquals(
            tabQuoteResult,
            tabQuoteDocument
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
