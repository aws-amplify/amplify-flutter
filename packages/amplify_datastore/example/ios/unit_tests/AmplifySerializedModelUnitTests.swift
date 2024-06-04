// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import XCTest
@testable import amplify_datastore

class AmplifySerializedModelUnitTests: XCTestCase {
    let serializedModelMaps: [String: Any] = try! readJsonMap(filePath: "serialized_model_maps")
    let modelSchemaRegistry = SchemaData.modelSchemaRegistry
    let customTypeSchemasRegistry = SchemaData.customTypeSchemaRegistry

    func test_blog_hasMany_serialization() throws {
        let ourMap = try FlutterSerializedModelData.BlogSerializedModel.toMap(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemasRegistry,
            modelName: SchemaData.BlogSchema.name
        )
        let refMap = try XCTUnwrap(serializedModelMaps["BlogSerializedMap"] as? [String: Any])

        XCTAssertEqual(ourMap["__modelName"] as! String, refMap["__modelName"] as! String)

        XCTAssertEqual(ourMap["id"] as! String, refMap["id"] as! String)
        XCTAssertEqual(ourMap["name"] as! String, refMap["name"] as! String)
    }

    func test_comment_belongs_serialization() throws {
        let ourMap = try FlutterSerializedModelData.CommentSerializedModel.toMap(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemasRegistry,
            modelName: SchemaData.CommentSchema.name
        )
        let refMap = try XCTUnwrap(serializedModelMaps["CommentSerializedMap"] as? [String: Any])

        XCTAssertEqual(ourMap["__modelName"] as! String, refMap["__modelName"] as! String)

        XCTAssertEqual(ourMap["id"] as! String, refMap["id"] as! String)
        XCTAssertEqual(ourMap["content"] as! String, refMap["content"] as! String)
    }

    func test_post_with_datetime_int_hasMany_serialization() throws {
        let ourMap = try FlutterSerializedModelData.PostSerializedModel.toMap(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemasRegistry,
            modelName: SchemaData.PostSchema.name
        )
        let refMap = try XCTUnwrap(serializedModelMaps["PostSerializedMap"] as? [String: Any])

        XCTAssertEqual(ourMap["__modelName"] as! String, refMap["__modelName"] as! String)

        XCTAssertEqual(ourMap["id"] as! String, refMap["id"] as! String)
        XCTAssertEqual(ourMap["title"] as! String, refMap["title"] as! String)
        XCTAssertEqual(ourMap["created"] as! String, refMap["created"] as! String)
    }

    func test_post_with_nested_models_serialization() throws {
        let serializedData = try (FlutterSerializedModelData.PostSerializedModel.toMap(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemasRegistry,
            modelName: SchemaData.PostSchema.name)
        )
        let expectedData = try XCTUnwrap(serializedModelMaps["PostSerializedMap"] as? [String: Any])
        let serializedBlog = try XCTUnwrap(serializedData["blog"] as? [String: String])
        let expectedBlog = try XCTUnwrap(expectedData["blog"] as? [String: String])

        XCTAssertEqual(serializedBlog, expectedBlog)

        let serializedAuthor = try XCTUnwrap(serializedData["author"] as? [String: Any])
        let expectedAuthor = try XCTUnwrap(expectedData["author"] as? [String: Any])

        XCTAssertEqual(serializedAuthor["id"] as! String, expectedAuthor["id"] as! String)
        XCTAssertEqual(serializedAuthor["name"] as! String, expectedAuthor["name"] as! String)

        let serializedDepartment = try XCTUnwrap(serializedAuthor["department"] as? [String: String])
        let expectedDepartment = try XCTUnwrap(expectedAuthor["department"] as? [String: String])

        XCTAssertEqual(serializedDepartment, expectedDepartment)
    }

    func test_allTypeModel_serialization() throws {
        let ourMap = try FlutterSerializedModelData.AllTypeModelSerializedModel.toMap(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemasRegistry,
            modelName: SchemaData.AllTypeModelSchema.name
        )
        let refMap = try XCTUnwrap(serializedModelMaps["AllTypeModelSerializedMap"] as? [String: Any])

        XCTAssertEqual(ourMap["__modelName"] as! String, refMap["__modelName"] as! String)

        XCTAssertEqual(ourMap["id"] as! String, refMap["id"] as! String)
        XCTAssertEqual(ourMap["stringType"] as! String, refMap["stringType"] as! String)
        XCTAssertEqual(ourMap["intType"] as! NSNumber, refMap["intType"] as! NSNumber)
        XCTAssertEqual(ourMap["floatType"] as! NSNumber, refMap["floatType"] as! NSNumber)
        XCTAssertEqual(ourMap["boolType"] as! Bool, refMap["boolType"] as! Bool)
        XCTAssertEqual(ourMap["dateType"] as! String, refMap["dateType"] as! String)
        XCTAssertEqual(ourMap["dateTimeType"] as! String, refMap["dateTimeType"] as! String)
        XCTAssertEqual(ourMap["timeType"] as! String, refMap["timeType"] as! String)
        XCTAssertEqual(ourMap["enumType"] as! String, refMap["enumType"] as! String)
    }

