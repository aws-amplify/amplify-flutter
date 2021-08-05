/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.amazonaws.amplify.amplify_api.auth.FlutterAuthProvider
import com.amazonaws.amplify.amplify_api.auth.FlutterAuthProviders
import com.amplifyframework.api.ApiCategory
import com.amplifyframework.api.aws.*
import com.amplifyframework.api.aws.sigv4.FunctionAuthProvider
import com.amplifyframework.api.aws.sigv4.OidcAuthProvider
import com.amplifyframework.api.graphql.OperationType
import com.amplifyframework.core.AmplifyConfiguration
import com.amplifyframework.core.category.CategoryType
import com.amplifyframework.core.model.Model
import kotlinx.coroutines.*
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.test.runBlockingTest
import org.json.JSONObject
import org.junit.After
import org.junit.Assert
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mockito.*
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicIntegerArray

/**
 * Mock model object for building dummy GraphQL requests.
 */
class MockModel : Model {
    override fun getId(): String = "12345"
}

/**
 * Tests the functionality of [FlutterAuthProvider] and its interactions with [AWSApiPlugin].
 */
@ExperimentalCoroutinesApi
@RunWith(AndroidJUnit4::class)
class AuthProviderTests {
    /**
     * Using categories allows us to create a new one per-test and configure as appropriate.
     */
    private lateinit var apiCategory: ApiCategory

    /**
     * API plugin for functional testing.
     */
    private lateinit var plugin: AWSApiPlugin

    /**
     * Test application context.
     */
    private val context: Context = ApplicationProvider.getApplicationContext()

    /**
     * Mock OIDC provider.
     */
    private val mockOidcAuthProvider: OidcAuthProvider = mock(OidcAuthProvider::class.java)

    /**
     * Mock Lambda provider.
     */
    private val mockFunctionAuthProvider: FunctionAuthProvider =
        mock(FunctionAuthProvider::class.java)

    /**
     * Multi-auth configuration JSON for API category.
     */
    private val configJson = JSONObject(
        """
        {
            "UserAgent": "aws-amplify-cli/2.0",
            "Version": "1.0",
            "api": {
                "plugins": {
                    "awsAPIPlugin": {
                        "mockAPI_AWS_LAMBDA": {
                            "endpointType": "GraphQL",
                            "endpoint": "https://url",
                            "region": "us-west-2",
                            "authorizationType": "AWS_LAMBDA"
                        },
                        "mockAPI_OPENID_CONNECT": {
                            "endpointType": "GraphQL",
                            "endpoint": "https://url",
                            "region": "us-west-2",
                            "authorizationType": "OPENID_CONNECT"
                        }
                    }
                }
            }
        }
        """.trimIndent()
    )

    /**
     * Multi-auth configuration for API category.
     */
    private val apiConfiguration by lazy {
        AmplifyConfiguration.fromJson(configJson).forCategoryType(CategoryType.API)
    }

    /**
     * Makes a dummy GraphQL request which will include headers for [type].
     */
    private fun makeRequest(type: AuthorizationType) =
        AppSyncGraphQLRequest
            .builder()
            .responseType(String::class.java)
            .requestAuthorizationStrategyType(AuthModeStrategyType.MULTIAUTH)
            .authorizationType(type)
            .modelClass(MockModel::class.java)
            .operation { OperationType.QUERY }
            .requestOptions(ApiGraphQLRequestOptions())
            .build<String>()

    /**
     * Runs a query for [type].
     *
     * Will not complete successfully. Used to test interaction with auth providers.
     */
    private suspend fun runQuery(type: AuthorizationType) {
        val job = Job()
        apiCategory.query(
            "mockAPI_${type.name}",
            makeRequest(type),
            { job.complete() },
            { job.complete() }
        )
        job.join()
    }

    @Before
    fun setUp() {
        // Fixes KeyStore exception in tests
        System.setProperty("javax.net.ssl.trustStoreType", "JKS")

        apiCategory = ApiCategory()
        plugin = AWSApiPlugin.builder().apiAuthProviders(
            ApiAuthProviders
                .builder()
                .functionAuthProvider(mockFunctionAuthProvider)
                .oidcAuthProvider(mockOidcAuthProvider)
                .build()
        ).build()
        apiCategory.addPlugin(plugin)
        apiCategory.configure(apiConfiguration, context)
    }

    @After
    fun tearDown() {
        clearInvocations(mockFunctionAuthProvider)
        clearInvocations(mockOidcAuthProvider)
    }

    @Test
    fun testOIDCAuthProvidersInvokedByPlugin() = runBlockingTest {
        runQuery(AuthorizationType.OPENID_CONNECT)
        verify(mockOidcAuthProvider, times(1)).latestAuthToken
        verify(mockFunctionAuthProvider, times(0)).latestAuthToken
    }

    @Test
    fun testFunctionAuthProvidersInvokedByPlugin() = runBlockingTest {
        runQuery(AuthorizationType.AWS_LAMBDA)
        verify(mockOidcAuthProvider, times(0)).latestAuthToken
        verify(mockFunctionAuthProvider, times(1)).latestAuthToken
    }

    @Test
    @ObsoleteCoroutinesApi
    fun testConcurrentAuthProviderRequestsCompleteInOrder() = runBlockingTest {
        val jobs = mutableListOf<Job>()
        val authProviders = FlutterAuthProviders(coroutineContext)
        val hasToken = AtomicBoolean(false)
        val expectedToken = "oidc"
        for (i in 0..1000) {
            val job = launch(Dispatchers.IO) {
                if (i % 2 == 0) {
                    authProviders.setToken(AuthorizationType.OPENID_CONNECT, expectedToken)
                    hasToken.set(true)
                } else {
                    authProviders.setToken(AuthorizationType.OPENID_CONNECT, null)
                    hasToken.set(false)
                }
            }
            jobs.add(job)
        }
        jobs.forEach {
            it.join()
        }
        val token = authProviders.getToken(AuthorizationType.OPENID_CONNECT)
        Assert.assertEquals(if (hasToken.get()) expectedToken else null, token)
    }
}