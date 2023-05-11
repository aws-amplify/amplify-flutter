// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_secure_storage

import android.content.Context
import com.amazonaws.amplify.amplify_secure_storage.pigeons.AmplifySecureStoragePigeon

import io.flutter.embedding.engine.plugins.FlutterPlugin

/** AmplifySecureStoragePlugin */
class AmplifySecureStoragePlugin: FlutterPlugin, AmplifySecureStoragePigeon {

  private lateinit var context: Context

  /**
   * A map of repositories, with the key being the name of the repository.
   */
  private val repositories = mutableMapOf<String, EncryptedKeyValueRepository>()

  override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    context = binding.applicationContext
    AmplifySecureStoragePigeon.setUp(binding.binaryMessenger, this)
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    AmplifySecureStoragePigeon.setUp(binding.binaryMessenger, null)
  }

  override fun read(namespace: String, key: String, callback: (Result<String?>) -> Unit) {
    try {
      val repository = getOrCreateRepository(namespace)
      val value = repository.get(key)
      callback(Result.success(value))
    } catch (e: Exception) {
      callback(Result.failure(e))
    }
  }

  override fun write(
    namespace: String,
    key: String,
    value: String?,
    callback: (Result<Unit>) -> Unit
  ) {
    try {
      val repository = getOrCreateRepository(namespace)
      repository.put(key, value)
      callback(Result.success(Unit))
    } catch (e: Exception) {
      callback(Result.failure(e))
    }
  }

  override fun delete(namespace: String, key: String, callback: (Result<Unit>) -> Unit) {
    try {
      val repository = getOrCreateRepository(namespace)
      repository.remove(key)
      callback(Result.success(Unit))
    } catch (e: Exception) {
      callback(Result.failure(e))
    }
  }

  override fun removeAll(namespace: String, callback: (Result<Unit>) -> Unit) {
    try {
      val repository = getOrCreateRepository(namespace)
      repository.removeAll()
      callback(Result.success(Unit))
    } catch (e: Exception) {
      callback(Result.failure(e))
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
