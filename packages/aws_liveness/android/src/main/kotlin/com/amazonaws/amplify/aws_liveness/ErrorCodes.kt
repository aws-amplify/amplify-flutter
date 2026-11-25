// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.aws_liveness

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
