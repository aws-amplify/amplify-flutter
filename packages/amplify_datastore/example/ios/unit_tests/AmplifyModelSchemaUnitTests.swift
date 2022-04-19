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
                let serializedCustomType = customTypeSchemaMap[schemaName] as! [String : Any]
                customTypeSchemasRegistry.addModelSchema(
                    modelName: serializedCustomType["name"] as! String,
                    modelSchema: try FlutterModelSchema(
                        serializedData: serializedCustomType,
                        isModelSchema: false
                    ).convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)
                )
            } catch {
                print(error)
            }
        }
    }

    func test_schema_blog_with_hasMany() throws {
        let flutterBlogSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["BlogSchema"] as! [String : Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.BlogSchema, flutterBlogSchema)
    }

    func test_schema_comment_with_belongsTo() throws {
        let flutterCommentSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["CommentSchema"] as! [String : Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.CommentSchema, flutterCommentSchema)
    }

    func test_schema_post_with_datetime_int_hasMany_belongsTo_index_model_attributes() throws{
        let flutterPostSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["PostSchema"] as! [String : Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.PostSchema, flutterPostSchema)
    }

    func test_schema_postAuthComplex_with_authRules() throws{
        let postAuthComplexSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["PostAuthComplexSchema"] as! [String : Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.PostAuthComplexSchema, postAuthComplexSchema)
    }

    func test_schema_postAuthComplex_with_authRules_provider_userpools() throws{
        let postAuthComplexSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["PostAuthComplexWithProviderUserPoolsSchema"] as! [String : Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.PostAuthComplexWithProviderUserPoolsSchema, postAuthComplexSchema)
    }

    func test_schema_postAuthComplex_with_authRules_provider_apikey() throws{
        let postAuthComplexSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["PostAuthComplexWithProviderApiKeySchema"] as! [String : Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.PostAuthComplexWithProviderApiKeySchema, postAuthComplexSchema)
    }

    func test_schema_allTypeModel() throws{
        let allTypeModelSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["AllTypeModelSchema"] as! [String : Any] )
            .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemasRegistry)

        XCTAssertEqual(SchemaData.AllTypeModelSchema, allTypeModelSchema)
    }

    func test_model_nested_custom_type_schema() throws {
        let personModelSchema = try FlutterModelSchema(
            serializedData: modelSchemaMap["PersonModelSchema"] as! [String: Any], isModelSchema: false)
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
}
