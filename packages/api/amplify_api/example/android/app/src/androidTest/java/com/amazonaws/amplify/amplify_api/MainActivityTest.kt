package com.amazonaws.amplify.amplify_api_example

import androidx.test.rule.ActivityTestRule
import dev.flutter.plugins.integration_test.FlutterTestRunner
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(FlutterTestRunner::class)
class MainActivityTest {
    @Rule
    @JvmField
    var rule = ActivityTestRule(MainActivity::class.java, true, false)
}
