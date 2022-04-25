/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

package com.amazonaws.amplify.amplify_datastore.types.model

import com.amazonaws.amplify.amplify_core.cast
import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.ModelIndex
import com.amplifyframework.core.model.ModelSchema
import com.amplifyframework.core.model.SerializedModel

data class FlutterModelSchema(val map: Map<String, Any>) {
    val name: String = map["name"] as String

    private val pluralName: String? = map["pluralName"] as String?

    private val authRules: List<FlutterAuthRule> = when (val rawAuthRules = map["authRules"]) {
        is List<*> -> (rawAuthRules.cast<Map<String, Any>>()).map { FlutterAuthRule(it) }
        else -> emptyList()
    }

    private val fields: Map<String, FlutterModelField> = when (val rawFields = map["fields"]) {
        is Map<*, *> -> (rawFields.cast<String, Map<String, Any>>()).mapValues { FlutterModelField(it.value) }
        else -> emptyMap()
    }

    private val associations: Map<String, FlutterModelAssociation> =
        fields.filterKeys { key -> fields[key]?.getModelAssociation() != null }
            .mapValues { it.value.getModelAssociation()!! }

    // In amplify-android, primaryKey and indexes are categories as ModelIndex
    private val indexes: Map<String, ModelIndex> = run {
        val parsedIndexes = emptyMap<String, ModelIndex>().toMutableMap()
        val rawIndexes = map["indexes"]

        if (rawIndexes is List<*>) {
            parsedIndexes.putAll(
                (rawIndexes.cast<Map<String, Any>>()).associate {
                    (it["name"] as String?
                        ?: FlutterModelIndex.unnamedIndexKey) to FlutterModelIndex(it).convertToNativeModelIndex()
                }.toMap()
            )
        }

        val rawPrimaryKey = map["primaryKey"]

        if (rawPrimaryKey is Map<*, *>) {
            parsedIndexes.putAll(
                mapOf(
                    FlutterModelIndex.unnamedIndexKey to FlutterModelIndex(
                        rawPrimaryKey.cast()
                    ).convertToNativeModelIndex()
                )
            )
        }

        parsedIndexes
    }

    fun convertToNativeModelSchema(): ModelSchema {
        return ModelSchema.builder()
            .name(name)
            .pluralName(pluralName)
            .fields(fields.mapValues { it.value.convertToNativeModelField() })
            .indexes(indexes)
            .authRules(authRules.map { it.convertToNativeAuthRule() })
            .associations(associations.mapValues { it.value.convertToNativeModelAssociation() })
            .modelClass(SerializedModel::class.java)
            .modelType(Model.Type.USER)
            .build()
    }
}
