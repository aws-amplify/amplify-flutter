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

package com.amazonaws.amplify.amplify_flutter_example

import com.amazonaws.amplify.Amplify
import com.amplifyframework.analytics.AnalyticsCategory
import com.amplifyframework.api.ApiCategory
import com.amplifyframework.auth.AuthCategory
import com.amplifyframework.core.category.Category
import com.amplifyframework.core.category.CategoryType
import com.amplifyframework.datastore.DataStoreCategory
import com.amplifyframework.hub.HubCategory
import com.amplifyframework.logging.LoggingCategory
import com.amplifyframework.predictions.PredictionsCategory
import com.amplifyframework.storage.StorageCategory
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.util.concurrent.atomic.AtomicBoolean

class MainActivity : FlutterActivity() {
    companion object {
        fun buildCategoriesMap(): LinkedHashMap<CategoryType, Category<*>> {
            val categories = LinkedHashMap<CategoryType, Category<*>>()
            categories[CategoryType.AUTH] = AuthCategory()
            categories[CategoryType.ANALYTICS] = AnalyticsCategory()
            categories[CategoryType.API] = ApiCategory()
            categories[CategoryType.LOGGING] = LoggingCategory()
            categories[CategoryType.STORAGE] = StorageCategory()
            categories[CategoryType.HUB] = HubCategory()
            categories[CategoryType.DATASTORE] = DataStoreCategory()
            categories[CategoryType.PREDICTIONS] = PredictionsCategory()
            return categories
        }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        val integrationTestChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "integration_tests"
        )
        integrationTestChannel.setMethodCallHandler { call, result ->
            when (call.method) {
                "reset" -> {
                    val categoriesField = Amplify::class.java.getDeclaredField("CATEGORIES")
                    categoriesField.isAccessible = true
                    categoriesField.set(Amplify::class.java, buildCategoriesMap())
                    val configurationLock = Amplify::class.java.getDeclaredField("CONFIGURATION_LOCK")
                    configurationLock.isAccessible = true
                    configurationLock.set(Amplify::class.java, AtomicBoolean(false))
                }
                else -> result.notImplemented()
            }
        }
        super.configureFlutterEngine(flutterEngine)
    }
}
