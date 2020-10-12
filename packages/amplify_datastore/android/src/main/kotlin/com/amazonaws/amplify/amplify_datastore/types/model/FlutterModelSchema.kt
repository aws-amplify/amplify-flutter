package com.amazonaws.amplify.amplify_datastore.types.model

import com.amplifyframework.core.model.ModelSchema

data class FlutterModelSchema(val map: Map<String, Any>) {
    val name: String = map["name"] as String
    private val pluralName: String = map["pluralName"] as String
    private val authRules: List<FlutterAuthRule>? = (map["authRules"] as List<Map<String, Any>>?)?.map {
        serializedAuthRule -> FlutterAuthRule(serializedAuthRule)
    }
    private val fields: Map<String, FlutterModelField> = (map["fields"] as Map<String, Any>).mapValues {
        entry -> FlutterModelField(entry.value as Map<String, Any>)
    }
    private val associations: Map<String, FlutterModelAssociation>? = (map["associations"] as Map<String, Any>?)?.mapValues {
        entry -> FlutterModelAssociation(entry.value as Map<String, Any>)
    }
    private val indexes: Map<String, FlutterModelIndex>? = (map["indexes"] as Map<String, Any>?)?.mapValues {
        entry -> FlutterModelIndex(entry.value as Map<String, Any>)
    }

    fun convertToNativeModelSchema() : ModelSchema {
        var builder: ModelSchema.Builder = ModelSchema.builder()
                .name(name)
                .pluralName(pluralName)
                .fields(fields.mapValues {
                    entry -> entry.value.convertToNativeModelField()
                })
        if(!authRules.isNullOrEmpty()) {
            builder = builder.authRules(authRules!!.map {
                authRule -> authRule.convertToNativeAuthRule()
            })
        }
        if(!associations.isNullOrEmpty()) {
            builder = builder.associations(associations.mapValues {
                entry -> entry.value.convertToNativeModelAssociation()
            })
        }
        if(!indexes.isNullOrEmpty()) {
            builder = builder.indexes(indexes.mapValues {
                entry -> entry.value.convertToNativeModelIndex()
            })
        }
        return builder.build()
    }
}