/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

package com.amazonaws.amplify.amplify_auth_cognito

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager.MATCH_ALL
import android.content.pm.PackageManager.MATCH_DEFAULT_ONLY
import android.net.Uri
import androidx.browser.customtabs.CustomTabsIntent
import androidx.browser.customtabs.CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION
import com.amplifyframework.core.Amplify
import io.flutter.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.PluginRegistry
import kotlinx.coroutines.CoroutineName
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.plus

open class AuthCognito :
    FlutterPlugin,
    ActivityAware,
    PluginRegistry.NewIntentListener,
    PluginRegistry.ActivityResultListener,
    NativeAuthPluginBindings.NativeAuthBridge {
    private companion object {
        const val TAG = "AmplifyHostedUiPlugin"

        /**
         * A code to identify the result of the custom tabs request.
         */
        const val CUSTOM_TAB_REQUEST_CODE = 8888

        /**
         * The scope in which to spawn tasks which should not be awaited from the main thread.
         */
        val scope = CoroutineScope(Dispatchers.IO) + CoroutineName("amplify_flutter.AuthCognito")
    }

    /**
     * The user's main activity, used to launch custom tabs.
     */
    private var mainActivity: Activity? = null

    /**
     * The plugin binding for [mainActivity], used to manage lifecycle callback registration.
     */
    private var activityBinding: ActivityPluginBinding? = null

    /**
     * The application context.
     */
    private var applicationContext: Context? = null

    /**
     * The pending sign in result.
     */
    private var signInResult: NativeAuthPluginBindings.Result<MutableMap<String, String>>? = null

    /**
     * The pending sign out result.
     */
    private var signOutResult: NativeAuthPluginBindings.Result<Void>? = null

    /**
     * The plugin used to communicate with Dart.
     */
    private var nativePlugin: NativeAuthPluginBindings.NativeAuthPlugin? = null

    /**
     * The initial route parameters used to launch the main activity, which can happen when using
     * non-Chrome browsers or when a Hosted UI redirect occurs while the app is closed. They are
     * sent to the platform during configuration.
     */
    private var initialParameters: Map<String, String>? = null

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        applicationContext = binding.applicationContext
        nativePlugin = NativeAuthPluginBindings.NativeAuthPlugin(binding.binaryMessenger)
        NativeAuthPluginBindings.NativeAuthBridge.setup(
            binding.binaryMessenger,
            this,
        )
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        applicationContext = null
        cancelCurrentOperation()
        nativePlugin = null
        NativeAuthPluginBindings.NativeAuthBridge.setup(
            binding.binaryMessenger,
            null,
        )
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        mainActivity = binding.activity
        activityBinding = binding
        // Treat the launching intent the same as an intent created while the application was
        // running to capture a sign in callback which launched the app.
        onNewIntent(binding.activity.intent)
        binding.addOnNewIntentListener(this)
        binding.addActivityResultListener(this)
    }

    override fun onDetachedFromActivityForConfigChanges() {
        activityBinding?.removeActivityResultListener(this)
        activityBinding?.removeOnNewIntentListener(this)
        activityBinding = null
        mainActivity = null
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        mainActivity = binding.activity
        activityBinding = binding
        binding.addOnNewIntentListener(this)
        binding.addActivityResultListener(this)
    }

    override fun onDetachedFromActivity() {
        activityBinding?.removeActivityResultListener(this)
        activityBinding?.removeOnNewIntentListener(this)
        activityBinding = null
        mainActivity = null
    }

    override fun addPlugin(result: NativeAuthPluginBindings.Result<Void>) {
        if (initialParameters != null) {
            nativePlugin!!.exchange(initialParameters!!) {}
            initialParameters = null
        }
        try {
            Amplify.addPlugin(NativeAuthPlugin { nativePlugin })
            result.success(null)
        } catch (e: Exception) {
            result.error(e)
        }
    }

    override fun getValidationData(): MutableMap<String, String> {
        // Currently, the Android libraries do not provide any data by default.
        return mutableMapOf()
    }

    override fun getBundleId(): String {
        return applicationContext!!.packageName
    }

    /**
     * Handles the result of a sign in redirect.
     */
    private fun handleSignInResult(queryParameters: MutableMap<String, String>): Boolean {
        signInResult?.success(queryParameters)
        signInResult = null
        return true
    }

    /**
     * Handles the result of a sign out redirect.
     */
    private fun handleSignOutResult(): Boolean {
        signOutResult?.success(null)
        signOutResult = null
        return true
    }

    /**
     * The application ID of the installed package which can handle custom tabs,
     * typically a browser like Chrome.
     */
    private val browserPackageName: String? by lazy {
        val packageManager = mainActivity!!.packageManager
        // The VIEW intent handler.
        val activityIntent = Intent().apply {
            action = Intent.ACTION_VIEW
            addCategory(Intent.CATEGORY_BROWSABLE)
            data = Uri.fromParts("https", "", null)
        }
        val defaultViewHandlerInfo = packageManager.resolveActivity(
            activityIntent,
            MATCH_DEFAULT_ONLY
        )
        var defaultViewHandlerPackageName: String? = null
        if (defaultViewHandlerInfo != null) {
            defaultViewHandlerPackageName = defaultViewHandlerInfo.activityInfo.packageName
        }

        // Get all apps that can handle VIEW intents.
        val resolvedActivityList = packageManager.queryIntentActivities(activityIntent, MATCH_ALL)
        val packagesSupportingCustomTabs = mutableListOf<String>()
        for (info in resolvedActivityList) {
            val serviceIntent = Intent()
            serviceIntent.action = ACTION_CUSTOM_TABS_CONNECTION
            serviceIntent.`package` = info.activityInfo.packageName
            // Check if the package also resolves the Custom Tabs service.
            if (packageManager.resolveService(serviceIntent, 0) != null) {
                packagesSupportingCustomTabs.add(info.activityInfo.packageName)
            }
        }

        if (packagesSupportingCustomTabs.isEmpty()) {
            null
        } else if (defaultViewHandlerPackageName != null && packagesSupportingCustomTabs.contains(
                defaultViewHandlerPackageName
            )
        ) {
            defaultViewHandlerPackageName
        } else {
            packagesSupportingCustomTabs[0]
        }
    }

    /**
     * Launches [url] in a Custom Tab.
     */
    open fun launchUrl(url: String, browserPackageName: String?) {
        if (mainActivity == null) {
            throw HostedUiException.UNKNOWN("No activity found")
        }
        val intent = CustomTabsIntent.Builder().apply {
            setShareState(CustomTabsIntent.SHARE_STATE_OFF)
        }.build()
        val useBrowserPackage = browserPackageName
            ?: this.browserPackageName
            ?: throw HostedUiException.NOBROWSER()
        intent.intent.`package` = useBrowserPackage
        intent.intent.putExtra(
            Intent.EXTRA_REFERRER,
            Uri.parse("android-app://${mainActivity!!.packageName}")
        )
        intent.intent.data = Uri.parse(url)
        // Should be launched from the main activity and not the application context so that
        // FLAG_ACTIVITY_NEW_TASK does not have to be used which would always launch the tab
        // in a separate process instead of an embedded tab.
        mainActivity!!.startActivityForResult(intent.intent, CUSTOM_TAB_REQUEST_CODE)
    }

    /**
     * Launch the sign in URL.
     *
     * Note: [preferPrivateSession] currently has no effect on Android since it is not supported in
     * custom tabs.
     */
    override fun signInWithUrl(
        url: String,
        callbackUrlScheme: String,
        preferPrivateSession: Boolean,
        browserPackageName: String?,
        unsafeResult: NativeAuthPluginBindings.Result<MutableMap<String, String>>
    ) {
        val result = AtomicResult(unsafeResult, "signIn")
        try {
            launchUrl(url, browserPackageName)
            signInResult = result
        } catch (e: Throwable) {
            result.error(HostedUiException.fromThrowable(e))
        }
    }

    /**
     * Launch the sign out URL.
     */
    override fun signOutWithUrl(
        url: String,
        callbackUrlScheme: String,
        preferPrivateSession: Boolean,
        browserPackageName: String?,
        unsafeResult: NativeAuthPluginBindings.Result<Void>
    ) {
        val result = AtomicResult(unsafeResult, "signOut")
        try {
            launchUrl(url, browserPackageName)
            signOutResult = result
        } catch (e: Throwable) {
            result.error(HostedUiException.fromThrowable(e))
        }
    }

    /**
     * The custom tab will launch the main activity with action `VIEW` and category `BROWSABLE`
     * on the final redirect to the user's custom URI.
     */
    override fun onNewIntent(intent: Intent): Boolean {
        Log.d(TAG, "onNewIntent: $intent")
        if (intent.action == Intent.ACTION_VIEW && intent.hasCategory(Intent.CATEGORY_BROWSABLE)) {
            val uri = intent.data
            if (uri == null) {
                Log.e(TAG, "No data associated with intent")
                return false
            }
            val queryParameters = uri.queryParameters
            return if (signInResult != null && signOutResult != null) {
                Log.e(TAG, "Inconsistent state. Pending sign in and sign out.")
                false
            } else if (signInResult != null) {
                handleSignInResult(queryParameters)
            } else if (signOutResult != null) {
                handleSignOutResult()
            } else {
                if (queryParameters.isNotEmpty()) {
                    initialParameters = queryParameters
                }
                true
            }
        }
        return false
    }

    /**
     * Called when the custom tab activity completes, either by cancellation or success.
     *
     * There is no way to distinguish whether it is a success or cancellation, but since this is
     * called just before or after [onNewIntent], we wait a second for both to be called.
     * Afterwards, we are guaranteed that if [signInResult]/[signOutResult] is not `null`, then it
     * is a cancellation since otherwise, [handleSignInResult] would have set it to `null`.
     */
    override fun onActivityResult(requestCode: Int, resultCode: Int, intent: Intent?): Boolean {
        Log.d(TAG, "onActivityResult: $requestCode, $resultCode")
        if (requestCode == CUSTOM_TAB_REQUEST_CODE) {
            scope.launch {
                delay(1000L)
                launch(Dispatchers.Main) {
                    cancelCurrentOperation()
                }
            }
            return true
        }
        return false
    }

    /**
     * Cancels the pending operation, if any.
     */
    private fun cancelCurrentOperation() {
        Log.d(TAG, "cancelCurrentOperation")
        val currentResult = signInResult ?: signOutResult
        currentResult?.error(HostedUiException.CANCELLED())
        signInResult = null
        signOutResult = null
    }

}

/**
 * The query parameters of the URI.
 */
val Uri.queryParameters: MutableMap<String, String>
    get() {
        val queryParameters = mutableMapOf<String, String>()
        for (name in queryParameterNames) {
            queryParameters[name] = getQueryParameter(name) ?: ""
        }
        return queryParameters
    }
