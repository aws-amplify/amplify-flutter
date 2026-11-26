// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.aws_face_liveness

import com.amplifyframework.ui.liveness.model.FaceLivenessDetectionException

/** Error codes reported to Dart. Must match the names of `FaceLivenessErrorCode`. */
internal object ErrorCodes {
    const val USER_CANCELLED = "userCancelled"
    const val CAMERA_PERMISSION_DENIED = "cameraPermissionDenied"
    const val SESSION_NOT_FOUND = "sessionNotFound"
    const val SESSION_TIMED_OUT = "sessionTimedOut"
    const val SESSION_INTERRUPTED = "sessionInterrupted"
    const val FACE_IN_OVAL_MATCH_EXCEEDED_TIME_LIMIT = "faceInOvalMatchExceededTimeLimit"
    const val ACCESS_DENIED = "accessDenied"
    const val UNSUPPORTED_CHALLENGE_TYPE = "unsupportedChallengeType"
    const val VIDEO_ENCODING = "videoEncoding"
    const val CREDENTIALS = "credentials"
    const val ALREADY_IN_PROGRESS = "alreadyInProgress"
    const val NO_FOREGROUND_UI = "noForegroundUi"
    const val UNKNOWN = "unknown"
}

/**
 * Maps a Face Liveness SDK error to one of [ErrorCodes].
 *
 * [credentialsFailed] is whether a credentials fetch failed during the check;
 * that surfaces as a generic SDK error, so it only overrides errors that are
 * not already specific.
 */
internal fun errorCode(error: FaceLivenessDetectionException, credentialsFailed: Boolean): String = when (error) {
    is FaceLivenessDetectionException.UserCancelledException -> ErrorCodes.USER_CANCELLED
    is FaceLivenessDetectionException.CameraPermissionDeniedException -> ErrorCodes.CAMERA_PERMISSION_DENIED
    is FaceLivenessDetectionException.SessionNotFoundException -> ErrorCodes.SESSION_NOT_FOUND
    is FaceLivenessDetectionException.SessionTimedOutException -> ErrorCodes.SESSION_TIMED_OUT
    is FaceLivenessDetectionException.SessionInterruptedException -> ErrorCodes.SESSION_INTERRUPTED
    is FaceLivenessDetectionException.UnsupportedChallengeTypeException -> ErrorCodes.UNSUPPORTED_CHALLENGE_TYPE
    is FaceLivenessDetectionException.VideoEncodingException,
    is FaceLivenessDetectionException.VideoMuxingException -> ErrorCodes.VIDEO_ENCODING
    else -> when {
        credentialsFailed -> ErrorCodes.CREDENTIALS
        error is FaceLivenessDetectionException.AccessDeniedException -> ErrorCodes.ACCESS_DENIED
        // This subclass is internal to the SDK; a unit test fails if it is renamed.
        error.javaClass.simpleName == FACE_IN_OVAL_MATCH_EXCEEDED_TIME_LIMIT_CLASS ->
            ErrorCodes.FACE_IN_OVAL_MATCH_EXCEEDED_TIME_LIMIT
        else -> ErrorCodes.UNKNOWN
    }
}

internal const val FACE_IN_OVAL_MATCH_EXCEEDED_TIME_LIMIT_CLASS = "FaceInOvalMatchExceededTimeLimitException"
