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

import com.amplifyframework.core.model.temporal.Temporal
import com.amplifyframework.datastore.appsync.SerializedModel


data class FlutterSerializedModel(val serializedModel: SerializedModel) {
    private val id: String = serializedModel.id
    private val serializedData: Map<String, Any> = parseAnyMap(serializedModel.serializedData)

    private val modelName: String = serializedModel.modelName.orEmpty()

    fun toMap(): Map<String, Any> {
        return mapOf(
                "id" to id,
                "serializedData" to serializedData,
                "modelName" to modelName)
    }

    private fun parseAnyMap(serializedData: Map<String, Any>): Map<String, Any> {
        return serializedData.mapValues {
            when (val value: Any = it.value) {
                is Temporal.DateTime -> value.format()
                // TODO add for other complex objects that can be returned or be part of the codegen model
                else -> value
            }
        }
    }
}
