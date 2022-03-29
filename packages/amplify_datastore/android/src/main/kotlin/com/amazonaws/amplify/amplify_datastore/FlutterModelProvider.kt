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

package com.amazonaws.amplify.amplify_datastore

import com.amplifyframework.core.model.CustomTypeSchema
import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.ModelProvider
import com.amplifyframework.core.model.ModelSchema
import com.amplifyframework.util.Immutable
import java.util.Collections

class FlutterModelProvider private constructor() : ModelProvider {
    private val modelSchemaMap: MutableMap<String, ModelSchema> = HashMap()
    private val customTypeSchemaMap: MutableMap<String, CustomTypeSchema> = HashMap()

    private lateinit var version: String

    override fun models(): Set<Class<out Model?>>? {
        return Collections.emptySet()
    }

    fun setVersion(newVersion: String) {
        version = newVersion
    }

    override fun version(): String {
        return version
    }

    override fun modelSchemas(): Map<String, ModelSchema> {
        return Immutable.of(modelSchemaMap)
    }

    override fun customTypeSchemas(): Map<String, CustomTypeSchema> {
        return Immutable.of(customTypeSchemaMap)
    }

    override fun modelNames(): Set<String> {
        return Immutable.of(modelSchemaMap.keys)
    }

    override fun customTypeNames(): Set<String> {
        return Immutable.of(customTypeSchemaMap.keys)
    }

    fun addModelSchema(modelName: String, modelSchema: ModelSchema) {
        modelSchemaMap[modelName] = modelSchema
    }

    fun addCustomTypeSchema(customTypeName: String, customTypeSchema: CustomTypeSchema) {
        customTypeSchemaMap[customTypeName] = customTypeSchema
    }

    companion object {
        private var flutterGeneratedModelInstance: FlutterModelProvider? = null
        val instance: FlutterModelProvider
            get() {
                if (flutterGeneratedModelInstance == null) {
                    flutterGeneratedModelInstance =
                        FlutterModelProvider()
                }
                return flutterGeneratedModelInstance!! // We know it's not null right now
            }
    }
}
