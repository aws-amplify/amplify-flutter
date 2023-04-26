// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_analytics_pinpoint

import android.content.Context
import android.content.SharedPreferences
import io.flutter.embedding.engine.plugins.FlutterPlugin

class AmplifyAnalyticsPinpointPlugin: FlutterPlugin, Messages.PigeonLegacyDataProvider {

    private var context: Context? = null
    private var sharedPrefs: SharedPreferences? = null

    companion object {
        private const val PINPOINT_SHARED_PREFS_SUFFIX = "515d6767-01b7-49e5-8273-c8d11b0f331d"
        private const val UNIQUE_ID_KEY = "UniqueId";
    }

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        context = binding.applicationContext
        Messages.PigeonLegacyDataProvider.setup(binding.binaryMessenger, this)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        Messages.PigeonLegacyDataProvider.setup(binding.binaryMessenger, null)
        context = null
    }

    override fun getEndpointId(pinpointAppId: String, result: Messages.Result<String?>){
        if (context == null) {
            result.error(Exception("Application context is null"))
            return
        }
        sharedPrefs = sharedPrefs ?: context!!.getSharedPreferences(
            "${pinpointAppId}$PINPOINT_SHARED_PREFS_SUFFIX",
            Context.MODE_PRIVATE
        )
        result.success(sharedPrefs!!.getString(UNIQUE_ID_KEY, null))
    }

}
