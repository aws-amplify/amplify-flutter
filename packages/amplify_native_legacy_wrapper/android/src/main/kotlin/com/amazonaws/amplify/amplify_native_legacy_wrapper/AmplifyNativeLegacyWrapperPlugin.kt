// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_native_legacy_wrapper

import android.content.Context
import androidx.annotation.NonNull
import com.amazonaws.mobile.client.AWSMobileClient
import com.amazonaws.mobile.client.Callback
import com.amazonaws.mobile.config.AWSConfiguration
import io.flutter.embedding.engine.plugins.FlutterPlugin
import kotlinx.coroutines.runBlocking
import org.json.JSONObject


/** AmplifyNativeLegacyWrapperPlugin */
class AmplifyNativeLegacyWrapperPlugin: FlutterPlugin, LegacyNativePluginPigeon.LegacyNativePlugin {

  private lateinit var context: Context
  private val awsMobileClient = AWSMobileClient.getInstance()

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    context = flutterPluginBinding.applicationContext
    LegacyNativePluginPigeon.LegacyNativePlugin.setup(flutterPluginBinding.binaryMessenger, this)
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    LegacyNativePluginPigeon.LegacyNativePlugin.setup(binding.binaryMessenger, null)
  }

  override fun configure(config: String, result: LegacyNativePluginPigeon.Result<Void>) {
    val mobileClientConfig =  JSONObject(config).getJSONObject("auth").getJSONObject("plugins").getJSONObject("awsCognitoAuthPlugin")
    awsMobileClient.initialize(
      context,
      AWSConfiguration(mobileClientConfig),
      ResultCallback(result)
    )
  }

  override fun signOut(result: LegacyNativePluginPigeon.Result<Void>) {
    awsMobileClient.signOut(null, ResultCallback(result))
  }

  override fun signIn(
    username: String,
    password: String,
    result: LegacyNativePluginPigeon.Result<Void>
  ) {
    runBlocking {
      awsMobileClient.signIn(
        username,
        password,
        HashMap(),
        ResultCallback(result)
      )
    }
  }

}

class ResultCallback<T>(private val result: LegacyNativePluginPigeon.Result<Void>) : Callback<T> {
  override fun onResult(res: T) {
    this.result.success(null)
  }

  override fun onError(e: Exception?) {
    this.result.error(e)
  }

}
