package com.amazonaws.amplify.amplify_analytics_pinpoint

import android.app.Activity
import android.os.Bundle

/// Empty activity used to force lifecycle events in the user's app.
class EmptyActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        finish()
    }
}