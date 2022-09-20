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

import com.amplifyframework.core.model.ModelAssociation

data class FlutterModelAssociation(val map: Map<String, Any>) {

    private val associationType: String = map["associationType"] as String
    private val targetName: String? = map["targetName"] as String?
    private val associatedName: String? = map["associatedName"] as String?
    private val associatedType: String? = map["associatedType"] as String?

    fun convertToNativeModelAssociation(): ModelAssociation {
        val builder: ModelAssociation.Builder = ModelAssociation.builder()
            .name(associationType)

        if (!targetName.isNullOrEmpty()) {
            builder.targetName(targetName)
        }
        if (!associatedName.isNullOrEmpty()) {
            builder.associatedName(associatedName)
        }
        if (!associatedType.isNullOrEmpty()) {
            builder.associatedType(associatedType)
        }

        return builder.build()
    }
}
