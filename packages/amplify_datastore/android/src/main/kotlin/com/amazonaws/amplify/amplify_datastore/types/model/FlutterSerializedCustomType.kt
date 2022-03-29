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

import com.amplifyframework.core.model.CustomTypeSchema
import com.amplifyframework.core.model.SerializedCustomType
import com.amplifyframework.core.model.temporal.Temporal
import java.lang.Exception

data class FlutterSerializedCustomType(val serializedCustomType: SerializedCustomType) {
    private val serializedData: Map<String, Any?> = parseSerializedDataMap(
        serializedCustomType.serializedData,
        serializedCustomType.customTypeSchema!!
    )
    private val customTypeName: String = parseCustomTypeName(serializedCustomType.customTypeName)

    fun toMap(): Map<String, Any> {
        return mapOf(
            "serializedData" to serializedData,
            "customTypeName" to customTypeName
        )
    }

    private fun parseCustomTypeName(customTypeName: String?): String = customTypeName ?: ""

    private fun parseSerializedDataMap(
        serializedData: Map<String, Any>,
        customTypeSchema: CustomTypeSchema
    ): Map<String, Any?> {
        if (serializedData.isEmpty()) throw Exception(
            "FlutterSerializedCustomType - no serializedData for ${customTypeSchema.name}"
        )

        return serializedData.mapValues {
            val field = customTypeSchema.fields[it.key]!!
            when (val value: Any = it.value) {
                is Temporal.DateTime -> value.format()
                is Temporal.Date -> value.format()
                is Temporal.Time -> value.format()
                is Temporal.Timestamp -> value.secondsSinceEpoch
                is SerializedCustomType -> FlutterSerializedCustomType(value).toMap()
                is List<*> -> {
                    val field = customTypeSchema.fields[it.key]!!
                    if (field.isCustomType) {
                        (value as List<SerializedCustomType>).map { item ->
                            FlutterSerializedCustomType(item).toMap()
                        }
                    } else {
                        value.map { item ->
                            FlutterFieldUtil.convertValueByFieldType(field.targetType, item)
                        }
                    }
                }
                else -> FlutterFieldUtil.convertValueByFieldType(field.targetType, value)
            }
        }
    }
}
