/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    val packages = mutableListOf<PackageInfo>(packageInfo)

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
     * Test that the isRedirectActivityDeclared method will return false
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
