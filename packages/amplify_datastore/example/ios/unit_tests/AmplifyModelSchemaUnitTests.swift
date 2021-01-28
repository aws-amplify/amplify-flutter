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
    
    let schemasMap: [String: Any] = try! readJsonMap(filePath: "model_schema_maps")

    func test_schema_blog_with_hasMany() throws {
        let flutterBlogSchema = try FlutterModelSchema(
            serializedData: schemasMap["BlogSchema"] as! [String : Any] )
            .convertToNativeModelSchema()
        
        XCTAssertEqual(SchemaData.BlogSchema, flutterBlogSchema)
    }
    
    func test_schema_comment_with_belongsTo() throws {
        let flutterBlogSchema = try FlutterModelSchema(
            serializedData: schemasMap["CommentSchema"] as! [String : Any] )
            .convertToNativeModelSchema()
        
        XCTAssertEqual(SchemaData.CommentSchema, flutterBlogSchema)
    }
    
    func test_schema_post_with_datetime_int_hasMany_belongsTo() throws{
        let flutterBlogSchema = try FlutterModelSchema(
            serializedData: schemasMap["PostSchema"] as! [String : Any] )
            .convertToNativeModelSchema()
        
        XCTAssertEqual(SchemaData.PostSchema, flutterBlogSchema)
    }
    
    func test_schema_postAuthComplex_with_authRules() throws{
        let postAuthComplexSchema = try FlutterModelSchema(
            serializedData: schemasMap["PostAuthComplexSchema"] as! [String : Any] )
            .convertToNativeModelSchema()
        
        XCTAssertEqual(SchemaData.PostAuthComplexSchema, postAuthComplexSchema)
    }
    
    func test_schema_allTypeModel() throws{
        let allTypeModelSchema = try FlutterModelSchema(
            serializedData: schemasMap["AllTypeModelSchema"] as! [String : Any] )
            .convertToNativeModelSchema()
        
        XCTAssertEqual(SchemaData.AllTypeModelSchema, allTypeModelSchema)
    }
}
