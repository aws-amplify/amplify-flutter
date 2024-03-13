// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_auth_cognito

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import android.content.pm.PackageManager
import android.content.pm.PackageManager.MATCH_ALL
import android.content.pm.PackageManager.MATCH_DEFAULT_ONLY
import android.content.pm.PackageManager.PackageInfoFlags
import android.net.Uri
import android.os.Build
import android.provider.Settings
import androidx.browser.customtabs.CustomTabsIntent
import androidx.browser.customtabs.CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION
import io.flutter.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.PluginRegistry
import java.net.URLDecoder
import java.util.Locale

open class AmplifyAuthCognitoPlugin :
  FlutterPlugin,
  ActivityAware,
  PluginRegistry.NewIntentListener,
  PluginRegistry.ActivityResultListener,
  NativeAuthBridge {
  private companion object {
    const val TAG = "AmplifyAuthCognitoPlugin"

    /**
     * A code to identify the result of the custom tabs request.
     */
    const val CUSTOM_TAB_REQUEST_CODE = 8888

    /**
     * An intent extra used to signal the cancellation of a Hosted UI sign-in/sign-out.
     */
    const val CUSTOM_TAB_CANCEL_EXTRA = "com.amazonaws.amplify.auth.hosted_ui.cancel"
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
  private var signInResult: ((Result<MutableMap<String, String>>) -> Unit)? = null

  /**
   * The pending sign out result.
   */
  private var signOutResult: ((Result<Unit>) -> Unit)? = null

  /**
   * The plugin used to communicate with Dart.
   */
  private var nativePlugin: NativeAuthPlugin? = null

  /**
   * The initial route parameters used to launch the main activity, which can happen when using
   * non-Chrome browsers or when a Hosted UI redirect occurs while the app is closed. They are
   * sent to the platform during configuration.
   */
  private var initialParameters: Map<String, String>? = null

  /**
   * Legacy User Pool Key-Value Storage.
   *
   * Reference: https://github.com/aws-amplify/aws-sdk-android/blob/8f6f2281acf40297a078219a0fd97ae8cbc079c1/aws-android-sdk-cognitoauth/src/main/java/com/amazonaws/mobileconnectors/cognitoauth/util/ClientConstants.java#L27
   */
  private val legacyUserPoolStore: LegacyKeyValueStore by lazy {
    LegacyKeyValueStore(
      applicationContext!!,
      "CognitoIdentityProviderCache"
    )
  }

  /**
   * Legacy Identity Store Key-Value Storage.
   *
   * Reference: https://github.com/aws-amplify/aws-sdk-android/blob/8f6f2281acf40297a078219a0fd97ae8cbc079c1/aws-android-sdk-auth-core/src/main/java/com/amazonaws/mobile/auth/core/IdentityManager.java#L143
   */
  private val legacyIdentityStore: LegacyKeyValueStore by lazy {
    LegacyKeyValueStore(
      applicationContext!!,
      "com.amazonaws.android.auth"
    )
  }

  /**
   ASF Device Secrets Storage.
   */
  private val asfDeviceSecretsStore: SharedPreferences by lazy {
    applicationContext!!.getSharedPreferences("AWS.Cognito.ContextData", Context.MODE_PRIVATE)
  }

  override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    Log.d(TAG, "onAttachedToEngine")
    applicationContext = binding.applicationContext
    nativePlugin = NativeAuthPlugin(binding.binaryMessenger)
    NativeAuthBridge.setUp(
      binding.binaryMessenger,
      this,
    )
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    Log.d(TAG, "onDetachedFromEngine")
    applicationContext = null
    cancelCurrentOperation()
    nativePlugin = null
    NativeAuthBridge.setUp(
      binding.binaryMessenger,
      null,
    )
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    Log.d(TAG, "onAttachedToActivity")
    mainActivity = binding.activity
    activityBinding = binding
    // Treat the launching intent the same as an intent created while the application was
    // running to capture a sign in callback which launched the app.
    onNewIntent(binding.activity.intent)
    binding.addOnNewIntentListener(this)
    binding.addActivityResultListener(this)
  }

  override fun onDetachedFromActivityForConfigChanges() {
    Log.d(TAG, "onDetachedFromActivityForConfigChanges")
    activityBinding?.removeActivityResultListener(this)
    activityBinding?.removeOnNewIntentListener(this)
    activityBinding = null
    mainActivity = null
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    Log.d(TAG, "onReattachedToActivityForConfigChanges")
    mainActivity = binding.activity
    activityBinding = binding
    binding.addOnNewIntentListener(this)
    binding.addActivityResultListener(this)
  }

  override fun onDetachedFromActivity() {
    Log.d(TAG, "onDetachedFromActivity")
    activityBinding?.removeActivityResultListener(this)
    activityBinding?.removeOnNewIntentListener(this)
    activityBinding = null
    mainActivity = null
  }

  override fun getValidationData(): MutableMap<String, String> {
    // Currently, the Android libraries do not provide any data by default.
    return mutableMapOf()
  }

  // Adapted from `amplify-android`:
  // https://github.com/aws-amplify/aws-sdk-android/blob/05af780090c41c9597059729ca22565ea7719971/aws-android-sdk-cognitoidentityprovider-asf/src/main/java/com.amazonaws.cognito.clientcontext/datacollection/ContextDataAggregator.java
  override fun getContextData(): NativeUserContextData {
    val applicationInfo = applicationContext!!.applicationInfo
    val packageManager = applicationContext!!.packageManager
    val packageName = applicationContext!!.packageName

    // DeviceName
    val deviceName = Build.DEVICE

    // ThirdPartyDeviceId
    val thirdPartyDeviceId = Settings.Secure.ANDROID_ID

    // DeviceFingerprint
    val deviceFingerprint = Build.FINGERPRINT

    // ApplicationName
    val applicationName = packageManager.getApplicationLabel(applicationInfo).toString()

    // ApplicationVersion
    val applicationVersion = try {
      if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
        packageManager.getPackageInfo(packageName, PackageInfoFlags.of(0)).versionName
      } else {
        @Suppress("DEPRECATION")
        packageManager.getPackageInfo(packageName, 0).versionName
      }
    } catch (e: PackageManager.NameNotFoundException) {
      Log.w(TAG, "Unable to get app version for package: $packageName")
      null
    }

    // DeviceOsReleaseVersion
    val deviceOsReleaseVersion = Build.VERSION.RELEASE

    // DeviceLanguage
    val deviceLanguage = Locale.getDefault().toLanguageTag()

    // ScreenHeightPixels / ScreenWidthPixels
    val screenHeightPixels = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
      val windowMetrics = mainActivity!!.windowManager.currentWindowMetrics
      windowMetrics.bounds.height()
    } else {
      mainActivity!!.resources.displayMetrics.heightPixels
    }
    val screenWidthPixels = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
      val windowMetrics = mainActivity!!.windowManager.currentWindowMetrics
      windowMetrics.bounds.width()
    } else {
      mainActivity!!.resources.displayMetrics.widthPixels
    }

    return NativeUserContextData(
      deviceName = deviceName,
      thirdPartyDeviceId = thirdPartyDeviceId,
      deviceFingerprint = deviceFingerprint,
      applicationName = applicationName,
      applicationVersion = applicationVersion,
      deviceLanguage = deviceLanguage,
      deviceOsReleaseVersion = deviceOsReleaseVersion,
      screenHeightPixels = screenHeightPixels.toLong(),
      screenWidthPixels = screenWidthPixels.toLong(),
    )
  }

  override fun getBundleId(): String {
    return applicationContext!!.packageName
  }

  /**
   * Fetches the legacy credentials set by the Android SDK.
   *
   * References:
   *  - https://github.com/aws-amplify/aws-sdk-android/blob/main/aws-android-sdk-core/src/main/java/com/amazonaws/auth/CognitoCachingCredentialsProvider.java
   *  - https://github.com/aws-amplify/aws-sdk-android/blob/main/aws-android-sdk-cognitoauth/src/main/java/com/amazonaws/mobileconnectors/cognitoauth/util/ClientConstants.java
   */
  override fun getLegacyCredentials(identityPoolId: String?, appClientId: String?, callback: (Result<LegacyCredentialStoreData>) -> Unit) {
    val data = LegacyCredentialStoreDataBuilder()

    if (appClientId != null) {
      val lastAuthUser = legacyUserPoolStore["CognitoIdentityProvider.$appClientId.LastAuthUser"]
      val accessToken = legacyUserPoolStore["CognitoIdentityProvider.$appClientId.$lastAuthUser.accessToken"]
      val refreshToken = legacyUserPoolStore["CognitoIdentityProvider.$appClientId.$lastAuthUser.refreshToken"]
      val idToken = legacyUserPoolStore["CognitoIdentityProvider.$appClientId.$lastAuthUser.idToken"]
      data.apply {
        this.accessToken = accessToken
        this.refreshToken = refreshToken
        this.idToken = idToken
      }
    }

    if (identityPoolId != null) {
      val accessKey =  legacyIdentityStore["$identityPoolId.accessKey"]
      val secretKey = legacyIdentityStore["$identityPoolId.secretKey"]
      val sessionKey = legacyIdentityStore["$identityPoolId.sessionToken"]
      val expiration = legacyIdentityStore["$identityPoolId.expirationDate"]
      val identityId = legacyIdentityStore["$identityPoolId.identityId"]
      data.apply {
        this.identityId = identityId
        this.accessKeyId = accessKey
        this.secretAccessKey = secretKey
        this.sessionToken = sessionKey
        this.expirationMsSinceEpoch = expiration?.toLong()
      }
    }

    callback(Result.success(data.build()))
  }

  /**
   * Get Legacy Device Secrets
   */
  override fun fetchLegacyDeviceSecrets(
    username: String,
    userPoolId: String,
    callback: (Result<LegacyDeviceDetailsSecret?>) -> Unit
  ) {
    val data = LegacyDeviceDetailsBuilder()

    val newLegacyDeviceSecretsStore = LegacyKeyValueStore(
      applicationContext!!,
      "CognitoIdentityProviderDeviceCache.$userPoolId.$username"
    )

    val deviceKey = newLegacyDeviceSecretsStore["DeviceKey"]
    val deviceSecret = newLegacyDeviceSecretsStore["DeviceSecret"]
    val deviceGroup = newLegacyDeviceSecretsStore["DeviceGroupKey"]

    data.apply {
      this.deviceKey = deviceKey
      this.deviceSecret = deviceSecret
      this.deviceGroupKey = deviceGroup
    }

    val asfDeviceId = asfDeviceSecretsStore.getString("CognitoDeviceId", null)
    data.apply {
      this.asfDeviceId = asfDeviceId
    }

    callback(Result.success(data.build()))
  }

  /**
   * Delete Legacy Device Secrets
   */
  override fun deleteLegacyDeviceSecrets(username: String, userPoolId: String, callback: (Result<Unit>) -> Unit) {
    val legacyDeviceSecretsStore = LegacyKeyValueStore(
      applicationContext!!,
      "CognitoIdentityProviderDeviceCache.$userPoolId.$username"
    )
    legacyDeviceSecretsStore.clear()
    asfDeviceSecretsStore.edit().clear().apply()
    callback(Result.success(Unit))
  }

  /**
   * Clears the legacy credentials set by the Android SDK
   */
  override fun clearLegacyCredentials(callback: (Result<Unit>) -> Unit) {
    legacyUserPoolStore.clear()
    legacyIdentityStore.clear()
    callback(Result.success(Unit))
  }

  /**
   * Handles the result of a sign in redirect.
   */
  private fun handleSignInResult(queryParameters: MutableMap<String, String>): Boolean {
    Log.d(TAG, "handleSignInResult: $queryParameters (signInResult=$signInResult)")
    signInResult?.invoke(Result.success(queryParameters))
    signInResult = null
    return true
  }

  /**
   * Handles the result of a sign out redirect.
   */
  private fun handleSignOutResult(): Boolean {
    Log.d(TAG, "handleSignOutResult (signOutResult=$signOutResult)")
    signOutResult?.invoke(Result.success(Unit))
    signOutResult = null
    return true
  }

  /**
   * The application ID of the installed package which can handle custom tabs,
   * typically a browser like Chrome.
   *
   * Adapted from: https://github.com/GoogleChrome/custom-tabs-client/blob/f55501961a211a92eacbe3c2f15d7c58c19c8ef9/shared/src/main/java/org/chromium/customtabsclient/shared/CustomTabsHelper.java#L64
   */
  private val browserPackageName: String? by lazy {
    val packageManager = mainActivity!!.packageManager
    // The VIEW intent handler.
    val activityIntent = Intent().apply {
      action = Intent.ACTION_VIEW
      addCategory(Intent.CATEGORY_BROWSABLE)
      data = Uri.fromParts("https", "", null)
    }
    val defaultViewHandlerInfo = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
      packageManager.resolveActivity(
        activityIntent,
        PackageManager.ResolveInfoFlags.of(MATCH_DEFAULT_ONLY.toLong())
      )
    } else {
      @Suppress("DEPRECATION")
      packageManager.resolveActivity(
        activityIntent,
        MATCH_DEFAULT_ONLY
      )
    }
    Log.d(TAG, "[browserPackageName] Resolved activity info: $defaultViewHandlerInfo")
    var defaultViewHandlerPackageName: String? = null
    if (defaultViewHandlerInfo != null) {
      defaultViewHandlerPackageName = defaultViewHandlerInfo.activityInfo.packageName
    }
    Log.d(TAG, "[browserPackageName] Resolved default package: $defaultViewHandlerPackageName")

    // Get all apps that can handle VIEW intents.
    val resolvedActivityList = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
      packageManager.queryIntentActivities(
        activityIntent,
        PackageManager.ResolveInfoFlags.of(MATCH_ALL.toLong())
      )
    } else {
      @Suppress("DEPRECATION")
      packageManager.queryIntentActivities(activityIntent, MATCH_ALL)
    }
    val packagesSupportingCustomTabs = mutableListOf<String>()
    for (info in resolvedActivityList) {
      val serviceIntent = Intent()
      serviceIntent.action = ACTION_CUSTOM_TABS_CONNECTION
      serviceIntent.`package` = info.activityInfo.packageName
      // Check if the package also resolves the Custom Tabs service.
      val resolvedService = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
        packageManager.resolveService(serviceIntent, PackageManager.ResolveInfoFlags.of(0))
      } else {
        @Suppress("DEPRECATION")
        packageManager.resolveService(serviceIntent, 0)
      }
      if (resolvedService != null) {
        packagesSupportingCustomTabs.add(info.activityInfo.packageName)
      }
    }
    Log.d(TAG, "[browserPackageName] Resolved custom tabs handlers: $packagesSupportingCustomTabs")

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
    Log.d(TAG, "[launchUrl] Using browser package: $useBrowserPackage")
    intent.intent.`package` = useBrowserPackage
    intent.intent.putExtra(
      Intent.EXTRA_REFERRER,
      Uri.parse("android-app://${mainActivity!!.packageName}")
    )
    intent.intent.data = Uri.parse(url)

    // Fixes an issue for older Android versions where the custom tab will background the app on
    // redirect. Setting `FLAG_ACTIVITY_NEW_TASK` is the only fix since Flutter specifies
    // `android:launchMode="singleInstance"` in the manifest.
    //
    // See: https://stackoverflow.com/questions/36084681/chrome-custom-tabs-redirect-to-android-app-will-close-the-app
    if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) {
      intent.intent.addFlags(Intent.FLAG_ACTIVITY_NO_HISTORY)
      intent.intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
    }

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
    callback: (Result<Map<String, String>>) -> Unit
  ) {
    val result = AtomicResult(callback, "signIn")
    try {
      launchUrl(url, browserPackageName)
      signInResult = result
    } catch (e: Throwable) {
      result(Result.failure(HostedUiException.fromThrowable(e)))
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
    callback: (Result<Unit>) -> Unit
  ) {
    val result = AtomicResult(callback, "signOut")
    try {
      launchUrl(url, browserPackageName)
      signOutResult = result
    } catch (e: Throwable) {
      result(Result.failure(HostedUiException.fromThrowable(e)))
    }
  }

  /**
   * The custom tab will launch the main activity with action `VIEW` and category `BROWSABLE`
   * on the final redirect to the user's custom URI.
   */
  override fun onNewIntent(intent: Intent): Boolean {
    Log.d(TAG, "[onNewIntent] Got intent: $intent")
    if (intent.action == Intent.ACTION_VIEW && intent.hasCategory(Intent.CATEGORY_BROWSABLE)) {
      val uri = intent.data
      if (uri == null) {
        Log.e(TAG, "No data associated with intent")
        return false
      }
      val queryParameters = uri.queryParameters
      Log.d(TAG, "[onNewIntent] Handling intent with query parameters: $queryParameters (signInResult=$signInResult, signOutResult=$signOutResult)")
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
    } else if (intent.hasExtra(CUSTOM_TAB_CANCEL_EXTRA)) {
      // Intents originating with this extra are meant to close the loop on sign-in/out events.
      // See the notes on [onActivityResult] for more information.
      Log.d(TAG, "[onNewIntent] Cancelling current operation")
      cancelCurrentOperation()
      return true
    }
    Log.d(TAG, "[onNewIntent] Not handling intent")
    return false
  }

  /**
   * Called when the custom tab activity completes, either by cancellation or success.
   *
   * There is no way to distinguish whether it is a success or cancellation, and our logic for
   * handling the success case is centered in [onNewIntent] which is called just before or after
   * this method in the success case and not at all in the error case.
   *
   * In the cancellation case, [onNewIntent] is not called, only this method, which means that
   * we either need to wait for a couple seconds to see if [onNewIntent] is called or trigger an
   * intent of our own which will be intercepted by [onNewIntent]. The former is flaky and found to
   * be unreliable, but the latter is robust.
   *
   * By the time we reach this method, a new intent will have been initiated in the success case.
   * By creating a new one, we are guaranteed it will be handled after the success intent, in which
   * case it's a no-op. In the error case, the intent we create will trigger the cancellation of
   * the pending sign-in or sign-out request. Either way, the request is completed.
   */
  override fun onActivityResult(requestCode: Int, resultCode: Int, intent: Intent?): Boolean {
    Log.d(TAG, "[onActivityResult] Got result: requestCode=$requestCode, resultCode=$resultCode, intent=$intent")
    if (requestCode == CUSTOM_TAB_REQUEST_CODE) {
      val cancelIntent = Intent(applicationContext!!, mainActivity!!.javaClass).apply {
        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        putExtra(CUSTOM_TAB_CANCEL_EXTRA, true)
      }
      applicationContext!!.startActivity(cancelIntent)
      return true
    }
    return false
  }

  /**
   * Cancels the pending operation, if any.
   */
  private fun cancelCurrentOperation() {
    Log.d(TAG, "[cancelCurrentOperation] Canceling with state: signInResult=$signInResult, signOutResult=$signOutResult")
    if (signInResult != null) {
      signInResult?.invoke(Result.failure(HostedUiException.CANCELLED()))
    } else if (signOutResult != null) {
      signOutResult?.invoke(Result.failure(HostedUiException.CANCELLED()))
    }
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
    val queryString = this.encodedQuery ?: return queryParameters
    val queries = queryString.split("&")

    for (query in queries) {
      val idx = query.indexOf("=")
      if (idx != -1) {
        val name = URLDecoder.decode(query.substring(0, idx), "UTF-8")
        val value = URLDecoder.decode(query.substring(idx + 1), "UTF-8")
        queryParameters[name] = value
      }
    }
    return queryParameters
  }

fun LegacyCredentialStoreData.Companion.builder() = LegacyCredentialStoreDataBuilder()

class LegacyCredentialStoreDataBuilder(
  var identityId: String? = null,
  var accessKeyId: String? = null,
  var secretAccessKey: String? = null,
  var sessionToken: String? = null,
  var expirationMsSinceEpoch: Long? = null,
  var accessToken: String? = null,
  var refreshToken: String? = null,
  var idToken: String? = null
) {
  fun build(): LegacyCredentialStoreData = LegacyCredentialStoreData(
    identityId,
    accessKeyId,
    secretAccessKey,
    sessionToken,
    expirationMsSinceEpoch,
    accessToken,
    refreshToken,
    idToken,
  )
}

fun LegacyDeviceDetailsSecret.Companion.builder() = LegacyDeviceDetailsBuilder()

class LegacyDeviceDetailsBuilder(
  var deviceKey: String? = null,
  var deviceGroupKey: String? = null,
  var deviceSecret: String? = null,
  var asfDeviceId: String? = null,
) {
  fun build(): LegacyDeviceDetailsSecret = LegacyDeviceDetailsSecret(
    deviceKey,
    deviceGroupKey,
    deviceSecret,
    asfDeviceId,
  )
}
