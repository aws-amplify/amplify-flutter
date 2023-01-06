// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import XCTest
import Amplify
@testable import AmplifyPlugins
@testable import amplify_datastore

class AmplifyModelSchemaUnitTests: XCTestCase {
    let modelSchemaMap: [String: Any] = try! readJsonMap(filePath: "model_schema_maps")
    let customTypeSchemaMap: [String: Any] = try! readJsonMap(filePath: "custom_type_schema_maps")
    let customTypeSchemasRegistry = FlutterSchemaRegistry()

    override func setUpWithError() throws {
        // register CustomType Schemas following dependencies order
        // This also tests the deserialization functionality for CustomType schemas
        ["AddressSchema", "PhoneSchema", "ContactSchema", "CustomBSchema", "CustomASchema"].forEach { schemaName in
            do {
                let serializedCustomType = customTypeSchemaMap[schemaName] as! [String: Any]
                customTypeSchemasRegistry.addModelSchema(
                    modelName: serializedCustomType["name"] as! String,
                    modelSchema: try FlutterModelSchema(
                        serializedData: serializedCustomType,
                        isModelType: false
                    ).convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)
                )
            } catch {
                print(error)
            }
        }
    }

    func test_schema_blog_with_hasMany() throws {
        let flutterBlogSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["BlogSchema"] as! [String: Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.BlogSchema, flutterBlogSchema)
    }

    func test_schema_comment_with_belongsTo() throws {
        let flutterBlogSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["CommentSchema"] as! [String: Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.CommentSchema, flutterBlogSchema)
    }

    func test_schema_post_with_datetime_int_hasMany_belongsTo() throws{
        let flutterBlogSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["PostSchema"] as! [String: Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.PostSchema, flutterBlogSchema)
    }

    func test_schema_postAuthComplex_with_authRules() throws{
        let postAuthComplexSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["PostAuthComplexSchema"] as! [String: Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.PostAuthComplexSchema, postAuthComplexSchema)
    }

    func test_schema_postAuthComplex_with_authRules_provider_userpools() throws{
        let postAuthComplexSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["PostAuthComplexWithProviderUserPoolsSchema"] as! [String: Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.PostAuthComplexWithProviderUserPoolsSchema, postAuthComplexSchema)
    }

    func test_schema_postAuthComplex_with_authRules_provider_apikey() throws{
        let postAuthComplexSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["PostAuthComplexWithProviderApiKeySchema"] as! [String: Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.PostAuthComplexWithProviderApiKeySchema, postAuthComplexSchema)
    }

    func test_schema_allTypeModel() throws{
        let allTypeModelSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["AllTypeModelSchema"] as! [String: Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.AllTypeModelSchema, allTypeModelSchema)
    }

    func test_model_nested_custom_type_schema() throws {
        let personModelSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["PersonModelSchema"] as! [String: Any],
            isModelType: false
        )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)
        let expectedPersonModelSchema = SchemaData.PersonSchema

        XCTAssertEqual(expectedPersonModelSchema.fields["id"], personModelSchema.fields["id"])
        XCTAssertEqual(expectedPersonModelSchema.fields["name"], personModelSchema.fields["name"])
        XCTAssertEqual(
            expectedPersonModelSchema.fields["propertiesAddresses"]?.embeddedTypeSchema?.sortedFields,
            personModelSchema.fields["propertiesAddresses"]?.embeddedTypeSchema?.sortedFields
        )

        let customASchemasFields = personModelSchema.fields["anotherCustomTypeTree"]?.embeddedTypeSchema?.fields
        let expectedCustomASchemaFields = expectedPersonModelSchema.fields["anotherCustomTypeTree"]?.embeddedTypeSchema?.fields
        XCTAssertEqual(
            expectedCustomASchemaFields!["field1"],
            customASchemasFields!["field1"]
        )
        XCTAssertEqual(
            expectedCustomASchemaFields!["field2"]?.embeddedTypeSchema?.sortedFields,
            customASchemasFields!["field2"]?.embeddedTypeSchema?.sortedFields
        )

        let contactSchemaFields = personModelSchema.fields["contact"]?.embeddedTypeSchema?.fields
        let expectedContactSchemaFields = expectedPersonModelSchema.fields["contact"]?.embeddedTypeSchema?.fields
        XCTAssertEqual(
            expectedContactSchemaFields!["email"],
            contactSchemaFields!["email"]
        )
        XCTAssertEqual(
            expectedContactSchemaFields!["phone"]?.embeddedTypeSchema?.sortedFields,
            contactSchemaFields!["phone"]?.embeddedTypeSchema?.sortedFields
        )
        XCTAssertEqual(
            expectedContactSchemaFields!["mailingAddresses"]?.embeddedTypeSchema?.sortedFields,
            contactSchemaFields!["mailingAddresses"]?.embeddedTypeSchema?.sortedFields
        )
    }

    func test_custom_primary_key_model_schema() throws {
        let inventoryModelSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["InventoryModelSchema"] as! [String: Any]
        ).convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.InventorySchema, inventoryModelSchema)
    }
}
