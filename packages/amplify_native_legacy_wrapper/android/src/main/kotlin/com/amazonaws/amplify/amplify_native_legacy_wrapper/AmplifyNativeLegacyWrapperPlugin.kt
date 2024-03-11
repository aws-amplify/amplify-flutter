// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_native_legacy_wrapper

import android.content.Context
import com.amazonaws.amplify.amplify_native_legacy_wrapper.pigeons.LegacyNativePlugin
import com.amplifyframework.AmplifyException
import com.amplifyframework.auth.AuthException
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
import com.amplifyframework.kotlin.core.Amplify
import com.amplifyframework.core.AmplifyConfiguration
import io.flutter.embedding.engine.plugins.FlutterPlugin
import kotlinx.coroutines.runBlocking
import org.json.JSONObject


/** AmplifyNativeLegacyWrapperPlugin */
class AmplifyNativeLegacyWrapperPlugin: FlutterPlugin, LegacyNativePlugin {

  private lateinit var context: Context

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    context = flutterPluginBinding.applicationContext
    LegacyNativePlugin.setUp(flutterPluginBinding.binaryMessenger, this)
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    LegacyNativePlugin.setUp(binding.binaryMessenger, null)
  }

  override fun configure(config: String, callback: (Result<Unit>) -> Unit) {
    try {
      val configuration = AmplifyConfiguration.builder(JSONObject(config))
        .devMenuEnabled(false)
        .build()
      Amplify.addPlugin(AWSCognitoAuthPlugin())
      Amplify.configure(configuration, context)
      callback(Result.success(Unit))
    } catch (e: AmplifyException) {
      callback(Result.failure(e))
    }
  }

  override fun signIn(username: String, password: String, callback: (Result<Unit>) -> Unit) {
    runBlocking {
      try {
        Amplify.Auth.signIn(username, password)
        callback(Result.success(Unit))
      } catch (error: AuthException) {
        callback(Result.failure(error))
      }
    }
  }

  override fun signOut(callback: (Result<Unit>) -> Unit) {
    runBlocking {
      try {
        Amplify.Auth.signOut()
        callback(Result.success(Unit))
      } catch (error: AuthException) {
        callback(Result.failure(error))
      }
    }
  }

  override fun rememberDevice(callback: (Result<Unit>) -> Unit) {
    runBlocking {
      try {
        Amplify.Auth.rememberDevice()
        callback(Result.success(Unit))
      } catch (error: AuthException) {
        callback(Result.failure(error))
      }
    }
  }

}
