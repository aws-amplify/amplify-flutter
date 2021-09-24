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

    static var PostSchema: ModelSchema = ModelSchema(
        name: "Post",
        pluralName: "Posts",
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "title": ModelField(name: "title", type: .string, isRequired: true, isArray: false),
            "created": ModelField(name: "created", type: .dateTime, isRequired: false, isArray: false),
            "rating": ModelField(name: "rating", type: .int, isRequired: false, isArray: false),
            "blog": ModelField(name: "blog", type: .model(name: "Blog"), isRequired: false, isArray: false, association: ModelAssociation.belongsTo(targetName: "blogID")),
            "comments": ModelField(name: "comments", type: .collection(of: "Comment"), isRequired: false, isArray: true, association: ModelAssociation.hasMany(associatedFieldName: "post")),
            "author": ModelField(name: "author", type: .model(name: "Author"), isRequired: true, isArray: false, association: ModelAssociation.belongsTo(targetName: "authorId"))
        ]
    )

    static var CommentSchema: ModelSchema = ModelSchema(
        name: "Comment",
        pluralName: "Comments",
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "post": ModelField(name: "post", type: .model(name: "Post"), isRequired: false, isArray: true, association: ModelAssociation.belongsTo(targetName: "postID")),
            "content": ModelField(name: "content", type: .string, isRequired: true, isArray: false)
        ]
    )


    static var BlogSchema: ModelSchema = ModelSchema(
        name: "Blog",
        pluralName: "Blogs",
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "name": ModelField(name: "name", type: .string, isRequired: true, isArray: false),
            "posts": ModelField(name: "posts", type: .collection(of: "Post"), isRequired: false, isArray: true, association: ModelAssociation.hasMany(associatedFieldName: "blog")
            )
        ]
    )

    static var PostAuthComplexSchema: ModelSchema = ModelSchema(
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
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "title": ModelField(name: "title", type: .string, isRequired: true, isArray: false),
            "owner": ModelField(name: "owner", type: .string, isRequired: false, isArray: false),
        ]
    )

    static var AllTypeModelSchema: ModelSchema = ModelSchema(
        name: "AllTypeModel",
        pluralName: "AllTypeModels",
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "stringType": ModelField(name: "stringType", type: .string, isRequired: true, isArray: false),
            "intType": ModelField(name: "intType", type: .int, isRequired: true, isArray: false),
            "floatType": ModelField(name: "floatType", type: .double, isRequired: true, isArray: false),
            "boolType": ModelField(name: "boolType", type: .bool, isRequired: true, isArray: false),
            "dateType": ModelField(name: "dateType", type: .date, isRequired: true, isArray: false),
            "dateTimeType": ModelField(name: "dateTimeType", type: .dateTime, isRequired: true, isArray: false),
            "timeType": ModelField(name: "timeType", type: .time, isRequired: true, isArray: false),
            "timestampType": ModelField(name: "timestampType", type: .timestamp, isRequired: true, isArray: false),
            "enumType": ModelField(name: "enumType", type: .string, isRequired: true, isArray: false),
        ]
    )

    static var AuthorModelSchema: ModelSchema = ModelSchema(
        name: "Author",
        pluralName: "Authors",
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "name": ModelField(name: "name", type: .string, isRequired: true, isArray: false),
            "department": ModelField(name: "department", type: .model(name: "Department"), isRequired: true, isArray: false, association: ModelAssociation.belongsTo(targetName: "departmentId")),
        ]
    )

    static var DepartmentSchema: ModelSchema = ModelSchema(
        name: "Department",
        pluralName: "Departments",
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "name": ModelField(name: "name", type: .string, isRequired: true, isArray: false),
            "description": ModelField(name: "description", type: .string, isRequired: true, isArray: false),
        ]
    )

    static var AddressSchema: ModelSchema = ModelSchema(
        name: "Address",
        pluralName: "Addresses",
        fields: [
            "line1": ModelField(name: "line1", type: .string, isRequired: true, isArray: false),
            "line2": ModelField(name: "line2", type: .string, isRequired: false, isArray: false),
            "city": ModelField(name: "city", type: .string, isRequired: true, isArray: false),
            "state": ModelField(name: "state", type: .string, isRequired: true, isArray: false),
            "postalCode": ModelField(name: "postalCode", type: .string, isRequired: true, isArray: false),
        ]
    )

    static var PhoneSchema: ModelSchema = ModelSchema(
        name: "Phone",
        pluralName: "Phones",
        fields: [
            "country": ModelField(name: "country", type: .string, isRequired: true, isArray: false),
            "area": ModelField(name: "area", type: .string, isRequired: true, isArray: false),
            "number": ModelField(name: "number", type: .string, isRequired: true, isArray: false),
        ]
    )

    static var ContactSchema: ModelSchema = ModelSchema(
        name: "Contact",
        pluralName: "Contacts",
        fields: [
            "email": ModelField(name: "email", type: .string, isRequired: true, isArray: false),
            "phone": ModelField(name: "phone", type: .embedded(type: JSONValue.self, schema: SchemaData.PhoneSchema), isRequired: true),
            "mailingAddresses": ModelField(
                name: "mailingAddresses",
                type: .embeddedCollection(of: JSONValue.self, schema: SchemaData.AddressSchema),
                isArray: true
            )
        ]
    )

    static var PersonSchema: ModelSchema = ModelSchema(
        name: "Person",
        pluralName: "People",
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "name": ModelField(name: "name", type: .string, isRequired: true, isArray: false),
            "contact": ModelField(name: "contact", type: .embedded(type: JSONValue.self, schema: SchemaData.ContactSchema)),
            "propertiesAddresses": ModelField(
                name: "propertiesAddresses",
                type: .embeddedCollection(of: JSONValue.self, schema: SchemaData.AddressSchema),
                isArray: true
            )
        ]
    )

    static var modelSchemas: [String: ModelSchema] {
        return [
            PostSchema.name: PostSchema,
            CommentSchema.name: CommentSchema,
            BlogSchema.name: BlogSchema,
            PostAuthComplexSchema.name: PostAuthComplexSchema,
            AllTypeModelSchema.name: AllTypeModelSchema,
            AuthorModelSchema.name: AuthorModelSchema,
            DepartmentSchema.name: DepartmentSchema,
            PersonSchema.name: PersonSchema
        ]
    }

    static var customTypeSchemas: [String: ModelSchema] {
        return [
            AddressSchema.name: AddressSchema,
            PhoneSchema.name: PhoneSchema,
            ContactSchema.name: ContactSchema
        ]
    }

    static var modelSchemaRegistry: FlutterSchemaRegistry {
        let modelSchemaRegistry = FlutterSchemaRegistry()

        for (key, value) in SchemaData.modelSchemas {
            modelSchemaRegistry.addModelSchema(modelName: key, modelSchema: value)
        }

        return modelSchemaRegistry
    }

    static var customTypeSchemaRegistry: FlutterSchemaRegistry {
        let customTypeSchemaRegistry = FlutterSchemaRegistry()

        for (key, customTypeSchema) in SchemaData.customTypeSchemas {
            customTypeSchemaRegistry.addModelSchema(modelName: key, modelSchema: customTypeSchema)
        }

        return customTypeSchemaRegistry
    }
}
