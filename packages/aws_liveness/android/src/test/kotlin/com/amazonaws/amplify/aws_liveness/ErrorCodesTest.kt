// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.aws_liveness

import com.amplifyframework.ui.liveness.model.FaceLivenessDetectionException
import org.junit.Assert.assertEquals
import org.junit.Test

class ErrorCodesTest {
    private fun code(error: FaceLivenessDetectionException, credentialsFailed: Boolean = false) =
        errorCode(error, credentialsFailed)

    @Test
    fun `maps every public SDK exception`() {
        val cases = mapOf(
            FaceLivenessDetectionException.UserCancelledException() to ErrorCodes.USER_CANCELLED,
            FaceLivenessDetectionException.CameraPermissionDeniedException() to
                ErrorCodes.CAMERA_PERMISSION_DENIED,
            FaceLivenessDetectionException.SessionNotFoundException() to ErrorCodes.SESSION_NOT_FOUND,
            FaceLivenessDetectionException.SessionTimedOutException() to ErrorCodes.SESSION_TIMED_OUT,
            FaceLivenessDetectionException.SessionInterruptedException() to ErrorCodes.SESSION_INTERRUPTED,
            FaceLivenessDetectionException.UnsupportedChallengeTypeException() to
                ErrorCodes.UNSUPPORTED_CHALLENGE_TYPE,
            FaceLivenessDetectionException.VideoEncodingException() to ErrorCodes.VIDEO_ENCODING,
            FaceLivenessDetectionException.VideoMuxingException() to ErrorCodes.VIDEO_ENCODING,
            FaceLivenessDetectionException.AccessDeniedException() to ErrorCodes.ACCESS_DENIED,
            FaceLivenessDetectionException("Other") to ErrorCodes.UNKNOWN
        )
        for ((error, expected) in cases) {
            assertEquals(error.javaClass.simpleName, expected, code(error))
        }
    }

    @Test
    fun `maps the SDK-internal face in oval time limit exception`() {
        // Fails if the SDK renames the internal class the mapping matches by name.
        val error = Class.forName(
            "com.amplifyframework.ui.liveness.model." +
                "FaceLivenessDetectionException\$$FACE_IN_OVAL_MATCH_EXCEEDED_TIME_LIMIT_CLASS"
        ).getDeclaredConstructor().newInstance() as FaceLivenessDetectionException

        assertEquals(ErrorCodes.FACE_IN_OVAL_MATCH_EXCEEDED_TIME_LIMIT, code(error))
    }

    @Test
    fun `a failed credentials fetch overrides only generic errors`() {
        assertEquals(
            ErrorCodes.CREDENTIALS,
            code(FaceLivenessDetectionException.AccessDeniedException(), credentialsFailed = true)
        )
        assertEquals(
            ErrorCodes.CREDENTIALS,
            code(FaceLivenessDetectionException("Other"), credentialsFailed = true)
        )
        assertEquals(
            ErrorCodes.USER_CANCELLED,
            code(FaceLivenessDetectionException.UserCancelledException(), credentialsFailed = true)
        )
    }
}
