/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

package com.amazonaws.amplify.amplify_analytics_pinpoint

import android.app.Application
import android.content.Context
import androidx.annotation.NonNull
import com.amazonaws.amplify.asMap
import com.amazonaws.amplify.asPlatformChannelMap
import com.amazonaws.amplify.cast
import com.amazonaws.amplify.exception.ExceptionUtil.Companion.handleAddPluginException
import com.amplifyframework.analytics.pinpoint.AWSPinpointAnalyticsPlugin
import com.amplifyframework.core.Amplify
import io.flutter.plugin.common.MethodChannel

class AmplifyAnalyticsBridge {
    companion object Bridge {

        private val LOG = AnalyticsPinpoint.LOG

        fun addPlugin(@NonNull flutterResult: MethodChannel.Result, @NonNull context: Context) {
            try {
                Amplify.addPlugin(AWSPinpointAnalyticsPlugin(context as Application?))
                LOG.info("Added AnalyticsPinpoint plugin")
                flutterResult.success(null)
            } catch (e: Exception) {
                handleAddPluginException("Analytics", e, flutterResult)
                return
            }
        }

        fun recordEvent(@NonNull arguments: Any, @NonNull result: MethodChannel.Result) {
            val argumentsMap = arguments.asPlatformChannelMap()
            val name = argumentsMap["name"] as String

            val properties = argumentsMap["propertiesMap"]?.asMap<String, Any>() ?: HashMap()

            Amplify.Analytics.recordEvent(
                AmplifyAnalyticsBuilder.createAnalyticsEvent(name, properties)
            )
            result.success(true)
        }

        fun flushEvents(@NonNull result: MethodChannel.Result) {
            Amplify.Analytics.flushEvents()
            result.success(true)
        }

        fun registerGlobalProperties(
            @NonNull arguments: Any,
            @NonNull result: MethodChannel.Result
        ) {
            val argumentsMap = arguments.asPlatformChannelMap()
            val properties = argumentsMap["propertiesMap"]?.asMap<String, Any>() ?: HashMap()

            Amplify.Analytics.registerGlobalProperties(
                AmplifyAnalyticsBuilder.createAnalyticsProperties(properties)
            )
            result.success(true)
        }

        fun unregisterGlobalProperties(
            @NonNull arguments: Any,
            @NonNull result: MethodChannel.Result
        ) {
            val propertyNames = (arguments as List<*>).cast<String>().toSet()

            if (propertyNames.isEmpty()) {
                Amplify.Analytics.unregisterGlobalProperties()
            } else {
                for (name in propertyNames) {
                    Amplify.Analytics.unregisterGlobalProperties(name)
                }
            }
            result.success(true)
        }

        fun enable(@NonNull result: MethodChannel.Result) {
            Amplify.Analytics.enable()
            result.success(true)
        }

        fun disable(@NonNull result: MethodChannel.Result) {
            Amplify.Analytics.disable()
            result.success(true)
        }

        fun identifyUser(@NonNull arguments: Any, @NonNull result: MethodChannel.Result) {
            val argumentsMap = arguments.asPlatformChannelMap()
            val userId = argumentsMap["userId"] as String
            val userProfileMap = argumentsMap["userProfileMap"]?.asMap<String, Any>() ?: HashMap()

            Amplify.Analytics.identifyUser(
                userId,
                AmplifyAnalyticsBuilder.createUserProfile(userProfileMap)
            )
            result.success(true)
        }
    }
}
