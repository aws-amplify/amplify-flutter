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

package com.amazonaws.amplify.exception

import com.amplifyframework.AmplifyException
import com.amplifyframework.api.graphql.GraphQLResponse
import com.amplifyframework.datastore.DataStoreException
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ExceptionUtilTest {

    lateinit var util: ExceptionUtil

    @Before
    fun setup() {
        util = ExceptionUtil()
    }

    @Test
    fun serialize_AmplifyException_with_cause() {
        // Setup data
        val exceptionWithCause =
            AmplifyException(
                "test message",
                NumberFormatException("test exception"),
                "test recovery"
            )

        // Make the call
        val actualMap = ExceptionUtil.createSerializedError(exceptionWithCause)

        // Verify the results
        assertEquals(
            mapOf(
                "message" to "test message",
                "recoverySuggestion" to "test recovery",
                "underlyingException" to "java.lang.NumberFormatException: test exception"
            ),
            actualMap
        )
    }

    @Test
    fun serialize_AmplifyException_without_cause() {
        // Setup data
        val exceptionWithCause =
            AmplifyException("test message", "test recovery")

        // Make the call
        val actualMap = ExceptionUtil.createSerializedError(exceptionWithCause)

        // Verify the results
        assertEquals(
            mapOf(
                "message" to "test message",
                "recoverySuggestion" to "test recovery"
            ),
            actualMap
        )
    }

    // 1 level of subclassing from AmplifyException
    @Test
    fun serialize_DataStoreException() {
        // Setup data
        val exceptionWithCause =
            DataStoreException(
                "test message",
                NumberFormatException("test exception"),
                "test recovery"
            )

        // Make the call
        val actualMap = ExceptionUtil.createSerializedError(exceptionWithCause)

        // Verify the results
        assertEquals(
            mapOf(
                "message" to "test message",
                "recoverySuggestion" to "test recovery",
                "underlyingException" to "java.lang.NumberFormatException: test exception"
            ),
            actualMap
        )
    }

    // Some level of recursive exception (AmplifyException cause)
    @Test
    fun serialize_DataStoreException_with_AmplifyException_as_cause() {
        // Setup data
        val exceptionWithCause =
            DataStoreException(
                "test message",
                AmplifyException("nested test exception", "nested test recovery"),
                "test recovery"
            )

        // Make the call
        val actualMap = ExceptionUtil.createSerializedError(exceptionWithCause)

        // Verify the results
        assertEquals(
            mapOf(
                "message" to "test message",
                "recoverySuggestion" to "test recovery",
                "underlyingException" to "AmplifyException{message=nested test exception, cause=null, recoverySuggestion=nested test recovery}"
            ),
            actualMap
        )
    }

    // 2 levels of subclassing + extra fields
    @Test
    fun serialize_GraphQLResponseExceptionException_with_extra_fields() {
        // Setup data
        val graphqlException =
            DataStoreException.GraphQLResponseException(
                "test message",
                listOf(GraphQLResponse.Error("test graphql error", null, null, null))
            )

        // Make the call
        val actualMap = ExceptionUtil.createSerializedError(graphqlException)

        // Verify the results
        assertEquals(
            mapOf(
                "message" to "test message",
                "recoverySuggestion" to "See attached list of GraphQLResponse.Error objects.",
                "errors" to listOf<Map<String, Any>>(mapOf("message" to "test graphql error"))

            ),
            actualMap
        )
    }
}
