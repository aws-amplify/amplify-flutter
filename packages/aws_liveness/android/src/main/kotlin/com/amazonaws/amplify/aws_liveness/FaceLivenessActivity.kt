// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.aws_liveness

import android.Manifest
import android.app.Activity
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.addCallback
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.core.content.ContextCompat
import com.amazonaws.amplify.aws_liveness.pigeons.LivenessStartRequest
import com.amplifyframework.ui.liveness.model.FaceLivenessDetectionException
import com.amplifyframework.ui.liveness.ui.FaceLivenessDetector

/** Hosts the Amplify UI `FaceLivenessDetector` composable for a single check. */
class FaceLivenessActivity : ComponentActivity() {

    internal class Session(
        val request: LivenessStartRequest,
        val credentialsProvider: DartCredentialsProvider
    )

    private var finished = false

    private val requestCameraPermission =
        registerForActivityResult(ActivityResultContracts.RequestPermission()) { granted ->
            if (granted) {
                showDetector()
            } else {
                finishWithError(
                    ErrorCodes.CAMERA_PERMISSION_DENIED,
                    FaceLivenessDetectionException.CameraPermissionDeniedException()
                )
            }
        }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // Sessions are single use, so a recreated Activity (e.g. after process
        // death) cannot resume the check.
        if (savedInstanceState != null || session == null) {
            finishWithError(
                ErrorCodes.SESSION_INTERRUPTED,
                FaceLivenessDetectionException.SessionInterruptedException()
            )
            return
        }
        onBackPressedDispatcher.addCallback(this) {
            finishWithError(ErrorCodes.USER_CANCELLED, FaceLivenessDetectionException.UserCancelledException())
        }
        val hasPermission = ContextCompat.checkSelfPermission(this, Manifest.permission.CAMERA) ==
            PackageManager.PERMISSION_GRANTED
        if (hasPermission) {
            showDetector()
        } else {
            requestCameraPermission.launch(Manifest.permission.CAMERA)
        }
    }

    private fun showDetector() {
        val session = session ?: return
        setContent {
            FaceLivenessDetector(
                sessionId = session.request.sessionId,
                region = session.request.region,
                credentialsProvider = session.credentialsProvider,
                disableStartView = session.request.disableStartView,
                onComplete = { runOnUiThread { finishWithSuccess() } },
                onError = { error -> runOnUiThread { finishWithError(errorCode(error, session), error) } }
            )
        }
    }

    private fun finishWithSuccess() {
        if (finished) return
        finished = true
        setResult(Activity.RESULT_OK)
        finish()
    }

    private fun finishWithError(code: String, error: FaceLivenessDetectionException) {
        if (finished) return
        finished = true
        setResult(
            Activity.RESULT_CANCELED,
            Intent()
                .putExtra(EXTRA_ERROR_CODE, code)
                .putExtra(EXTRA_ERROR_MESSAGE, error.message)
                .putExtra(EXTRA_ERROR_RECOVERY, error.recoverySuggestion)
        )
        finish()
    }

    private fun errorCode(error: FaceLivenessDetectionException, session: Session): String = when (error) {
        is FaceLivenessDetectionException.UserCancelledException -> ErrorCodes.USER_CANCELLED
        is FaceLivenessDetectionException.CameraPermissionDeniedException -> ErrorCodes.CAMERA_PERMISSION_DENIED
        is FaceLivenessDetectionException.SessionNotFoundException -> ErrorCodes.SESSION_NOT_FOUND
        is FaceLivenessDetectionException.SessionTimedOutException -> ErrorCodes.SESSION_TIMED_OUT
        is FaceLivenessDetectionException.SessionInterruptedException -> ErrorCodes.SESSION_INTERRUPTED
        is FaceLivenessDetectionException.UnsupportedChallengeTypeException -> ErrorCodes.UNSUPPORTED_CHALLENGE_TYPE
        is FaceLivenessDetectionException.VideoEncodingException,
        is FaceLivenessDetectionException.VideoMuxingException -> ErrorCodes.VIDEO_ENCODING
        // A failed credentials fetch surfaces as a generic SDK error.
        else -> when {
            session.credentialsProvider.lastError != null -> ErrorCodes.CREDENTIALS
            error is FaceLivenessDetectionException.AccessDeniedException -> ErrorCodes.ACCESS_DENIED
            // This subclass is internal to the SDK.
            error.javaClass.simpleName == "FaceInOvalMatchExceededTimeLimitException" ->
                ErrorCodes.FACE_IN_OVAL_MATCH_EXCEEDED_TIME_LIMIT
            else -> ErrorCodes.UNKNOWN
        }
    }

    internal companion object {
        const val EXTRA_ERROR_CODE = "errorCode"
        const val EXTRA_ERROR_MESSAGE = "errorMessage"
        const val EXTRA_ERROR_RECOVERY = "errorRecoverySuggestion"

        /** The check to run, set by [AwsLivenessPlugin] before launching this Activity. */
        @Volatile
        var session: Session? = null
    }
}
