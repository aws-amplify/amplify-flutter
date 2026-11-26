// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.aws_face_liveness

import android.app.Activity
import android.content.Intent
import com.amazonaws.amplify.aws_face_liveness.pigeons.AwsFaceLivenessFlutterApi
import com.amazonaws.amplify.aws_face_liveness.pigeons.AwsFaceLivenessHostApi
import com.amazonaws.amplify.aws_face_liveness.pigeons.FlutterError
import com.amazonaws.amplify.aws_face_liveness.pigeons.LivenessStartRequest
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.PluginRegistry

class AwsFaceLivenessPlugin :
    FlutterPlugin,
    ActivityAware,
    AwsFaceLivenessHostApi,
    PluginRegistry.ActivityResultListener {

    private var flutterApi: AwsFaceLivenessFlutterApi? = null
    private var activityBinding: ActivityPluginBinding? = null
    private var pendingResult: ((Result<Unit>) -> Unit)? = null

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        AwsFaceLivenessHostApi.setUp(binding.binaryMessenger, this)
        flutterApi = AwsFaceLivenessFlutterApi(binding.binaryMessenger)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        AwsFaceLivenessHostApi.setUp(binding.binaryMessenger, null)
        flutterApi = null
        pendingResult = null
        FaceLivenessActivity.session = null
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activityBinding = binding
        binding.addActivityResultListener(this)
    }

    override fun onDetachedFromActivityForConfigChanges() = onDetachedFromActivity()

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) =
        onAttachedToActivity(binding)

    override fun onDetachedFromActivity() {
        activityBinding?.removeActivityResultListener(this)
        activityBinding = null
    }

    override fun start(request: LivenessStartRequest, callback: (Result<Unit>) -> Unit) {
        val activity = activityBinding?.activity
        val api = flutterApi
        if (activity == null || api == null) {
            callback(failure(ErrorCodes.NO_FOREGROUND_UI, "No foreground Activity is available."))
            return
        }
        if (pendingResult != null) {
            callback(failure(ErrorCodes.ALREADY_IN_PROGRESS, "A Face Liveness check is already in progress."))
            return
        }
        pendingResult = callback
        FaceLivenessActivity.session = FaceLivenessActivity.Session(
            request = request,
            credentialsProvider = DartCredentialsProvider(api)
        )
        activity.startActivityForResult(Intent(activity, FaceLivenessActivity::class.java), REQUEST_CODE)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
        if (requestCode != REQUEST_CODE) return false
        val callback = pendingResult ?: return true
        pendingResult = null
        FaceLivenessActivity.session = null

        if (resultCode == Activity.RESULT_OK) {
            callback(Result.success(Unit))
        } else {
            callback(
                Result.failure(
                    FlutterError(
                        code = data?.getStringExtra(FaceLivenessActivity.EXTRA_ERROR_CODE)
                            ?: ErrorCodes.USER_CANCELLED,
                        message = data?.getStringExtra(FaceLivenessActivity.EXTRA_ERROR_MESSAGE)
                            ?: "The Face Liveness check was cancelled.",
                        details = data?.getStringExtra(FaceLivenessActivity.EXTRA_ERROR_RECOVERY)
                    )
                )
            )
        }
        return true
    }

    private fun failure(code: String, message: String) = Result.failure<Unit>(FlutterError(code, message))

    private companion object {
        // Arbitrary, but unique enough not to collide with host app request codes.
        const val REQUEST_CODE = 0x4C56
    }
}
