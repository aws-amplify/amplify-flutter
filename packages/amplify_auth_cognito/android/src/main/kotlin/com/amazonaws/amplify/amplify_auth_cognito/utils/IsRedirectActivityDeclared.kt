package com.amazonaws.amplify.amplify_auth_cognito.utils

import android.content.Context
import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import com.amplifyframework.core.Amplify
import com.amplifyframework.logging.Logger

private val REDIRECT_ACTIVITY_NAME = "HostedUIRedirectActivity"
private val LOG = Amplify.Logging.forNamespace("amplify:flutter:auth_cognito:utils")


/**
 * The amplify-android library has added a HostedUIRedirectActivity to replace
 * customer usage of CustomTabsRedirectActivity. This removes the necessity of adding
 * a response handler. The inclusion of a response handler can cause intermittent invalid_grant
 * exceptions, but removing our response handler will break customers who do not update their
 * manifest. In order to maintain backwards compatibility we have added this method to check which
 * activity customers have used.
 */
fun isRedirectActivityDeclared(context: Context): Boolean {

    if (context == null) {
        LOG.warn("Context is null. Failed to inspect packages.");
        return false
    }
    try {
        val packages: List<PackageInfo> = context.packageManager
            .getInstalledPackages(PackageManager.GET_ACTIVITIES)
        for (packageInfo in packages) {
            if (packageInfo.activities == null) {
                continue
            }
            for (activityInfo in packageInfo.activities) {
                if (activityInfo.name.contains(REDIRECT_ACTIVITY_NAME)) {
                    return true
                }
            }
        }
        LOG.warn("$REDIRECT_ACTIVITY_NAME is not declared in AndroidManifest.")
    } catch (error: java.lang.Exception) {
        LOG.warn("Failed to inspect packages.")
    }
    return false
}