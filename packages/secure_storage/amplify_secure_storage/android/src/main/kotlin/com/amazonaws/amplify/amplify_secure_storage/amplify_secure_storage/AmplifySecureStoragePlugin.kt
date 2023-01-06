// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_secure_storage.amplify_secure_storage

import android.content.Context
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin

/** AmplifySecureStoragePlugin */
class AmplifySecureStoragePlugin: FlutterPlugin, Messages.AmplifySecureStorageApi {

  private lateinit var context: Context

  /**
   * A map of repositories, with the key being the name of the repository.
   */
  private val repositories = mutableMapOf<String, EncryptedKeyValueRepository>()

  override fun onAttachedToEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    context = binding.applicationContext
    Messages.AmplifySecureStorageApi.setup(binding.binaryMessenger, this)
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    Messages.AmplifySecureStorageApi.setup(binding.binaryMessenger, null)
  }

  override fun read(namespace: String, key: String, result: Messages.Result<String>) {
    try {
      val repository = getOrCreateRepository(namespace)
      result.success(repository.get(key))
    } catch (e: Exception) {
      result.error(e)
    }
  }

  override fun write(
    namespace: String,
    key: String,
    value: String?,
    result: Messages.Result<Void>
  ) {
    try {
      val repository = getOrCreateRepository(namespace)
      repository.put(key, value)
      result.success(null)
    } catch (e: Exception) {
      result.error(e)
    }
  }

  override fun delete(namespace: String, key: String, result: Messages.Result<Void>) {
    try {
      val repository = getOrCreateRepository(namespace)
      repository.remove(key)
      result.success(null)
    } catch (e: Exception) {
      result.error(e)
    }
  }

  private fun getOrCreateRepository(namespace: String): EncryptedKeyValueRepository {
    return if (repositories.containsKey(namespace)) {
      repositories[namespace]!!
    } else {
      val repository = EncryptedKeyValueRepository(context, namespace)
      repositories[namespace] = repository
      repository
    }
  }

}
