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
        let refMap = serializedModelMaps["BlogSerializedMap"] as! [String : Any]
        
        XCTAssertEqual(ourMap["id"] as! String , refMap["id"] as! String)
        XCTAssertEqual(ourMap["modelName"] as! String , refMap["modelName"] as! String)
        
        let ourSd : [String: Any] = ourMap["serializedData"] as! [String: Any]
        let refSd : [String: Any]  = refMap["serializedData"] as! [String: Any]
        
        XCTAssertEqual(ourSd["id"] as! String , refSd["id"] as! String)
        XCTAssertEqual(ourSd["name"] as! String , refSd["name"] as! String)
    }
    
    func test_comment_belongs_serialization() throws {
        let ourMap = try FlutterSerializedModelData.CommentSerializedModel.toMap(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemasRegistry,
            modelName: SchemaData.CommentSchema.name
        )
        let refMap = serializedModelMaps["CommentSerializedMap"] as! [String : Any]
        
        XCTAssertEqual(ourMap["id"] as! String , refMap["id"] as! String)
        XCTAssertEqual(ourMap["modelName"] as! String , refMap["modelName"] as! String)
        
        let ourSd : [String: Any] = ourMap["serializedData"] as! [String: Any]
        let refSd : [String: Any]  = refMap["serializedData"] as! [String: Any]

        XCTAssertEqual(ourSd["id"] as! String , refSd["id"] as! String)
        XCTAssertEqual(ourSd["content"] as! String , refSd["content"] as! String)
        
        let ourNs : [String: Any] = ourSd["post"] as! [String: Any]
        let refNs : [String: Any] = refSd["post"] as! [String: Any]
        
        XCTAssertEqual(ourNs["id"] as! String , refNs["id"] as! String)
    }
    
    func test_post_with_datetime_int_hasMany_serialization() throws {
        let ourMap = try FlutterSerializedModelData.PostSerializedModel.toMap(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemasRegistry,
            modelName: SchemaData.PostSchema.name
        )
        let refMap = serializedModelMaps["PostSerializedMap"] as! [String : Any]
        
        XCTAssertEqual(ourMap["id"] as! String , refMap["id"] as! String)
        XCTAssertEqual(ourMap["modelName"] as! String , refMap["modelName"] as! String)
        
        let ourSd : [String: Any] = ourMap["serializedData"] as! [String: Any]
        let refSd : [String: Any]  = refMap["serializedData"] as! [String: Any]

        XCTAssertEqual(ourSd["id"] as! String , refSd["id"] as! String)
        XCTAssertEqual(ourSd["title"] as! String , refSd["title"] as! String)
        XCTAssertEqual(ourSd["created"] as! String , refSd["created"] as! String)

        let ourNs : [String: Any] = ourSd["blog"] as! [String: Any]
        let refNs : [String: Any] = refSd["blog"] as! [String: Any]
        
        XCTAssertEqual(ourNs["id"] as! String , refNs["id"] as! String)
    }

    func test_post_with_nested_models_serialization() throws {
        let serializedData = try (FlutterSerializedModelData.PostSerializedModel.toMap(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemasRegistry,
            modelName: SchemaData.PostSchema.name)
        )["serializedData"] as! [String: Any]
        let expectedData = (serializedModelMaps["PostSerializedMap"] as! [String : Any])["serializedData"] as! [String: Any]
        let serializedBlog = (serializedData["blog"] as! [String: Any])["serializedData"] as! [String: String]
        let expectedBlog = (expectedData["blog"] as! [String: Any])["serializedData"] as! [String: String]

        XCTAssertEqual(serializedBlog, expectedBlog)

        let serializedAuthor = (serializedData["author"] as! [String: Any])["serializedData"] as! [String: Any]
        let expectedAuthor = (expectedData["author"] as! [String: Any])["serializedData"] as! [String: Any]

        XCTAssertEqual(serializedAuthor["id"] as! String, expectedAuthor["id"] as! String)
        XCTAssertEqual(serializedAuthor["name"] as! String, expectedAuthor["name"] as! String)

        let serializedDepartment = (serializedAuthor["department"] as! [String: Any])["serializedData"] as! [String: String]
        let expectedDepartment = (expectedAuthor["department"] as! [String: Any])["serializedData"] as! [String: String]
        
        XCTAssertEqual(serializedDepartment, expectedDepartment)
    }
    
    
    func test_allTypeModel_serialization() throws {
        let ourMap = try FlutterSerializedModelData.AllTypeModelSerializedModel.toMap(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemasRegistry,
            modelName: SchemaData.AllTypeModelSchema.name
        )
        let refMap = serializedModelMaps["AllTypeModelSerializedMap"] as! [String : Any]
        
        XCTAssertEqual(ourMap["id"] as! String , refMap["id"] as! String)
        XCTAssertEqual(ourMap["modelName"] as! String , refMap["modelName"] as! String)
        
        let ourSd : [String: Any] = ourMap["serializedData"] as! [String: Any]
        let refSd : [String: Any]  = refMap["serializedData"] as! [String: Any]
        
        XCTAssertEqual(ourSd["id"] as! String , refSd["id"] as! String)
        XCTAssertEqual(ourSd["stringType"] as! String , refSd["stringType"] as! String)
        XCTAssertEqual(ourSd["intType"] as! NSNumber , refSd["intType"] as! NSNumber)
        XCTAssertEqual(ourSd["floatType"] as! NSNumber , refSd["floatType"]  as! NSNumber)
        XCTAssertEqual(ourSd["boolType"] as! Bool , refSd["boolType"]  as! Bool)
        XCTAssertEqual(ourSd["dateType"] as! String , refSd["dateType"] as! String)
        XCTAssertEqual(ourSd["dateTimeType"] as! String , refSd["dateTimeType"] as! String)
        XCTAssertEqual(ourSd["timeType"] as! String , refSd["timeType"] as! String)
        XCTAssertEqual(ourSd["enumType"] as! String , refSd["enumType"] as! String)
    }

    func test_model_registy_decoder_decodes_object() throws {
        let modelName = "Comment"
        let testModelId = "123"
        let testModelContent = "a comment"
        let jsonString = "{\"id\":\"\(testModelId)\",\"content\":\"\(testModelContent)\"}"
        let decodedModel = try ModelRegistry.decode(modelName: modelName, from: jsonString)
        XCTAssertEqual(decodedModel.id, testModelId);
        let values = (decodedModel as! FlutterSerializedModel).values
        XCTAssertEqual(values["content"], JSONValue.string(testModelContent))
    }

    func test_model_registy_decoder_decodes_array_of_object() throws {
        let modelName = "Comment"
        let testModelId = "123"
        let testModelContent = "a comment"
        let jsonString = "[{\"id\":\"\(testModelId)\",\"content\":\"\(testModelContent)\"}]"
        let decodedModel = try ModelRegistry.decode(modelName: modelName, from: jsonString)
        XCTAssertEqual(decodedModel.id, testModelId);
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

        XCTAssertEqual(expected["id"] as! String , actual["id"] as! String)
        XCTAssertEqual(expected["modelName"] as! String , actual["modelName"] as! String)

        let actualSerializedData = actual["serializedData"] as! [String: Any]
        let expectedSerializedData = actual["serializedData"] as! [String: Any]
        XCTAssertEqual(expectedSerializedData["id"] as! String , actualSerializedData["id"] as! String)
        XCTAssertEqual(expectedSerializedData["name"] as! String , actualSerializedData["name"] as! String)

        let actualContact = actualSerializedData["contact"] as! [String: Any]
        let expectedContact = expectedSerializedData["contact"] as! [String: Any]
        XCTAssertEqual(expectedContact["customTypeName"] as! String, actualContact["customTypeName"] as! String);

        let actualContactSerializedData = actualContact["serializedData"] as! [String: Any]
        let expectedContactSerializedData = expectedContact["serializedData"] as! [String: Any]
        XCTAssertEqual(expectedContactSerializedData["email"] as! String, actualContactSerializedData["email"] as! String)

        let actualPhone = actualContactSerializedData["phone"] as! [String: Any]
        let expectedPhone = expectedContactSerializedData["phone"] as! [String: Any]
        XCTAssertEqual(expectedPhone["customTypeName"] as! String, actualPhone["customTypeName"] as! String)

        let actualPhoneSerializedData = actualPhone["serializedData"] as! [String: String]
        let expectedPhoneSerializedData = expectedPhone["serializedData"] as! [String: String]
        XCTAssertEqual(expectedPhoneSerializedData["country"], actualPhoneSerializedData["country"])
        XCTAssertEqual(expectedPhoneSerializedData["area"], actualPhoneSerializedData["area"])
        XCTAssertEqual(expectedPhoneSerializedData["number"], actualPhoneSerializedData["number"])

        let actualMailingAddresses = actualContactSerializedData["mailingAddresses"] as! [[String: Any]]
        let expectedMailingAddresses = expectedContactSerializedData["mailingAddresses"] as! [[String: Any]]

        // Test list of CustomType as a field of CustomType
        for (index, actualElement) in actualMailingAddresses.enumerated() {
            let expectedElement = expectedMailingAddresses[index]
            XCTAssertEqual(actualElement["customTypeName"] as! String, expectedElement["customTypeName"] as! String)

            let actualElementSerializedData = actualElement["serializedData"] as! [String: String]
            let expectedElementSerializedData = expectedElement["serializedData"] as! [String: String]

            XCTAssertEqual(expectedElementSerializedData["line1"], actualElementSerializedData["line1"])
            XCTAssertEqual(expectedElementSerializedData["line2"], actualElementSerializedData["line2"])
            XCTAssertEqual(expectedElementSerializedData["city"], actualElementSerializedData["city"])
            XCTAssertEqual(expectedElementSerializedData["state"], actualElementSerializedData["state"])
            XCTAssertEqual(expectedElementSerializedData["postalCode"], actualElementSerializedData["postalCode"])
        }


        let actualAddresses = actualSerializedData["propertiesAddresses"] as! [[String: Any]]
        let expectedAddresses = expectedSerializedData["propertiesAddresses"] as! [[String: Any]]

        // Test list of CustomType as a field of Model
        for (index, actualElement) in actualAddresses.enumerated() {
            let expectedElement = expectedAddresses[index]
            XCTAssertEqual(actualElement["customTypeName"] as! String, expectedElement["customTypeName"] as! String)

            let actualElementSerializedData = actualElement["serializedData"] as! [String: String]
            let expectedElementSerializedData = expectedElement["serializedData"] as! [String: String]

            XCTAssertEqual(expectedElementSerializedData["line1"], actualElementSerializedData["line1"])
            XCTAssertEqual(expectedElementSerializedData["line2"], actualElementSerializedData["line2"])
            XCTAssertEqual(expectedElementSerializedData["city"], actualElementSerializedData["city"])
            XCTAssertEqual(expectedElementSerializedData["state"], actualElementSerializedData["state"])
            XCTAssertEqual(expectedElementSerializedData["postalCode"], actualElementSerializedData["postalCode"])
        }
    }
}
