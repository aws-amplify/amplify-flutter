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

import Amplify
@testable import AmplifyPlugins
@testable import amplify_datastore

struct SchemaData {
    static var PostSchema: ModelSchema = .init(
        name: "Post",
        pluralName: "Posts",
        attributes: [.index(fields: ["blogID"], name: "byBlog")],
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "title": ModelField(name: "title", type: .string, isRequired: true, isArray: false),
            "created": ModelField(name: "created", type: .dateTime, isRequired: false, isArray: false),
            "rating": ModelField(name: "rating", type: .int, isRequired: false, isArray: false),
            "blog": ModelField(name: "blog", type: .model(name: "Blog"), isRequired: false, isArray: false, association: ModelAssociation.belongsTo(targetName: "blogID")),
            "comments": ModelField(name: "comments", type: .collection(of: "Comment"), isRequired: false, isArray: true, association: ModelAssociation.hasMany(associatedFieldName: "post")),
            "author": ModelField(name: "author", type: .model(name: "Author"), isRequired: true, isArray: false, association: ModelAssociation.belongsTo(targetName: "authorId")),
            "createdAt": ModelField(name: "createdAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
            "updatedAt": ModelField(name: "updatedAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
        ],
        primaryKeyFieldKeys: ["id"]
    )

    static var CommentSchema: ModelSchema = .init(
        name: "Comment",
        pluralName: "Comments",
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "post": ModelField(name: "post", type: .model(name: "Post"), isRequired: false, isArray: true, association: ModelAssociation.belongsTo(targetName: "postID")),
            "content": ModelField(name: "content", type: .string, isRequired: true, isArray: false),
            "createdAt": ModelField(name: "createdAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
            "updatedAt": ModelField(name: "updatedAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
        ],
        primaryKeyFieldKeys: ["id"]
    )

    static var BlogSchema: ModelSchema = .init(
        name: "Blog",
        pluralName: "Blogs",
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "name": ModelField(name: "name", type: .string, isRequired: true, isArray: false),
            "posts": ModelField(name: "posts", type: .collection(of: "Post"), isRequired: false, isArray: true, association: ModelAssociation.hasMany(associatedFieldName: "blog")),
            "createdAt": ModelField(name: "createdAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
            "updatedAt": ModelField(name: "updatedAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
        ],
        primaryKeyFieldKeys: ["id"]
    )

    static var PostAuthComplexSchema: ModelSchema = .init(
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
            "createdAt": ModelField(name: "createdAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
            "updatedAt": ModelField(name: "updatedAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
        ],
        primaryKeyFieldKeys: ["id"]
    )

    static var PostAuthComplexWithProviderUserPoolsSchema: ModelSchema = .init(
        name: "PostAuthComplexWithProviderUserPools",
        pluralName: "PostAuthComplexWithProviderUserPools",
        authRules: [
            AuthRule(
                allow: .owner,
                ownerField: "owner",
                identityClaim: "cognito:username",
                provider: AuthRuleProvider.userPools,
                operations: [
                    .read, .delete, .update, .create
                ]
            )
        ],
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "owner": ModelField(name: "owner", type: .string, isRequired: false, isArray: false),
            "createdAt": ModelField(name: "createdAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
            "updatedAt": ModelField(name: "updatedAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
        ],
        primaryKeyFieldKeys: ["id"]
    )

    static var PostAuthComplexWithProviderApiKeySchema: ModelSchema = .init(
        name: "PostAuthComplexWithProviderApiKey",
        pluralName: "PostAuthComplexWithProviderApiKeys",
        authRules: [
            AuthRule(
                allow: .public,
                provider: AuthRuleProvider.apiKey,
                operations: [
                    .read, .delete, .update, .create
                ]
            )
        ],
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "createdAt": ModelField(name: "createdAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
            "updatedAt": ModelField(name: "updatedAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
        ],
        primaryKeyFieldKeys: ["id"]
    )

    static var AllTypeModelSchema: ModelSchema = .init(
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
            "createdAt": ModelField(name: "createdAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
            "updatedAt": ModelField(name: "updatedAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
        ],
        primaryKeyFieldKeys: ["id"]
    )

    static var AuthorModelSchema: ModelSchema = .init(
        name: "Author",
        pluralName: "Authors",
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "name": ModelField(name: "name", type: .string, isRequired: true, isArray: false),
            "department": ModelField(name: "department", type: .model(name: "Department"), isRequired: true, isArray: false, association: ModelAssociation.belongsTo(targetName: "departmentId")),
            "createdAt": ModelField(name: "createdAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
            "updatedAt": ModelField(name: "updatedAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
        ],
        primaryKeyFieldKeys: ["id"]
    )

    static var DepartmentSchema: ModelSchema = .init(
        name: "Department",
        pluralName: "Departments",
        fields: [
            "id": ModelField(name: "id", type: .string, isRequired: true, isArray: false),
            "name": ModelField(name: "name", type: .string, isRequired: true, isArray: false),
            "description": ModelField(name: "description", type: .string, isRequired: true, isArray: false),
            "createdAt": ModelField(name: "createdAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
            "updatedAt": ModelField(name: "updatedAt", type: .dateTime, isRequired: false, isReadOnly: true, isArray: false),
        ],
        primaryKeyFieldKeys: ["id"]
    )

    static var AddressSchema: ModelSchema = .init(
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

    static var PhoneSchema: ModelSchema = .init(
        name: "Phone",
        pluralName: "Phones",
        fields: [
            "country": ModelField(name: "country", type: .string, isRequired: true, isArray: false),
            "area": ModelField(name: "area", type: .string, isRequired: true, isArray: false),
            "number": ModelField(name: "number", type: .string, isRequired: true, isArray: false),
        ]
    )

    static var ContactSchema: ModelSchema = .init(
        name: "Contact",
        pluralName: "Contacts",
        fields: [
            "email": ModelField(name: "email", type: .string, isRequired: true, isArray: false),
            "phone": ModelField(name: "phone", type: .embedded(type: JSONValue.self, schema: SchemaData.PhoneSchema), isRequired: true),
            "mailingAddresses": ModelField(
                name: "mailingAddresses",
                type: .embeddedCollection(of: JSONValue.self, schema: SchemaData.AddressSchema),
                isArray: true
            ),
        ]
    )

    static var CustomBSchema: ModelSchema = .init(
        name: "CustomB",
        pluralName: "CustomBs",
        fields: [
            "field": ModelField(name: "field", type: .string, isRequired: true, isArray: false),
        ]
    )

    static var CustomASchema: ModelSchema = .init(
        name: "CustomA",
        pluralName: "CustomAs",
        fields: [
            "field1": ModelField(name: "field1", type: .string, isRequired: true, isArray: false),
            "field2": ModelField(name: "field2", type: .embedded(type: JSONValue.self, schema: SchemaData.CustomBSchema), isRequired: true),
        ]
    )

    static var PersonSchema: ModelSchema = .init(
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
            ),
            "anotherCustomTypeTree": ModelField(name: "anotherCustomTypeTree", type: .embedded(type: JSONValue.self, schema: SchemaData.CustomASchema)),
        ],
        primaryKeyFieldKeys: ["id"]
    )

    static var InventorySchema: ModelSchema = .init(
        name: "Inventory",
        pluralName: "Inventories",
        attributes: [
            .index(fields: ["productID", "name", "warehouseID", "region"], name: nil)
        ],
        fields: [
            "productID": ModelField(name: "productID", type: .string, isRequired: true, isArray: false),
            "name": ModelField(name: "name", type: .string, isRequired: true, isArray: false),
            "warehouseID": ModelField(name: "warehouseID", type: .string, isRequired: true, isArray: false),
            "region": ModelField(name: "region", type: .string, isRequired: true, isArray: false),
        ],
        primaryKeyFieldKeys: ["productID", "name", "warehouseID", "region"]
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
            PersonSchema.name: PersonSchema,
            InventorySchema.name: InventorySchema,
        ]
    }

    static var customTypeSchemas: [String: ModelSchema] {
        return [
            AddressSchema.name: AddressSchema,
            PhoneSchema.name: PhoneSchema,
            ContactSchema.name: ContactSchema,
            CustomBSchema.name: CustomBSchema,
            CustomASchema.name: CustomASchema
        ]
    }

    static var modelSchemaRegistry: FlutterSchemaRegistry {
        let modelSchemaRegistry = FlutterSchemaRegistry()

        for (key, value) in SchemaData.modelSchemas {
            modelSchemaRegistry.addModelSchema(modelName: key, modelSchema: value)
        }

        modelSchemaRegistry.registerModels(registry: ModelRegistry.self)

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
