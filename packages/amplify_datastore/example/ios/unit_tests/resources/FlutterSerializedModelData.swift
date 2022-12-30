// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Amplify
@testable import AmplifyPlugins
@testable import amplify_datastore

struct FlutterSerializedModelData {
    static var BlogSerializedModel: FlutterSerializedModel =
        .init(map: [
            "id": JSONValue.string("999"),
            "name": JSONValue.string("blog name"),
        ], modelName: "Blog")
    static var CommentSerializedModel: FlutterSerializedModel =
        .init(map: [
            "id": JSONValue.string("999"),
            "post": JSONValue.object([
                "id": "555"
            ]),
            "content": "content"
       ], modelName: "Comment")

    static var PostSerializedModel: FlutterSerializedModel =
        .init(map: [
            "id": JSONValue.string("999"),
            "title": JSONValue.string("post title"),
            "created": JSONValue.string("2020-11-25T01:28:49.000Z"),
            "blog": JSONValue.object([
                "id": "555",
                "name": "Blog 1"
            ]),
            "author": JSONValue.object([
                "id": "666",
                "name": "Someone Testing",
                "department": JSONValue.object([
                    "id": "777",
                    "name": "Department 1",
                    "description": "Testing department 1"
                ])
            ])
        ], modelName: "Post")

    static var AllTypeModelSerializedModel: FlutterSerializedModel =
        .init(map: [
            "id": JSONValue.string("999"),
            "stringType": JSONValue.string("string value"),
            "intType": JSONValue.number(10),
            "floatType": JSONValue.number(9.99),
            "boolType": JSONValue.boolean(true),
            "dateType": JSONValue.string("2020-09-09Z"),
            "dateTimeType": JSONValue.string("2020-11-25T01:28:49.000Z"),
            "timeType": JSONValue.string("20:20:20:020Z"),
            "timestampType": JSONValue.number(999),
            "enumType": JSONValue.string("maybe")
        ], modelName: "AllTypeModel")

    static var PersonModelSerializedModel: FlutterSerializedModel =
        .init(
            map: [
                "id": JSONValue.string("123"),
                "name": JSONValue.string("Tester Testing"),
                "contact": JSONValue.object([
                    "email": "test@testing.com",
                    "phone": JSONValue.object([
                        "country": "+1",
                        "area": "415",
                        "number": "6666666"
                    ]),
                    "mailingAddresses": JSONValue.array([
                        JSONValue.object([
                            "line1": "000 Somewhere far",
                            "line2": "apt 4",
                            "city": "San Francisco",
                            "state": "CA",
                            "postalCode": "94115"
                        ]),
                        JSONValue.object([
                            "line1": "000 Somewhere close",
                            "line2": JSONValue.null,
                            "city": "Seattle",
                            "state": "WA",
                            "postalCode": "98101"
                        ])
                    ])
                ]),
                "propertiesAddresses": JSONValue.array([
                    JSONValue.object([
                        "line1": "222 Somewhere in the middle",
                        "line2": JSONValue.null,
                        "city": "Portland",
                        "state": "OR",
                        "postalCode": "97035"
                    ])
                ]),
                "anotherCustomTypeTree": JSONValue.object([
                    "field1": "yes another dependencies tree",
                    "field2": JSONValue.object([
                        "field": "just a string"
                    ])
                ])
            ],
            modelName: "Person"
        )
}
