package com.solvian.aws_liveness

import android.app.Activity
import android.content.Intent
import androidx.activity.ComponentActivity
import androidx.activity.result.contract.ActivityResultContracts
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class AwsLivenessPlugin : FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware, EventChannel.StreamHandler {

    private lateinit var methodChannel: MethodChannel
    private lateinit var eventChannel: EventChannel
    private var activity: Activity? = null
    private var activityBinding: ActivityPluginBinding? = null
    private var pendingResult: MethodChannel.Result? = null
    private var eventSink: EventChannel.EventSink? = null
    private var launcher: androidx.activity.result.ActivityResultLauncher<Intent>? = null
    private val REQUEST_CODE_LIVENESS = 1001

    private fun handleActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
        if (requestCode != REQUEST_CODE_LIVENESS) {
            return false
        }
        
        val res = pendingResult ?: return true
        pendingResult = null

        // Handle case where data is null
        if (data == null) {
            android.util.Log.w("AwsLivenessPlugin", "⚠️ Activity result received with null data, resultCode=$resultCode")
            // If resultCode is CANCELED and no data, treat as user cancellation
            if (resultCode == Activity.RESULT_CANCELED) {
                val cancelMap = mapOf("status" to "cancelled")
                res.success(cancelMap)
                eventSink?.success(mapOf("type" to "cancelled", "data" to cancelMap))
            } else {
                val errorMap = mapOf(
                    "code" to "NO_RESULT_FROM_ACTIVITY",
                    "message" to "Activity returned no result data"
                )
                res.error("NO_RESULT_FROM_ACTIVITY", "Activity returned no result data", errorMap)
                eventSink?.success(mapOf("type" to "error", "data" to errorMap))
            }
            return true
        }

        // Read result type from intent
        val resultType = data.getStringExtra(FaceLivenessActivity.RESULT_TYPE)
        
        android.util.Log.d("AwsLivenessPlugin", "📥 Activity result received: resultCode=$resultCode, resultType=$resultType")

        when (resultType) {
            FaceLivenessActivity.RESULT_SUCCESS -> {
                val sessionId = data.getStringExtra("sessionId") ?: ""
                val isLive = data.getBooleanExtra("isLive", false)
                val resultMap = mapOf(
                    "status" to "success",
                    "sessionId" to sessionId,
                    "isLive" to isLive
                )
                android.util.Log.d("AwsLivenessPlugin", "✅ Success result: sessionId=$sessionId, isLive=$isLive")
                res.success(resultMap)
                eventSink?.success(mapOf("type" to "complete", "data" to resultMap))
            }
            
            FaceLivenessActivity.RESULT_ERROR -> {
                // Use new structured error keys (ERROR_CODE, ERROR_MESSAGE)
                // Fallback to old keys for backward compatibility
                val errorCode = data.getStringExtra(FaceLivenessActivity.ERROR_CODE) 
                    ?: data.getStringExtra("code") 
                    ?: "UNKNOWN_ERROR"
                val errorMessage = data.getStringExtra(FaceLivenessActivity.ERROR_MESSAGE) 
                    ?: data.getStringExtra("message") 
                    ?: "An error occurred"
                val destroyReason = data.getStringExtra("destroyReason")
                
                android.util.Log.e("AwsLivenessPlugin", "❌ Error result: errorCode=$errorCode, errorMessage=$errorMessage")
                if (destroyReason != null) {
                    android.util.Log.e("AwsLivenessPlugin", "   Destroy reason: $destroyReason")
                }
                
                // If it's a user cancellation, treat it as cancelled, not an error
                if (errorCode == "USER_CANCELLED") {
                    val cancelMap = mapOf("status" to "cancelled")
                    res.success(cancelMap)
                    eventSink?.success(mapOf("type" to "cancelled", "data" to cancelMap))
                } else {
                    val errorMap = mutableMapOf<String, Any>(
                        "code" to errorCode,
                        "message" to errorMessage
                    )
                    // Include destroy reason if present (for debugging)
                    destroyReason?.let {
                        errorMap["destroyReason"] = it
                    }
                    res.error(errorCode, errorMessage, errorMap)
                    eventSink?.success(mapOf("type" to "error", "data" to errorMap))
                }
            }
            
            FaceLivenessActivity.RESULT_CANCELLED -> {
                android.util.Log.d("AwsLivenessPlugin", "🚫 Cancelled result")
                val cancelMap = mapOf("status" to "cancelled")
                res.success(cancelMap)
                eventSink?.success(mapOf("type" to "cancelled", "data" to cancelMap))
            }
            
            null -> {
                // No result type in data - this shouldn't happen with proper state management
                android.util.Log.w("AwsLivenessPlugin", "⚠️ Activity result with null resultType")
                val errorMap = mapOf(
                    "code" to "NO_RESULT_TYPE",
                    "message" to "Activity returned result without result type"
                )
                res.error("NO_RESULT_TYPE", "Activity returned result without result type", errorMap)
                eventSink?.success(mapOf("type" to "error", "data" to errorMap))
            }
            
            else -> {
                android.util.Log.w("AwsLivenessPlugin", "⚠️ Unknown result type: $resultType")
                val errorMap = mapOf(
                    "code" to "UNKNOWN_RESULT_TYPE",
                    "message" to "Unknown result type: $resultType"
                )
                res.error("UNKNOWN_RESULT_TYPE", "Unknown result type: $resultType", errorMap)
                eventSink?.success(mapOf("type" to "error", "data" to errorMap))
            }
        }
        
        return true
    }

    private fun getOrCreateLauncher(): androidx.activity.result.ActivityResultLauncher<Intent>? {
        // Launcher should already be registered in onAttachedToActivity
        // This method just returns it
        return launcher
    }
    
    private fun registerLauncherIfNeeded() {
        val currentActivity = activity as? ComponentActivity ?: return
        
        if (launcher == null) {
            launcher = currentActivity.registerForActivityResult(
                ActivityResultContracts.StartActivityForResult()
            ) { result ->
                handleActivityResult(REQUEST_CODE_LIVENESS, result.resultCode, result.data)
            }
        }
    }

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        methodChannel = MethodChannel(binding.binaryMessenger, "aws_liveness/methods")
        methodChannel.setMethodCallHandler(this)
        
        eventChannel = EventChannel(binding.binaryMessenger, "aws_liveness/events")
        eventChannel.setStreamHandler(this)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        methodChannel.setMethodCallHandler(null)
        eventChannel.setStreamHandler(null)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "start" -> {
                val sessionId = call.argument<String>("sessionId")
                val region = call.argument<String>("region")

                if (sessionId.isNullOrEmpty() || region.isNullOrEmpty()) {
                    result.error(
                        "INVALID_ARGUMENTS",
                        "sessionId and region are required",
                        null
                    )
                    return
                }

                // Try to get activity from binding if not already set
                if (activity == null) {
                    activity = activityBinding?.activity
                }
                
                if (activity == null) {
                    result.error(
                        "NO_ACTIVITY", 
                        "Activity not attached. Make sure the plugin is called after the app is fully initialized.", 
                        null
                    )
                    return
                }

                pendingResult = result
                
                val intent = Intent(activity, FaceLivenessActivity::class.java).apply {
                    putExtra(FaceLivenessActivity.EXTRA_SESSION_ID, sessionId)
                    putExtra(FaceLivenessActivity.EXTRA_REGION, region)
                }

                eventSink?.success(mapOf("type" to "started", "data" to mapOf(
                    "sessionId" to sessionId,
                    "region" to region
                )))

                // Try to use ComponentActivity launcher first, fallback to startActivityForResult
                val componentActivity = activity as? ComponentActivity
                if (componentActivity != null) {
                    val activityLauncher = getOrCreateLauncher()
                    if (activityLauncher != null) {
                        activityLauncher.launch(intent)
                    } else {
                        result.error("LAUNCHER_ERROR", "Failed to create activity launcher", null)
                        pendingResult = null
                    }
                } else {
                    // Fallback to old API for non-ComponentActivity
                    activityBinding?.addActivityResultListener { requestCode, resultCode, data ->
                        handleActivityResult(requestCode, resultCode, data)
                    }
                    activity?.startActivityForResult(intent, REQUEST_CODE_LIVENESS)
                }
            }
            else -> {
                result.notImplemented()
            }
        }
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activityBinding = binding
        activity = binding.activity
        
        // Register launcher early, before activity is RESUMED
        registerLauncherIfNeeded()
        
        // Add activity result listener for fallback
        binding.addActivityResultListener { requestCode, resultCode, data ->
            handleActivityResult(requestCode, resultCode, data)
        }
    }

    override fun onDetachedFromActivity() {
        activityBinding = null
        activity = null
        launcher = null
    }

    override fun onDetachedFromActivityForConfigChanges() {
        activityBinding = null
        activity = null
        launcher = null
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activityBinding = binding
        activity = binding.activity
        
        // Register launcher early, before activity is RESUMED
        registerLauncherIfNeeded()
        
        // Re-add activity result listener
        binding.addActivityResultListener { requestCode, resultCode, data ->
            handleActivityResult(requestCode, resultCode, data)
        }
    }

    // EventChannel.StreamHandler implementation
    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        eventSink = events
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
    }
}
