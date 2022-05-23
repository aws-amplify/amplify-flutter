/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.amazonaws.amplify.amplify_secure_storage.amplify_secure_storage_android

import android.content.Context
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin

/** AmplifySecureStorageAndroidPlugin */
class AmplifySecureStorageAndroidPlugin: FlutterPlugin, Messages.AmplifySecureStorageApi {

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

  override fun read(packageId: String, scope: String, key: String): String? {
    val repository = getOrCreateRepository(packageId, scope)
    return repository.get(key)
  }

  override fun write(packageId: String, scope: String, key: String, value: String?) {
    val repository = getOrCreateRepository(packageId, scope)
    repository.put(key, value)
  }

  override fun delete(packageId: String, scope: String, key: String) {
    val repository = getOrCreateRepository(packageId, scope)
    repository.remove(key)
  }

  private fun getOrCreateRepository(packageId: String, scope: String): EncryptedKeyValueRepository {
    val name = "$packageId.$scope"
    return if (repositories.containsKey(name)) {
      repositories[name]!!
    } else {
      val repository = EncryptedKeyValueRepository(context, name)
      repositories[name] = repository
      repository
    }
  }

}
