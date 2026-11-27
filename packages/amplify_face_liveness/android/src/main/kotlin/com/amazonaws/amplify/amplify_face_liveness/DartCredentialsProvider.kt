// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_face_liveness

import android.os.Handler
import android.os.Looper
import com.amazonaws.amplify.amplify_face_liveness.pigeons.AmplifyFaceLivenessFlutterApi
import com.amplifyframework.auth.AWSCredentials
import com.amplifyframework.auth.AWSCredentialsProvider
import com.amplifyframework.auth.AuthException
import com.amplifyframework.core.Consumer

/** Resolves credentials by calling the `AWSCredentialsProvider` passed to `AmplifyFaceLiveness` in Dart. */
internal class DartCredentialsProvider(private val flutterApi: AmplifyFaceLivenessFlutterApi) :
    AWSCredentialsProvider<AWSCredentials> {

    private val mainHandler = Handler(Looper.getMainLooper())

    /** Set once a fetch fails, so the resulting liveness error can be reported as a credentials error. */
    @Volatile
    var lastError: Throwable? = null
        private set

    override fun fetchAWSCredentials(onSuccess: Consumer<AWSCredentials>, onError: Consumer<AuthException>) {
        // Platform channel messages must be sent from the main thread.
        mainHandler.post {
            flutterApi.fetchCredentials { result ->
                val credentials = result.getOrNull()?.let {
                    AWSCredentials.createAWSCredentials(
                        it.accessKeyId,
                        it.secretAccessKey,
                        it.sessionToken,
                        it.expirationEpochSeconds
                    )
                }
                if (credentials != null) {
                    onSuccess.accept(credentials)
                } else {
                    val cause = result.exceptionOrNull()
                    val error = AuthException(
                        "Failed to fetch AWS credentials from the Dart credentials provider.",
                        "Check the credentialsProvider passed to AmplifyFaceLiveness.",
                        cause
                    )
                    lastError = error
                    onError.accept(error)
                }
            }
        }
    }
}
