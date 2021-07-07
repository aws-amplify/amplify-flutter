package com.amazonaws.amplify.amplify_auth_cognito

import android.content.Context
import android.content.pm.ActivityInfo
import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import com.amazonaws.amplify.amplify_auth_cognito.utils.isRedirectActivityDeclared
import org.junit.Before
import org.junit.Test
import org.mockito.Mockito.mock
import org.mockito.Mockito.`when`


class IsRedirectActivityDeclaredTest {

    val context: Context = mock(Context::class.java)
    val manager: PackageManager = mock(PackageManager::class.java)
    val packageInfo: PackageInfo = mock(PackageInfo::class.java)
    val activityInfo: ActivityInfo = ActivityInfo()
    val packages  = mutableListOf<PackageInfo>(packageInfo)


    @Before
    fun setup() {
        packageInfo.activities = arrayOf<ActivityInfo>(activityInfo)
        `when`(context.packageManager).thenReturn(manager)
        `when`(manager.getInstalledPackages(PackageManager.GET_ACTIVITIES)).thenReturn(packages)
    }

    /**
     * Test that the isRedirectActivityDeclared method will return true
     * when the customer's manifest file includes an activity and intent filter for
     * com.amplifyframework.auth.cognito.activities.HostedUIRedirectActivity
     */
    @Test
    fun test_isRedirectActivity_HostedUIRedirectActivity() {
        activityInfo.name = "HostedUIRedirectActivity"
        var isHostedUIRedirectActivity = isRedirectActivityDeclared(context)
        assert(isHostedUIRedirectActivity)
    }

    /**
    * Test that the isRedirectActivityDeclared method will return true
    * when the customer's manifest file includes an activity and intent filter for
    * com.amazonaws.mobileconnectors.cognitoauth.activities.CustomTabsRedirectActivity
    */
    @Test
    fun test_isRedirectActivity_CustomTabsRedirectActivity() {
        activityInfo.name = "CustomTabsRedirectActivity"
        var isHostedUIRedirectActivity = isRedirectActivityDeclared(context)
        assert(!isHostedUIRedirectActivity)
    }

}
