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
import com.amplifyframework.core.model.AuthStrategy
import com.amplifyframework.core.model.ModelField
import com.amplifyframework.core.model.ModelOperation

data class FlutterAuthRule(val map: Map<String, Any>) {
    
    private val authStrategy: AuthStrategy =
            stringToAuthStrategy(map["authStrategy"] as String)
    private val ownerField: String? = map["ownerField"] as String?
    private val identityClaim: String? = map["identityClaim"] as String?
    private val groupClaim: String? = map["groupClaim"] as String?
    private val groups: List<String>? = map["groups"] as List<String>?
    private val groupsField: String? = map["groupsField"] as String?
    private val operations: List<ModelOperation>? =
            (map["operations"] as List<String>?)?.map { string ->
                stringToModelOperation(string)
            }

    fun stringToAuthStrategy(string: String): AuthStrategy {
        return when(string){
            "OWNER" -> AuthStrategy.OWNER
            "GROUPS" -> AuthStrategy.GROUPS
            "PRIVATE" -> AuthStrategy.PRIVATE
            "PUBLIC" -> AuthStrategy.PUBLIC
            else -> throw Exception("stringToAuthStrategy - invalid string supplied: $string")
        }
    }

    fun stringToModelOperation(string: String): ModelOperation {
        return when(string){
            "CREATE" -> ModelOperation.CREATE
            "UPDATE" -> ModelOperation.UPDATE
            "DELETE" -> ModelOperation.DELETE
            "READ" -> ModelOperation.READ
            else -> throw Exception("stringToModelOperation - invalid string supplied: $string")
        }
    }

    fun convertToNativeAuthRule(): AuthRule {

        var builder: AuthRule.Builder = AuthRule.builder()
                .authStrategy( authStrategy )

        if(groups != null && groups.isNotEmpty()){
            builder.groups(groups)
        }

        if(!ownerField.isNullOrEmpty()){
            builder.ownerField(ownerField)
        }

        if(!identityClaim.isNullOrEmpty()){
            builder.identityClaim(identityClaim)
        }

        if(!groupClaim.isNullOrEmpty()){
            builder.groupClaim(groupClaim)
        }

        if(!groupsField.isNullOrEmpty()){
            builder.groupsField(groupsField)
        }

        if(!operations.isNullOrEmpty()){
            builder.operations(operations)
        }

        return builder.build()
    }

}