    func test_model_registy_decoder_decodes_object() throws {
        let modelName = "Comment"
        let testModelId = "123"
        let testModelContent = "a comment"
        let jsonString = "{\"id\":\"\(testModelId)\",\"content\":\"\(testModelContent)\"}"
        let decodedModel = try ModelRegistry.decode(modelName: modelName, from: jsonString)
        let values = (decodedModel as! FlutterSerializedModel).values
        XCTAssertEqual(values["content"], JSONValue.string(testModelContent))
    }

    func test_model_registy_decoder_decodes_array_of_object() throws {
        let modelName = "Comment"
        let testModelId = "123"
        let testModelContent = "a comment"
        let jsonString = "[{\"id\":\"\(testModelId)\",\"content\":\"\(testModelContent)\"}]"
        let decodedModel = try ModelRegistry.decode(modelName: modelName, from: jsonString)
        let values = (decodedModel as! FlutterSerializedModel).values
        XCTAssertEqual(values["content"], JSONValue.string(testModelContent))
    }

    func test_model_registy_decoder_throws_on_invalid_json_input() throws {
        let modelName = "Comment"
        let jsonString = "invalid_json_string"

        XCTAssertThrowsError(
            try ModelRegistry.decode(modelName: modelName, from: jsonString)
        ) { error in
            XCTAssertEqual(error is DecodingError, true)
        }
    }

    func test_model_nested_custom_type_serialization() throws {
        let actual = try FlutterSerializedModelData.PersonModelSerializedModel.toMap(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemasRegistry,
            modelName: SchemaData.PersonSchema.name
        )
        let expected = serializedModelMaps["PersonModelSerializedMap"] as! [String: Any]

        XCTAssertEqual(expected["__modelName"] as! String, actual["__modelName"] as! String)

        XCTAssertEqual(expected["id"] as! String, actual["id"] as! String)
        XCTAssertEqual(expected["name"] as! String, actual["name"] as! String)

        let actualContact = try XCTUnwrap(actual["contact"] as? [String: Any])
        let expectedContact = try XCTUnwrap(expected["contact"] as? [String: Any])
        
        let actualCustomTypeName = try XCTUnwrap(actualContact["customTypeName"] as? String)
        let expectedCustomTypeName = try XCTUnwrap(expectedContact["customTypeName"] as? String)
        XCTAssertEqual(expectedCustomTypeName, actualCustomTypeName)

        XCTAssertEqual(expectedContact["email"] as? String, actualContact["email"] as? String)

        let actualPhone = try XCTUnwrap( actualContact["phone"] as? [String: String])
        let expectedPhone = try XCTUnwrap( expectedContact["phone"] as? [String: String])
        XCTAssertEqual(expectedPhone["customTypeName"], actualPhone["customTypeName"])

        XCTAssertEqual(expectedPhone["country"], actualPhone["country"])
        XCTAssertEqual(expectedPhone["area"], actualPhone["area"])
        XCTAssertEqual(expectedPhone["number"], actualPhone["number"])

        let actualMailingAddresses = try XCTUnwrap(actualContact["mailingAddresses"] as? [[String: String?]])
        let expectedMailingAddresses = try XCTUnwrap(expectedContact["mailingAddresses"] as? [[String: String?]])
        guard expectedMailingAddresses.count == actualMailingAddresses.count else {
            XCTFail("Different lengths: \(expectedMailingAddresses) vs \(actualMailingAddresses)")
            return
        }
        
        // Test list of CustomType as a field of CustomType
        for (index, currentActualAddress) in actualMailingAddresses.enumerated() {
            let currentExpectedAddress: [String: String?] = expectedMailingAddresses[index]
            // number of fields should match
            XCTAssertEqual(currentActualAddress.keys.sorted(), currentExpectedAddress.keys.sorted(), "Index: \(index), \(expectedMailingAddresses)")
            for (key, actualValue) in currentActualAddress {
                let expectedValue = try XCTUnwrap(currentExpectedAddress[key])
                // each field's value should match the reference
                XCTAssertEqual(actualValue, expectedValue)
            }
        }

        let actualAddresses = try XCTUnwrap(actual["propertiesAddresses"] as? [[String: String?]])
        let expectedAddresses = try XCTUnwrap(expected["propertiesAddresses"] as? [[String: String?]])

        // Test list of CustomType as a field of Model
        for (index, currentActualAddress) in actualAddresses.enumerated() {
            let currentExpectedAddress: [String: String?] = expectedAddresses[index]
            // number of fields should match
            XCTAssertEqual(currentActualAddress.keys.sorted(), currentExpectedAddress.keys.sorted(), "Index: \(index), \(expectedMailingAddresses)")
            for (key, actualValue) in currentActualAddress {
                let expectedValue = try XCTUnwrap(currentExpectedAddress[key])
                // each field's value should match the reference
                XCTAssertEqual(actualValue, expectedValue)
            }
        }
    }
}
