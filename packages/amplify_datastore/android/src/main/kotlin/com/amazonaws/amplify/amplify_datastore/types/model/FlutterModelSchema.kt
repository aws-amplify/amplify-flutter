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

import com.amplifyframework.core.model.ModelSchema
import com.amplifyframework.core.model.SerializedModel

data class FlutterModelSchema(val map: Map<String, Any>) {
    val name: String = map["name"] as String
    private val pluralName: String? = map["pluralName"] as String?
    private val authRules: List<FlutterAuthRule>? =
        (map["authRules"] as List<Map<String, Any>>?)?.map { FlutterAuthRule(it) }
    private val fields: Map<String, FlutterModelField> =
        (map["fields"] as Map<String, Any>).mapValues { FlutterModelField(it.value as Map<String, Any>) }
    private val associations: Map<String, FlutterModelAssociation> =
        fields.filterKeys { key -> fields[key]?.getModelAssociation() != null }
            .mapValues { it.value.getModelAssociation()!! }

    fun convertToNativeModelSchema(): ModelSchema {
        var builder: ModelSchema.Builder = ModelSchema.builder()
            .name(name)
            .pluralName(pluralName)
            .fields(fields.mapValues { it.value.convertToNativeModelField() })

        if (!authRules.isNullOrEmpty()) {
            builder = builder.authRules(authRules.map { it.convertToNativeAuthRule() })
        }
        if (!associations.isNullOrEmpty()) {
            builder = builder.associations(
                associations.mapValues { it.value.convertToNativeModelAssociation() }
            )
        }
        builder.modelClass(SerializedModel::class.java)
        return builder.build()
    }
}
