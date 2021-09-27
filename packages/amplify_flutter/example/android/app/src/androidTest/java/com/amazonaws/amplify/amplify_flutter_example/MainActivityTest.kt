package com.amazonaws.amplify.amplify_flutter_example

import androidx.test.platform.app.InstrumentationRegistry
import androidx.test.rule.ActivityTestRule
import com.amplifyframework.analytics.AnalyticsCategory
import com.amplifyframework.api.ApiCategory
import com.amplifyframework.auth.AuthCategory
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Amplify.*
import com.amplifyframework.core.category.Category
import com.amplifyframework.core.category.CategoryType
import com.amplifyframework.datastore.DataStoreCategory
import com.amplifyframework.geo.GeoCategory
import com.amplifyframework.hub.HubCategory
import com.amplifyframework.logging.LoggingCategory
import com.amplifyframework.predictions.PredictionsCategory
import com.amplifyframework.storage.StorageCategory
import dev.flutter.plugins.integration_test.FlutterTestRunner
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import org.junit.Rule
import org.junit.runner.RunWith
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.jvm.internal.Reflection
import kotlin.reflect.full.staticProperties

class IntegrationTestActivity: FlutterActivity() {
    companion object {
        fun buildCategoriesMap(): LinkedHashMap<CategoryType, Category<*>> {
            val categories = LinkedHashMap<CategoryType, Category<*>>()
            categories[CategoryType.AUTH] = AuthCategory()
            categories[CategoryType.ANALYTICS] = AnalyticsCategory()
            categories[CategoryType.API] = ApiCategory()
            categories[CategoryType.LOGGING] = LoggingCategory()
            categories[CategoryType.STORAGE] = StorageCategory()
            categories[CategoryType.GEO] = GeoCategory()
            categories[CategoryType.HUB] = HubCategory()
            categories[CategoryType.DATASTORE] = DataStoreCategory()
            categories[CategoryType.PREDICTIONS] = PredictionsCategory()
            return categories
        }
    }
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        val integrationTestChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "integration_test")
        integrationTestChannel.setMethodCallHandler { call, result ->
            when(call.method) {
                "reset" -> {
                    val categoriesField = Amplify::class.java.getField("CATEGORIES")
                    categoriesField.isAccessible = true
                    categoriesField.set(Amplify::class.java, buildCategoriesMap())
                    val configurationLock = Amplify::class.java.getField("CONFIGURATION_LOCK")
                    configurationLock.isAccessible = true
                    configurationLock.set(Amplify::class.java, AtomicBoolean(false))
                }
                else -> result.notImplemented()
            }
        }
        super.configureFlutterEngine(flutterEngine)
    }
}

@RunWith(FlutterTestRunner::class)
class MainActivityTest {
    @Rule
    @JvmField
    var rule = ActivityTestRule(IntegrationTestActivity::class.java, true, false)
}
