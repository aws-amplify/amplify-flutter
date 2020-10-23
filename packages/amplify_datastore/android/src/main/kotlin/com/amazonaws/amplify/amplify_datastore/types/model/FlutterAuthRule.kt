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

import com.amplifyframework.core.model.AuthRule
import com.amplifyframework.core.model.ModelField

internal enum class AuthStrategy {
    OWNER, GROUPS, PRIVATE, PUBLIC;

    companion object {
        private val VALUES = AuthStrategy.values();
        fun getByIndex(value: Int) = VALUES.first { it -> it.ordinal == value }
    }
}

internal enum class ModelOperation {
    CREATE, UPDATE, DELETE, READ;

    companion object {
        private val VALUES = ModelOperation.values();
        fun getByIndex(value: Int) = VALUES.first { it -> it.ordinal == value }
    }
}


data class FlutterAuthRule(val map: Map<String, Any>) {
    
    private val authStrategy : AuthStrategy =
            AuthStrategy.getByIndex(map["ownerField"] as Int)
    private val ownerField : String? = map["ownerField"] as String?
    private val identityClaim : String = map["identityClaim"] as String
    private val groupClaim : String = map["groupClaim"] as String
    private val groups : List<String> = map["groups"] as List<String>
    private val groupsField : String? = map["groupsField"] as String?
    private val operations : List<ModelOperation>? =
            (map["operations"] as List<Int>?)?.map { index ->
                ModelOperation.getByIndex(index)
            }

    fun convertToNativeAuthRule(): AuthRule {
        TODO("Not yet implemented")

        // TODO issue not available constructor for AuthRule and no builder
        // only accepts AuthRule annotation class
        // but we cannot instantiate that annotation class ...
    }

}
