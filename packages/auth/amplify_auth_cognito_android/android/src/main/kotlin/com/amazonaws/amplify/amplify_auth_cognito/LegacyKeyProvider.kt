// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_auth_cognito

import android.security.keystore.KeyGenParameterSpec
import android.security.keystore.KeyProperties
import java.security.Key;
import java.security.KeyStore;
import javax.crypto.KeyGenerator;

private const val AES_KEY_ALGORITHM = "AES"
private const val CIPHER_AES_GCM_NO_PADDING_KEY_LENGTH_IN_BITS = 256
private const val ANDROID_KEY_STORE_NAME = "AndroidKeyStore"

/**
 * Provider generates a AES 256-bit key using AndroidKeyStore.
 *
 * Based on KeyProvider23 from the Android SDK.
 * Reference: https://github.com/aws-amplify/aws-sdk-android/blob/8f6f2281acf40297a078219a0fd97ae8cbc079c1/aws-android-sdk-core/src/main/java/com/amazonaws/internal/keyvaluestore/KeyProvider23.java
 */
class LegacyKeyProvider {

    @Synchronized
    fun retrieveKey(keyAlias: String): Key? {
        try {
            val keyStore: KeyStore = KeyStore.getInstance(ANDROID_KEY_STORE_NAME)
            keyStore.load(null)

            // If the keystore does not have keys for this alias, generate a new
            // asymmetric AES/GCM/NoPadding key pair.
            if (keyStore.containsAlias(keyAlias)) {
                return keyStore.getKey(keyAlias, null)
            } else {
                throw Exception(
                    ANDROID_KEY_STORE_NAME + " does not " +
                            "contain the keyAlias: " + keyAlias
                )
            }
        } catch (ex: Exception) {
            throw Exception(
                ("Error occurred while accessing " + ANDROID_KEY_STORE_NAME +
                        " to retrieve the key for keyAlias: " + keyAlias), ex
            )
        }
    }

    @Synchronized
    fun generateKey(keyAlias: String): Key? {
        try {
            val keyStore: KeyStore = KeyStore.getInstance(ANDROID_KEY_STORE_NAME)
            keyStore.load(null)

            // If the keystore does not have keys for this alias, generate a new
            // asymmetric AES/GCM/NoPadding key pair.
            if (!keyStore.containsAlias(keyAlias)) {
                val generator: KeyGenerator = KeyGenerator.getInstance(
                    AES_KEY_ALGORITHM,
                    ANDROID_KEY_STORE_NAME
                )

                // setRandomizedEncryptionRequired(false) because Randomized Encryption
                // does not work consistently in API levels 23-28.
                generator.init(
                    KeyGenParameterSpec.Builder(
                        keyAlias,
                        KeyProperties.PURPOSE_ENCRYPT or KeyProperties.PURPOSE_DECRYPT
                    )
                        .setBlockModes(KeyProperties.BLOCK_MODE_GCM)
                        .setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE)
                        .setKeySize(CIPHER_AES_GCM_NO_PADDING_KEY_LENGTH_IN_BITS)
                        .setRandomizedEncryptionRequired(false)
                        .build()
                )
                return generator.generateKey()
            } else {
                throw Exception(
                    ("Key already exists for the keyAlias: " +
                            keyAlias + " in " + ANDROID_KEY_STORE_NAME)
                )
            }
        } catch (ex: Exception) {
            throw Exception(
                ("Cannot generate a key for alias: " +
                        keyAlias + " in " + ANDROID_KEY_STORE_NAME), ex
            )
        }
    }

    @Synchronized
    fun deleteKey(keyAlias: String) {
        try {
            val keyStore: KeyStore = KeyStore.getInstance(ANDROID_KEY_STORE_NAME)
            keyStore.load(null)
            keyStore.deleteEntry(keyAlias)
        } catch (ex: Exception) {
            // do nothing
        }
    }

}
