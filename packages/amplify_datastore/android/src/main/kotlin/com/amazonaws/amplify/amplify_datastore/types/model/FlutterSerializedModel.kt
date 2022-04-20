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

package com.amazonaws.amplify.amplify_datastore.types.model

import com.amazonaws.amplify.amplify_core.cast
import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.ModelSchema
import com.amplifyframework.core.model.SerializedCustomType
import com.amplifyframework.core.model.SerializedModel
import com.amplifyframework.core.model.temporal.Temporal
import java.lang.Exception

data class FlutterSerializedModel(val serializedModel: SerializedModel) {
    private val serializedData: Map<String, Any?> = parseSerializedDataMap(
        serializedModel.serializedData,
        serializedModel.modelSchema!!
    )

    // ignored fields
    private val id: String = serializedModel.id
    private val modelName: String = parseModelName(serializedModel.modelName) // ModelSchema -> SerializedModel should always have a name

    fun toMap(): Map<String, Any> {

        val cleanedSerializedData: Map<String, Any?> = serializedData.filterValues { it != null }

        return mapOf(
            "id" to id,
            "serializedData" to cleanedSerializedData,
            "modelName" to modelName
        )
    }

    private fun parseModelName(modelName: String?): String {
        return if (modelName.isNullOrEmpty()) ""
        else modelName
    }

    private fun parseSerializedDataMap(serializedData: Map<String, Any>, modelSchema: ModelSchema): Map<String, Any?> {
        if (serializedData.isEmpty()) throw Exception(
            "FlutterSerializedModel - no serializedData for ${modelSchema.name}"
        )

        return serializedData.mapValues {
            val field = modelSchema.fields[it.key]
            if (field == null) {
                // At some occasions the SerializeData returned from amplify-android contains meta fields
                // e.g. _version, _delete which are not a model filed
                // for this case we assign a null value to these meta fields as default
                null
            } else {
                when (val value: Any = it.value) {
                    is Temporal.DateTime -> value.format()
                    is Temporal.Date -> value.format()
                    is Temporal.Time -> value.format()
                    is Model -> FlutterSerializedModel(value as SerializedModel).toMap()
                    is Temporal.Timestamp -> value.secondsSinceEpoch
                    is SerializedCustomType -> FlutterSerializedCustomType(value).toMap()
                    is List<*> -> {
                        if (field.isCustomType) {
                            // for a list like field if its type is CustomType
                            // Then the item type must be CustomType
                            (value.cast<SerializedCustomType>()).map { item ->
                                FlutterSerializedCustomType(item).toMap()
                            }
                        }
                        // If collection is not a collection of CustomType
                        // return the collection directly as
                        // 1. currently hasMany field won't be populated
                        // 2. collection of primitive types could be returned as is e.g. ["1", "2"]
                        else {
                            value.map { item ->
                                FlutterFieldUtil.convertValueByFieldType(field.targetType, item)
                            }
                        }
                    }
                    // TODO add for other complex objects that can be returned or be part of the codegen model
                    else -> FlutterFieldUtil.convertValueByFieldType(field.targetType, value)
                }
            }
        }
    }
}
