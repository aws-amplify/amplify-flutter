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
import com.amplifyframework.api.ApiCategory
import com.amplifyframework.api.aws.AWSApiPlugin
import com.amplifyframework.api.aws.ApiAuthProviders
import com.amplifyframework.api.aws.ApiGraphQLRequestOptions
import com.amplifyframework.api.aws.AppSyncGraphQLRequest
import com.amplifyframework.api.aws.AuthModeStrategyType
import com.amplifyframework.api.aws.AuthorizationType
import com.amplifyframework.api.aws.sigv4.FunctionAuthProvider
import com.amplifyframework.api.aws.sigv4.OidcAuthProvider
import com.amplifyframework.api.graphql.OperationType
import com.amplifyframework.core.AmplifyConfiguration
import com.amplifyframework.core.category.CategoryType
import com.amplifyframework.core.model.Model
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.Job
import kotlinx.coroutines.runBlocking
import org.json.JSONObject
import org.junit.After
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.kotlin.clearInvocations
import org.mockito.kotlin.mock
import org.mockito.kotlin.times
import org.mockito.kotlin.verify

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
    private val mockOidcAuthProvider: OidcAuthProvider = mock()

    /**
     * Mock Lambda provider.
     */
    private val mockFunctionAuthProvider: FunctionAuthProvider = mock()

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

    /**
     * Currently supported auth types.
     */
    private val supportedAuthTypes =
        listOf(AuthorizationType.OPENID_CONNECT, AuthorizationType.AWS_LAMBDA)

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

    /**
     * Retrieves the mock provider for [authType].
     */
    private fun providerFor(authType: AuthorizationType) = when (authType) {
        AuthorizationType.OPENID_CONNECT -> mockOidcAuthProvider
        AuthorizationType.AWS_LAMBDA -> mockFunctionAuthProvider
        else -> throw Exception("Unsupported type")
    }

    @Test
    fun testAuthProvidersInvokedCorrectlyByPlugin() = runBlocking {
        for (enabled in supportedAuthTypes) {
            runQuery(enabled)
            val provider = providerFor(enabled)
            verify(provider, times(1)).latestAuthToken

            val disabledTypes = supportedAuthTypes.filter { it != enabled }
            for (disabled in disabledTypes) {
                verify(providerFor(disabled), times(0)).latestAuthToken
            }

            clearInvocations(provider)
        }
    }
}
