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

import Amplify
@testable import AmplifyPlugins
@testable import amplify_datastore

struct SchemaData {
    
    static var PostSchema : ModelSchema = ModelSchema(
        name: "Post",
        pluralName: "Posts",
        fields: [
        "id" : ModelField(name: "id", type: .string, isRequired: true, isArray: false),
        "title" : ModelField(name: "title", type: .string, isRequired: true, isArray: false),
        "created" : ModelField(name: "created", type: .dateTime, isRequired: false, isArray: false),
        "rating" : ModelField(name: "rating", type: .int, isRequired: false, isArray: false),
        "blog" : ModelField(name: "blog", type: .model(name: "Blog"), isRequired: false, isArray: false, association: ModelAssociation.belongsTo(targetName: "blogID")),
        "comments" : ModelField(name: "comments", type: .collection(of: "Comment"), isRequired: false, isArray: true, association: ModelAssociation.hasMany(associatedFieldName: "post") )
        ]
    )
    
    static var CommentSchema : ModelSchema = ModelSchema(
        name: "Comment",
        pluralName: "Comments",
        fields: [
            "id" : ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "post" : ModelField(name: "post", type: .model(name: "Post"), isRequired: false, isArray: true, association: ModelAssociation.belongsTo(targetName: "postID")),
            "content" : ModelField(name: "content", type: .string, isRequired: true, isArray: false)
        ]
    )

    
    static var BlogSchema : ModelSchema = ModelSchema(
            name: "Blog",
            pluralName: "Blogs",
            fields: [
                "id" : ModelField(name: "id", type: .string, isRequired: true, isArray: false),
                "name" : ModelField(name: "name", type: .string, isRequired: true, isArray: false),
                "posts" : ModelField(name: "posts", type: .collection(of: "Post"), isRequired: false, isArray: true, association: ModelAssociation.hasMany(associatedFieldName: "blog")
                )
            ]
        )
    
    static var PostAuthComplexSchema : ModelSchema = ModelSchema(
        name: "PostAuthComplex",
        pluralName: "PostAuthComplexes",
        authRules: [
            AuthRule(
                allow: .owner,
                ownerField: "owner",
                identityClaim: "cognito:username",
                operations: [
                    .read, .delete, .update, .create
                ]
            )
        ],
        fields: [
            "id" : ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "title" : ModelField(name: "title", type: .string, isRequired: true, isArray: false),
            "owner" : ModelField(name: "owner", type: .string, isRequired: false, isArray: false),
        ]
    )
    
    static var AllTypeModelSchema : ModelSchema = ModelSchema(
        name: "AllTypeModel",
        pluralName: "AllTypeModels",
        fields: [
            "id" : ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "stringType" : ModelField(name: "stringType", type: .string, isRequired: true, isArray: false),
            "intType" : ModelField(name: "intType", type: .int, isRequired: true, isArray: false),
            "floatType" : ModelField(name: "floatType", type: .double, isRequired: true, isArray: false),
            "boolType" : ModelField(name: "boolType", type: .bool, isRequired: true, isArray: false),
            "dateType" : ModelField(name: "dateType", type: .date, isRequired: true, isArray: false),
            "dateTimeType" : ModelField(name: "dateTimeType", type: .dateTime, isRequired: true, isArray: false),
            "timeType" : ModelField(name: "timeType", type: .time, isRequired: true, isArray: false),
            "timestampType" : ModelField(name: "timestampType", type: .timestamp, isRequired: true, isArray: false),
            "enumType" : ModelField(name: "enumType", type: .string, isRequired: true, isArray: false),
        ]
    )

}
