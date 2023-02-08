// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_secure_storage.amplify_secure_storage

import android.content.Context
import android.content.SharedPreferences
import android.util.Log
import androidx.annotation.VisibleForTesting
import androidx.security.crypto.EncryptedSharedPreferences
import androidx.security.crypto.EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV
import androidx.security.crypto.EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM
import androidx.security.crypto.MasterKeys
import java.io.File

open class EncryptedKeyValueRepository(
    private val context: Context,
    private val sharedPreferencesName: String,
) : KeyValueRepository {

    private val sharedPreferences: SharedPreferences by lazy {
        val isInitialized = initializationFlagFile.exists()
        if (!isInitialized) {
            // TODO(Jordan-Nelson): Remove when fix for https://github.com/google/tink/issues/534 is
            // available in a stable version of androidx.security:security-crypto
            Log.i(
                "AmplifySecureStorage",
                "Attempting to create new EncryptedSharedPreferences file for scope $sharedPreferencesName. " +
            "NOTE: This will result in an expected FileNotFoundException message from AndroidKeysetManager. " +
            "This can be safely ignored."
            )
            // Attempt to remove previous SharedPreferences file if not initialized.
            removeSharedPreferencesFile()
            initializationFlagFile.createNewFile()
        }
        val sharedPreferences = EncryptedSharedPreferences.create(
            sharedPreferencesName,
            MasterKeys.getOrCreate(MasterKeys.AES256_GCM_SPEC),
            context,
            AES256_SIV,
            AES256_GCM
        )
        if (!isInitialized) {
            // TODO(Jordan-Nelson): Remove when fix for https://github.com/google/tink/issues/534 is
            // available in a stable version of androidx.security:security-crypto
            Log.i(
                "AmplifySecureStorage",
                "EncryptedSharedPreferences was initialized Successfully for scope $sharedPreferencesName. " +
                "You can safely ignore the FileNotFoundException log from AndroidKeysetManager. " +
                "This is an expected when creating a new EncryptedSharedPreferences instance and " +
                "will be removed in a future release."
            )
        }
        sharedPreferences
    }

    private val editor: SharedPreferences.Editor by lazy {
        sharedPreferences.edit()
    }

    override fun put(dataKey: String, value: String?) {
        with(editor) {
            putString(dataKey, value)
            apply()
        }
    }

    override fun get(dataKey: String): String? = sharedPreferences.getString(dataKey, null)

    override fun remove(dataKey: String) {
        with(editor) {
            remove(dataKey)
            apply()
        }
    }

    @VisibleForTesting
    open fun removeSharedPreferencesFile() {
        File("${context.filesDir.parent}/shared_prefs/$sharedPreferencesName.xml").delete()
    }

    /**
     * A file used as a flag to indicate if the SharedPreferences file has been created since the
     * most recent app install.
     */
    @VisibleForTesting
    val initializationFlagFile: File by lazy {
        File(context.noBackupFilesDir, "amplify_EncryptedSharedPreferences_$sharedPreferencesName")
    }

}
