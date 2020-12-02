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

     func test_blog_hasMany_serialization() throws {
        let ourMap = FlutterSerializedModelData.BlogSerializedModel.toMap(modelSchema: SchemaData.BlogSchema);
        let refMap = serializedModelMaps["BlogSerializedMap"] as! [String : Any];
        
        XCTAssertEqual(ourMap["id"] as! String , refMap["id"] as! String);
        XCTAssertEqual(ourMap["modelName"] as! String , refMap["modelName"] as! String);
        
        let ourSd : [String: Any] = ourMap["serializedData"] as! [String: Any];
        let refSd : [String: Any]  = refMap["serializedData"] as! [String: Any];
        
        XCTAssertEqual(ourSd["id"] as! String , refSd["id"] as! String);
        XCTAssertEqual(ourSd["name"] as! String , refSd["name"] as! String);
    }
    
    func test_comment_belongs_serialization() throws {
        let ourMap = FlutterSerializedModelData.CommentSerializedModel.toMap(modelSchema: SchemaData.CommentSchema);
        let refMap = serializedModelMaps["CommentSerializedMap"] as! [String : Any];
        
        XCTAssertEqual(ourMap["id"] as! String , refMap["id"] as! String);
        XCTAssertEqual(ourMap["modelName"] as! String , refMap["modelName"] as! String);
        
        let ourSd : [String: Any] = ourMap["serializedData"] as! [String: Any];
        let refSd : [String: Any]  = refMap["serializedData"] as! [String: Any];

        XCTAssertEqual(ourSd["id"] as! String , refSd["id"] as! String);
        XCTAssertEqual(ourSd["content"] as! String , refSd["content"] as! String);
        
        let ourNs : [String: Any] = ourSd["post"] as! [String: Any];
        let refNs : [String: Any] = refSd["post"] as! [String: Any];
        
        XCTAssertEqual(ourNs["id"] as! String , refNs["id"] as! String);
   }
    
    func test_post_with_datetime_int_hasMany__serialization() throws {
        let ourMap = FlutterSerializedModelData.PostSerializedModel.toMap(modelSchema: SchemaData.PostSchema);
        let refMap = serializedModelMaps["PostSerializedMap"] as! [String : Any];
        
        XCTAssertEqual(ourMap["id"] as! String , refMap["id"] as! String);
        XCTAssertEqual(ourMap["modelName"] as! String , refMap["modelName"] as! String);
        
        let ourSd : [String: Any] = ourMap["serializedData"] as! [String: Any];
        let refSd : [String: Any]  = refMap["serializedData"] as! [String: Any];

        XCTAssertEqual(ourSd["id"] as! String , refSd["id"] as! String);
        XCTAssertEqual(ourSd["title"] as! String , refSd["title"] as! String);
        XCTAssertEqual(ourSd["created"] as! String , refSd["created"] as! String);

        let ourNs : [String: Any] = ourSd["blog"] as! [String: Any];
        let refNs : [String: Any] = refSd["blog"] as! [String: Any];
        
        XCTAssertEqual(ourNs["id"] as! String , refNs["id"] as! String);
   }
    
    
    func test_allTypeModel_serialization() throws {
        let ourMap = FlutterSerializedModelData.AllTypeModelSerializedModel.toMap(modelSchema: SchemaData.AllTypeModelSchema);
        let refMap = serializedModelMaps["AllTypeModelSerializedMap"] as! [String : Any];
        
        XCTAssertEqual(ourMap["id"] as! String , refMap["id"] as! String);
        XCTAssertEqual(ourMap["modelName"] as! String , refMap["modelName"] as! String);
        
        let ourSd : [String: Any] = ourMap["serializedData"] as! [String: Any];
        let refSd : [String: Any]  = refMap["serializedData"] as! [String: Any];
        
        XCTAssertEqual(ourSd["id"] as! String , refSd["id"] as! String);
        XCTAssertEqual(ourSd["stringType"] as! String , refSd["stringType"] as! String);
        XCTAssertEqual(ourSd["intType"] as! NSNumber , refSd["intType"] as! NSNumber);
        XCTAssertEqual(ourSd["floatType"] as! NSNumber , refSd["floatType"]  as! NSNumber);
        XCTAssertEqual(ourSd["boolType"] as! Bool , refSd["boolType"]  as! Bool);
        XCTAssertEqual(ourSd["dateType"] as! String , refSd["dateType"] as! String);
        XCTAssertEqual(ourSd["dateTimeType"] as! String , refSd["dateTimeType"] as! String);
        XCTAssertEqual(ourSd["timeType"] as! String , refSd["timeType"] as! String);
        XCTAssertEqual(ourSd["enumType"] as! String , refSd["enumType"] as! String);
    }
}
