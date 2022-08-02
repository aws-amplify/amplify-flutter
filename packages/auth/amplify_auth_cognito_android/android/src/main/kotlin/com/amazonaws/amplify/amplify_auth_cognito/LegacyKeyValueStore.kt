/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import android.content.SharedPreferences
import android.util.Base64
import java.nio.charset.Charset
import java.security.Key
import java.security.spec.AlgorithmParameterSpec
import javax.crypto.Cipher
import javax.crypto.spec.GCMParameterSpec

private const val CIPHER_AES_GCM_NO_PADDING = "AES/GCM/NoPadding"
private const val CIPHER_AES_GCM_NO_PADDING_TAG_LENGTH_LENGTH_IN_BITS = 128
private const val SHARED_PREFERENCES_DATA_IDENTIFIER_SUFFIX = ".encrypted"
private const val SHARED_PREFERENCES_IV_SUFFIX = ".iv"
private const val SHARED_PREFERENCES_STORE_VERSION_SUFFIX = ".keyvaluestoreversion"
private const val AWS_KEY_VALUE_STORE_VERSION = 1

class LegacyKeyValueStore(
    context: Context,
    private val sharedPreferencesName: String
) {

    private val sharedPreferencesForData: SharedPreferences = context.getSharedPreferences(
        sharedPreferencesName,
        Context.MODE_PRIVATE
    )

    private var keyProvider: LegacyKeyProvider = LegacyKeyProvider()

    /**
     * Retrieve the value for the given key from the key-value store.
     *
     * @param dataKey key that identifies the value to be retrieved.
     * @return the value corresponding to the key.
     */
    @Synchronized
    operator fun get(dataKey: String?): String? {
        if (dataKey == null) {
            return null
        }

        // dataKey becomes dataKey.encrypted
        val dataKeyInPersistentStore = getDataKeyUsedInPersistentStore(dataKey)
        val encryptionKeyAlias = getEncryptionKeyAlias()

        // Based on the encryption key alias, retrieve the encryption key
        // If the encryption key cannot be retrieved, return null and
        // the consumer of get would treat it as if this data is not present
        // on the persistent store.
        val decryptionKey: Key = retrieveEncryptionKey(encryptionKeyAlias) ?: return null

        // If the key-value pair is not found in the SharedPreferences,
        // return null.
        if (!sharedPreferencesForData.contains(dataKeyInPersistentStore)) {
            return null
        }
        try {
            // If the version of data stored mismatches with the version of the store,
            // return null.
            val keyValueStoreVersion =
                sharedPreferencesForData
                    .getString(
                        dataKeyInPersistentStore + SHARED_PREFERENCES_STORE_VERSION_SUFFIX,
                        null
                    )!!.toInt()
            if (keyValueStoreVersion != AWS_KEY_VALUE_STORE_VERSION) {
                return null
            }

            // Read from the SharedPreferences and decrypt
            val encryptedData = sharedPreferencesForData.getString(dataKeyInPersistentStore, null)
            return decrypt(
                decryptionKey,
                getInitializationVector(dataKeyInPersistentStore),
                encryptedData
            )
        } catch (ex: Exception) {
            // Remove the dataKey and its associated value if there is an exception in decryption
            remove(dataKey)
            return null
        }
    }

    /**
     * Remove the key-value pair identified by the key
     * from the key-value store.
     *
     * @param dataKey identifies the key-value pair to be removed
     */
    @Synchronized
    fun remove(dataKey: String) {
        val keyUsedInPersistentStore = getDataKeyUsedInPersistentStore(dataKey)
        sharedPreferencesForData.edit()
            .remove(keyUsedInPersistentStore)
            .remove(keyUsedInPersistentStore + SHARED_PREFERENCES_IV_SUFFIX)
            .remove(keyUsedInPersistentStore + SHARED_PREFERENCES_STORE_VERSION_SUFFIX)
            .apply()
    }

    /**
     * Clears all the data stored in this key-value store.
     */
    @Synchronized
    fun clear() {
        sharedPreferencesForData.edit()
            .clear()
            .apply()

    }

    /**
     * Decrypt the data using the decryptionKey and ivSpec. After successful
     * decryption of data, Base64 decode the encrypted data and decrypt it
     * and return the raw data in string format.
     *
     * @param decryptionKey key used to encrypt the data
     * @param ivSpec spec that wraps the initialization vector used in encryption
     * @param encryptedData data to be decrypted
     * @return raw data in string format
     */
    private fun decrypt(
        decryptionKey: Key?,
        ivSpec: AlgorithmParameterSpec,
        encryptedData: String?
    ): String? {
        return try {
            val encryptedDecodedData: ByteArray = Base64.decode(encryptedData, 0)
            val cipher: Cipher = Cipher.getInstance(CIPHER_AES_GCM_NO_PADDING)
            cipher.init(
                Cipher.DECRYPT_MODE,
                decryptionKey,
                ivSpec
            )
            val decryptedData: ByteArray = cipher.doFinal(encryptedDecodedData)
            String(decryptedData, Charset.defaultCharset())
        } catch (ex: Exception) {
            null
        }
    }

    @Throws(Exception::class)
    private fun getInitializationVector(keyOfDataInSharedPreferences: String?): AlgorithmParameterSpec {
        val keyOfIV = keyOfDataInSharedPreferences + SHARED_PREFERENCES_IV_SUFFIX
        if (!sharedPreferencesForData.contains(keyOfIV)) {
            throw Exception("Initialization vector for $keyOfDataInSharedPreferences is missing from the SharedPreferences.")
        }
        val initializationVectorInString = sharedPreferencesForData.getString(keyOfIV, null)
            ?: throw Exception("Cannot read the initialization vector for $keyOfDataInSharedPreferences from SharedPreferences.")
        val base64DecodedIV: ByteArray = Base64.decode(initializationVectorInString, 0)
        if (base64DecodedIV.isEmpty()) {
            throw Exception("Cannot base64 decode the initialization vector for $keyOfDataInSharedPreferences read from SharedPreferences.")
        }
        return getAlgorithmParameterSpecForIV(base64DecodedIV)
    }

    private fun getAlgorithmParameterSpecForIV(iv: ByteArray): AlgorithmParameterSpec {
        return GCMParameterSpec(CIPHER_AES_GCM_NO_PADDING_TAG_LENGTH_LENGTH_IN_BITS, iv)
    }

    @Synchronized
    private fun retrieveEncryptionKey(encryptionKeyAlias: String): Key? {
        return try {
            keyProvider.retrieveKey(encryptionKeyAlias)
        } catch (ex: Exception) {
            // When Key cannot be retrieved, any existing encrypted data
            // cannot be decrypted successfully. Hence, deleting all the
            // existing encrypted data stored in SharedPreferences.

            // Clears the encryption keys if stored on SharedPreferences
            keyProvider.deleteKey(encryptionKeyAlias)
            null
        }
    }

    private fun getDataKeyUsedInPersistentStore(key: String?): String? {
        return if (key == null) {
            null
        } else key + SHARED_PREFERENCES_DATA_IDENTIFIER_SUFFIX
    }

    private fun getEncryptionKeyAlias(): String {
        return "$sharedPreferencesName.aesKeyStoreAlias"
    }

}