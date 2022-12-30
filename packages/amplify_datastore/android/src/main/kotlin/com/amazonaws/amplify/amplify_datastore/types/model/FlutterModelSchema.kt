// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.types.model

import com.amazonaws.amplify.cast
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
            // to allow amplify-android correctly interpret custom primary key
            // schema version needs to be >= 1
            .version(1)
            .build();
    }
}
