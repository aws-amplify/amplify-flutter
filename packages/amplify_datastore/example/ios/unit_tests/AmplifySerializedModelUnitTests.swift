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
    let flutterModelRegistration = SchemaData.flutterModelRegistration

    func test_blog_hasMany_serialization() throws {
        let ourMap = try FlutterSerializedModelData.BlogSerializedModel.toMap(flutterModelRegistration: flutterModelRegistration, modelName: SchemaData.BlogSchema.name)
        let refMap = serializedModelMaps["BlogSerializedMap"] as! [String : Any]
        
        XCTAssertEqual(ourMap["id"] as! String , refMap["id"] as! String)
        XCTAssertEqual(ourMap["modelName"] as! String , refMap["modelName"] as! String)
        
        let ourSd : [String: Any] = ourMap["serializedData"] as! [String: Any]
        let refSd : [String: Any]  = refMap["serializedData"] as! [String: Any]
        
        XCTAssertEqual(ourSd["id"] as! String , refSd["id"] as! String)
        XCTAssertEqual(ourSd["name"] as! String , refSd["name"] as! String)
    }
    
    func test_comment_belongs_serialization() throws {
        let ourMap = try FlutterSerializedModelData.CommentSerializedModel.toMap(flutterModelRegistration: flutterModelRegistration, modelName: SchemaData.CommentSchema.name)
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
        let ourMap = try FlutterSerializedModelData.PostSerializedModel.toMap(flutterModelRegistration: flutterModelRegistration, modelName: SchemaData.PostSchema.name)
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
        let serializedData = try (FlutterSerializedModelData.PostSerializedModel.toMap(flutterModelRegistration: flutterModelRegistration, modelName: SchemaData.PostSchema.name))["serializedData"] as! [String: Any]
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
        let ourMap = try FlutterSerializedModelData.AllTypeModelSerializedModel.toMap(flutterModelRegistration: flutterModelRegistration, modelName: SchemaData.AllTypeModelSchema.name)
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
}
