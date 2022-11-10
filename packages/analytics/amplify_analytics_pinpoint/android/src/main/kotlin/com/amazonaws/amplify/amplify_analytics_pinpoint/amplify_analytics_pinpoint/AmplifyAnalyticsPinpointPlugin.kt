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

package com.amazonaws.amplify.amplify_analytics_pinpoint.amplify_analytics_pinpoint

import android.content.Context
import android.content.SharedPreferences
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin

class AmplifyAnalyticsPinpointPlugin: FlutterPlugin, Messages.PigeonLegacyDataProvider {

    lateinit var context: Context
    lateinit var sharedPrefs: SharedPreferences

    companion object {
        private const val PINPOINT_SHARED_PREFS_SUFFIX = "515d6767-01b7-49e5-8273-c8d11b0f331d"
        private const val UNIQUE_ID_KEY = "UniqueId";
    }

    override fun onAttachedToEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        context = binding.applicationContext
        Messages.PigeonLegacyDataProvider.setup(binding.binaryMessenger, this)
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        Messages.PigeonLegacyDataProvider.setup(binding.binaryMessenger, null)
    }

    override fun initialize(pinpointAppId: String, result: Messages.Result<Void>){
        sharedPrefs = context.getSharedPreferences(
            "${pinpointAppId}$PINPOINT_SHARED_PREFS_SUFFIX",
            Context.MODE_PRIVATE
        )
        result.success(null)
    }

    override fun getEndpointId(result: Messages.Result<String?>){
        result.success(sharedPrefs.getString(UNIQUE_ID_KEY, null))
    }

}