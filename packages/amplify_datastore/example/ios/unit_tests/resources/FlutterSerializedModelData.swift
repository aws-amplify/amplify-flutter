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

struct FlutterSerializedModelData {    
    
    static var BlogSerializedModel : FlutterSerializedModel =
        FlutterSerializedModel(id: "999", map: [
            "id" : JSONValue.string("999"),
            "name" : JSONValue.string("blog name"),
        ]);
    static var CommentSerializedModel : FlutterSerializedModel =
        FlutterSerializedModel(id: "999", map: [
            "id" : JSONValue.string("999"),
            "post" : JSONValue.object([
                "id" : "555"
            ]),
            "content" : "content"
       ]);

    static var PostSerializedModel : FlutterSerializedModel =
        FlutterSerializedModel(id: "999", map: [
            "id" : JSONValue.string("999"),
            "title" : JSONValue.string("post title"),
            "created" : JSONValue.string("2020-11-25T01:28:49.000Z"),
            "blog" : JSONValue.object([
                "id" : "555"
            ])
        ]);
    

    static var AllTypeModelSerializedModel : FlutterSerializedModel =
        FlutterSerializedModel(id: "999", map: [
            "id" : JSONValue.string("999"),
            "stringType" : JSONValue.string("string value"),
            "intType": JSONValue.number(10),
            "floatType" : JSONValue.number(9.99),
            "boolType" : JSONValue.boolean(true),
            "dateType" : JSONValue.string("2020-09-09Z"),
            "dateTimeType" : JSONValue.string("2020-11-25T01:28:49.000Z"),
            "timeType" : JSONValue.string("20:20:20:020Z"),
            "timestampType" : JSONValue.number(999),
            "enumType" : JSONValue.string("maybe")
        ]);
}
