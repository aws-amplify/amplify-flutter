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

import com.amazonaws.amplify.asMap
import com.amplifyframework.analytics.AnalyticsEvent
import com.amplifyframework.analytics.AnalyticsProperties
import com.amplifyframework.analytics.UserProfile

class AmplifyAnalyticsBuilder {
    companion object Builder {

        fun createAnalyticsProperties(propertiesMap: Map<String, Any>): AnalyticsProperties {

            val propertiesBuilder: AnalyticsProperties.Builder = AnalyticsProperties.builder()

            for ((key, value) in propertiesMap) {

                when (value) {
                    is String -> {
                        propertiesBuilder.add(key, value)
                    }
                    is Double -> {
                        propertiesBuilder.add(key, value)
                    }
                    is Boolean -> {
                        propertiesBuilder.add(key, value)
                    }
                    is Int -> {
                        propertiesBuilder.add(key, value)
                    }
                    // This case should not be possible as AnalyticsProperties is typed on Dart side
                    else -> {
                        throw IllegalArgumentException("Warning unrecognized object type sent for AnalyticsProperties")
                    }
                }
            }

            return propertiesBuilder.build()
        }

        fun createAnalyticsEvent(
            name: String,
            propertiesMap: Map<String, Any>
        ): AnalyticsEvent {

            val eventBuilder: AnalyticsEvent.Builder = AnalyticsEvent.builder()
                .name(name)

            for ((key, value) in propertiesMap) {

                when (value) {
                    is String -> {
                        eventBuilder.addProperty(key, value)
                    }
                    is Double -> {
                        eventBuilder.addProperty(key, value)
                    }
                    is Boolean -> {
                        eventBuilder.addProperty(key, value)
                    }
                    is Int -> {
                        eventBuilder.addProperty(key, value)
                    }
                    // This case should not be possible as AnalyticsEvent is typed on Dart side
                    else -> {
                        throw IllegalArgumentException("Warning unrecognized object type sent via MethodChannel-AnalyticsProperties for AnalyticsEvent")
                    }
                }
            }

            return eventBuilder.build()
        }

        fun createUserProfile(userProfileMap: Map<String, Any>): UserProfile {

            val userProfileBuilder = UserProfile.builder()

            for (item in userProfileMap) {
                when (item.key) {
                    "name" ->
                        userProfileBuilder.name(item.value as String)
                    "email" ->
                        userProfileBuilder.email(item.value as String)
                    "plan" ->
                        userProfileBuilder.plan(item.value as String)
                    "location" -> {
                        val locationMap = item.value.asMap<String, String>()
                        userProfileBuilder.location(createUserLocation(locationMap))
                    }
                    "propertiesMap" -> {
                        val propertiesMap = item.value.asMap<String, Any>()
                        userProfileBuilder.customProperties(createAnalyticsProperties(propertiesMap))
                    }
                    "propertiesTypesMap" -> {
                        // Ignore, we can infer types just using propertiesMap
                    }
                    // This case should not be possible as UserProfile is typed on Dart side
                    else -> {
                        throw IllegalArgumentException("Warning unrecognized object type sent via MethodChannel-AnalyticsProperties for UserProfile")
                    }
                }
            }

            return userProfileBuilder.build()
        }

        private fun createUserLocation(userLocationMap: Map<String, Any?>): UserProfile.Location {

            val locationBuilder = UserProfile.Location.builder()

            for (item in userLocationMap) {
                when (item.key) {
                    "latitude" ->
                        locationBuilder.latitude(item.value as Double)
                    "longitude" ->
                        locationBuilder.longitude(item.value as Double)
                    "postalCode" ->
                        locationBuilder.postalCode(item.value as String)
                    "city" ->
                        locationBuilder.city(item.value as String)
                    "region" ->
                        locationBuilder.region(item.value as String)
                    "country" ->
                        locationBuilder.country(item.value as String)
                    // This case should not be possible as UserLocation is typed on Dart side
                    else -> {
                        throw IllegalArgumentException("Warning unrecognized object type sent via MethodChannel-AnalyticsProperties for UserLocation")
                    }
                }
            }

            return locationBuilder.build()
        }
    }
}
