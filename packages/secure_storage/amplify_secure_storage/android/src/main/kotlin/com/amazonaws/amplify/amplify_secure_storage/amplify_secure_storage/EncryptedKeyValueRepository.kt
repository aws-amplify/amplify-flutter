// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_secure_storage.amplify_secure_storage

import android.content.Context
import android.content.Context.MODE_PRIVATE
import android.content.SharedPreferences
import androidx.annotation.VisibleForTesting
import androidx.security.crypto.EncryptedSharedPreferences
import androidx.security.crypto.EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV
import androidx.security.crypto.EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM
import androidx.security.crypto.MasterKeys
import java.io.File

class EncryptedKeyValueRepository(
    private val context: Context,
    private val sharedPreferencesName: String,
) : KeyValueRepository {

    private val sharedPreferences: SharedPreferences by lazy {
        // Attempt to remove previous SharedPreferences file if not initialized.
        if (!initializationFlagFile.exists()) {
            context.getSharedPreferences(sharedPreferencesName, MODE_PRIVATE).edit().clear().commit()
            initializationFlagFile.createNewFile()
        }
        EncryptedSharedPreferences.create(
            sharedPreferencesName,
            MasterKeys.getOrCreate(MasterKeys.AES256_GCM_SPEC),
            context,
            AES256_SIV,
            AES256_GCM
        )
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

    /**
     * A file used as a flag to indicate if the SharedPreferences file has been created since the
     * most recent app install.
     */
    @VisibleForTesting
    val initializationFlagFile: File by lazy {
        File(context.noBackupFilesDir, "amplify_EncryptedSharedPreferences_$sharedPreferencesName")
    }

}
