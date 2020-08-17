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

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull

import com.amplifyframework.core.Amplify

import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.Result

import com.amazonaws.amplify.amplify_analytics_pinpoint.types.FlutterAnalyticsErrorMessage



class AmplifyAnalyticsBridge {
    companion object Bridge {

        fun recordEvent(@NonNull arguments: Any, @NonNull result: MethodChannel.Result) {
            try {
                val argumentsMap = arguments as HashMap<*, *>
                val name = argumentsMap["name"] as String

                var properties : HashMap<String, Any>

                properties = if(argumentsMap.containsKey("propertiesMap")){
                    argumentsMap["propertiesMap"] as HashMap<String, Any>;
                } else{
                    HashMap<String, Any>()
                }

                Amplify.Analytics.recordEvent(
                        AmplifyAnalyticsBuilder.createAnalyticsEvent(name, properties));
                result.success(true);
            } catch (e: Exception) {
                prepareError(result, e, FlutterAnalyticsErrorMessage.RECORD_EVENT.toString())
            }
        }

        fun flushEvents(@NonNull result: MethodChannel.Result) {
            try {
                Amplify.Analytics.flushEvents()
                result.success(true)
            } catch (e: Exception) {
                prepareError(result, e, FlutterAnalyticsErrorMessage.FLUSH_EVENTS.toString())
            }
        }

        fun registerGlobalProperties(@NonNull arguments: Any, @NonNull result: MethodChannel.Result) {
            try {
                val globalProperties = arguments as HashMap<String, Any>
                Amplify.Analytics.registerGlobalProperties(
                        AmplifyAnalyticsBuilder.createAnalyticsProperties(globalProperties))
                result.success(true)
            } catch (e: Exception) {
                prepareError(result, e, FlutterAnalyticsErrorMessage.REGISTER_GLOBAL_PROPERTIES.toString())
            }
        }

        fun unregisterGlobalProperties(@NonNull arguments: Any, @NonNull result: MethodChannel.Result) {
            try {
                val propertyNames = (arguments as ArrayList<String>).toSet<String>()

                if(propertyNames.size == 0){
                    Amplify.Analytics.unregisterGlobalProperties()
                }
                else{
                    for (name in propertyNames) {
                        Amplify.Analytics.unregisterGlobalProperties(name)
                    }
                }
                result.success(true)
            } catch (e: Exception) {
                prepareError(result, e, FlutterAnalyticsErrorMessage.UNREGISTER_GLOBAL_PROPERTIES.toString())
            }
        }

        fun enable(@NonNull result: MethodChannel.Result) {
            try {
                Amplify.Analytics.enable()
                result.success(true)
            } catch (e: Exception) {
                prepareError(result, e, FlutterAnalyticsErrorMessage.ENABLE.toString())
            }
        }

        fun disable(@NonNull result: MethodChannel.Result) {
            try {
                Amplify.Analytics.disable()
                result.success(true)
            } catch (e: Exception) {
                prepareError(result, e, FlutterAnalyticsErrorMessage.DISABLE.toString())
            }
        }

        fun identifyUser(@NonNull arguments: Any, @NonNull result: MethodChannel.Result) {
            try {
                val argumentsMap = arguments as HashMap<*, *>
                val userId = argumentsMap["userId"] as String
                val userProfileMap = argumentsMap["userProfileMap"] as HashMap<String, Object>

                Amplify.Analytics.identifyUser(userId,
                        AmplifyAnalyticsBuilder.createUserProfile(userProfileMap))
                result.success(true)
            } catch (e: Exception) {
                prepareError(result, e, FlutterAnalyticsErrorMessage.IDENTIFY_USER.toString())
            }
        }

        fun prepareError(@NonNull flutterResult: Result, @NonNull error: Exception, @NonNull msg: String) {
            AmplifyAnalyticsPinpointPlugin.LOG.error(msg, error)

            var errorDetails = HashMap<String, Any>()
            errorDetails.put("PLATFORM_EXCEPTIONS", mapOf(
                    "platform" to "Android",
                    "localizedErrorMessage" to error.localizedMessage
            ))
            Handler(Looper.getMainLooper()).post {
                flutterResult.error("AmplifyException", msg, errorDetails)
            }
        }

    }
}