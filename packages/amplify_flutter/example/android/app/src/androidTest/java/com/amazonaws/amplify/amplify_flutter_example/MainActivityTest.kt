package com.amazonaws.amplify.amplify_flutter_example


import androidx.test.platform.app.InstrumentationRegistry
import androidx.test.rule.ActivityTestRule
import com.amplifyframework.core.Amplify
import dev.flutter.plugins.integration_test.FlutterTestRunner
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import org.junit.Rule
import org.junit.runner.RunWith
import kotlin.jvm.internal.Reflection

class IntegrationTestActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        val integrationTestChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "integration_test")
        integrationTestChannel.setMethodCallHandler { call, result ->
            when(call.method) {
                "reset" -> {
                    InstrumentationRegistry.getInstrumentation()
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
