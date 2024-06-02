//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//


import XCTest
@testable import amplify_datastore

class GraphQLResponseDecodeTests: XCTestCase {

    override func tearDown() async throws {
        SchemaData.modelSchemaRegistry.modelSchemas = [:]
        ModelRegistry.reset()
    }

    func testToJson_decodeDataToJSONValue_success() {
        let testJson = """
            {"a": "b", "c": ["d"]}
        """
        let expectedJson: JSONValue = [
            "a": "b",
            "c": ["d"]
        ]
        let testData = testJson.data(using: .utf8)
        XCTAssertNotNil(testData)
        let decodeJsonValue = GraphQLResponse<String>.toJson(data: testData!)
        XCTAssertNoThrow(try decodeJsonValue.get())
        XCTAssertEqual(expectedJson, try decodeJsonValue.get())
    }

    func testToJson_decodeWrongJsonDataToJSONValue_failure() {
        let testJson = """
            {"a": "b", "c": ["d"}
        """
        let testData = testJson.data(using: .utf8)
        XCTAssertNotNil(testData)
        let decodeJsonValue = GraphQLResponse<String>.toJson(data: testData!)
        XCTAssertThrowsError(try decodeJsonValue.get())
    }

    func testFromJson_encodeJsonValueToData_success() {
        let json: JSONValue = [
            "a": ["b"]
        ]

        let expectedJsonData = "{\"a\":[\"b\"]}".data(using: .utf8)
        let encodedJsonData = GraphQLResponse<String>.fromJson(json)
        XCTAssertNoThrow(try encodedJsonData.get())
        XCTAssertEqual(expectedJsonData, try encodedJsonData.get())
    }

    func testEncodeDataPayloadToString_withCorrectJSONValue_success() {
        let json: JSONValue = [
            "a": ["b"]
        ]

        let expectedJson = "{\"a\":[\"b\"]}"
        let encodedJson = GraphQLResponse<String>.encodeDataPayloadToString(json)
        XCTAssertNoThrow(try encodedJson.get())
        XCTAssertEqual(expectedJson, try encodedJson.get())
    }

    func testDecodeDataPayloadToAnyModel_withCorrectJson_Success() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let json: JSONValue = [
            "__typename": "Post",
            "id": "123",
            "title": "test",
            "author": "authorId",
        ]

        let expectedModel: AnyModel = AnyModel(FlutterSerializedModel(map: [
            "__typename": "Post",
            "id": "123",
            "title": "test",
            "author": "authorId",
        ], modelName: "Post"))

        let result = GraphQLResponse<AnyModel>.decodeDataPayloadToAnyModel(json)
        XCTAssertNoThrow(try result.get())
        XCTAssertEqual(expectedModel.modelName, try result.get().modelName)
        XCTAssertEqual(expectedModel.id, try result.get().id)
    }

    func testDecodeDataPayloadToAnyModel_withJsonWithoutTypename_failure() {
        let json: JSONValue = [
            "a": ["b"]
        ]

        let result = GraphQLResponse<AnyModel>.decodeDataPayloadToAnyModel(json)
        XCTAssertThrowsError(try result.get()) { error in
            XCTAssertTrue(error is APIError)
            XCTAssertEqual((error as! APIError).errorDescription, "Could not retrieve __typename from object")
        }
    }

    func testDecodeDataPayloadToAnyModel_withJsonWithWrongTypename_failure() {
        let json: JSONValue = [
            "a": ["b"],
            "__typename": "Post"
        ]

        let result = GraphQLResponse<AnyModel>.decodeDataPayloadToAnyModel(json)
        XCTAssertThrowsError(try result.get()) { error in
            XCTAssertTrue(error is APIError)
            XCTAssertTrue((error as! APIError).errorDescription.starts(with: "Could not decode to Post"))
        }
    }

    func testDecodeDataPayload_withDecodableAsString_getString() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let json: JSONValue = [
            "a": ["b"]
        ]
        let expectedJson = "{\"a\":[\"b\"]}"
        let result: Result<String, APIError> = GraphQLResponse<String>.decodeDataPayload(json, modelName: "Post")
        XCTAssertNoThrow(try result.get())
        XCTAssertEqual(expectedJson, try result.get())
    }

    func testDecodeDataPayload_withDecodableAsAnyModel_getAnyModel() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let json: JSONValue = [
            "__typename": "Post",
            "id": "123",
            "title": "test",
            "author": "authorId",
        ]

        let expectedModel: AnyModel = AnyModel(FlutterSerializedModel(map: [
            "__typename": "Post",
            "id": "123",
            "title": "test",
            "author": "authorId",
        ], modelName: "Post"))

        let result: Result<AnyModel, APIError> = GraphQLResponse<AnyModel>.decodeDataPayload(json, modelName: "Post")
        XCTAssertNoThrow(try result.get())
        XCTAssertEqual(expectedModel.modelName, try result.get().modelName)
        XCTAssertEqual(expectedModel.id, try result.get().id)
    }

    func testDecodeDataPayload_withSpecifiedModelName_decodedWithThatType() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let json: JSONValue = [
            "id": "123",
            "title": "test",
            "author": "authorId",
        ]

        let expectedModel: AnyModel = AnyModel(FlutterSerializedModel(map: [
            "__typename": "Post",
            "id": "123",
            "title": "test",
            "author": "authorId",
        ], modelName: "Post"))

        let result: Result<AnyModel, APIError> = GraphQLResponse<AnyModel>.decodeDataPayload(json, modelName: "Post")
        XCTAssertNoThrow(try result.get())
        XCTAssertEqual(expectedModel.modelName, try result.get().modelName)
        XCTAssertEqual(expectedModel.id, try result.get().id)
    }

    func testDecodeDataPayload_withTypeR_decodedToR() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let json: JSONValue = [
            "__typename": "Post",
            "id": "123",
            "title": "test",
            "author": "authorId",
            "_version": 1,
           "_deleted": nil,
           "_lastChangedAt": 1707773705221
        ]

        let expectedModel: AnyModel = AnyModel(FlutterSerializedModel(map: [
            "__typename": "Post",
            "id": "123",
            "title": "test",
            "author": "authorId",
        ], modelName: "Post"))

        let result: Result<MutationSync<AnyModel>, APIError> = GraphQLResponse<AnyModel>.decodeDataPayload(json, modelName: "Post")
        XCTAssertNoThrow(try result.get())
        XCTAssertEqual(expectedModel.modelName, try result.get().model.modelName)
        XCTAssertEqual(expectedModel.id, try result.get().model.identifier)
    }

    func testParseGraphQLError_withNonObjectJsonValue_returnNil() {
        let errorJson: JSONValue = "test"
        XCTAssertNil(GraphQLResponse<String>.parseGraphQLError(error: errorJson))
    }

    func testParseGraphQLError_withCorrectJsonValue_buildGraphQLErrorSuccessfully() {
        let errorJson: JSONValue = [
            "message": "test",
            "errorType": "UnknownError"
        ]

        let result = GraphQLResponse<String>.parseGraphQLError(error: errorJson)
        XCTAssertNotNil(result)
        XCTAssertEqual(errorJson.message?.stringValue, result?.message)
        XCTAssertEqual(["errorType": "UnknownError"], result?.extensions)
    }

    func testFromAppSyncResponse_withOnlyData_decodePayload() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let json: JSONValue = [
            "data": [
                "onCreatePost": [
                    "__typename": "Post",
                    "id": "123",
                    "title": "test",
                    "author": "authorId",
                    "_version": 1,
                   "_deleted": nil,
                   "_lastChangedAt": 1707773705221
                ]
            ]
        ]

        let expectedModel: AnyModel = AnyModel(FlutterSerializedModel(map: [
            "__typename": "Post",
            "id": "123",
            "title": "test",
            "author": "authorId",
        ], modelName: "Post"))

        let result: Result<GraphQLResponse<MutationSync<AnyModel>>, APIError> = .fromAppSyncResponse(
            json: json,
            decodePath: "onCreatePost",
            modelName: "Post"
        )
        XCTAssertNoThrow(try result.get())
        let mutationSync = try! result.get()
        XCTAssertNoThrow(try mutationSync.get())
        XCTAssertEqual(expectedModel.modelName, try mutationSync.get().model.modelName)
        XCTAssertEqual(expectedModel.id, try mutationSync.get().model.identifier)
    }

    func testFromAppSyncResponse_withOnlyErrors_decodePayload() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let json: JSONValue = [
            "errors": [
                ["message": "error1"],
                ["message": "error2"]
            ]
        ]

        let result: Result<GraphQLResponse<MutationSync<AnyModel>>, APIError> = .fromAppSyncResponse(
            json: json,
            decodePath: "onCreatePost",
            modelName: "Post"
        )
        XCTAssertNoThrow(try result.get())
        let mutationSync = try! result.get()
        XCTAssertThrowsError(try mutationSync.get()) { error in
            if let graphQLResponseError = error as? GraphQLResponseError<MutationSync<AnyModel>>,
               case .error(let graphQLErrors) = graphQLResponseError
            {
                XCTAssertEqual(graphQLErrors.map(\.message), ["error1", "error2"])
            } else {
                XCTFail("Errors are not decoded correctly")
            }
        }
    }

    func testFromAppSyncResponse_withDataAndErrors_decodePayload() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let json: JSONValue = [
            "data": [
                "onCreatePost": [
                    "__typename": "Post",
                    "id": "123",
                    "title": "test",
                    "author": "authorId",
                    "_version": 1,
                   "_deleted": nil,
                   "_lastChangedAt": 1707773705221
                ],
            ],
            "errors": [
                ["message": "error1"],
                ["message": "error2"]
            ]
        ]

        let expectedModel: AnyModel = AnyModel(FlutterSerializedModel(map: [
            "__typename": "Post",
            "id": "123",
            "title": "test",
            "author": "authorId",
        ], modelName: "Post"))

        let result: Result<GraphQLResponse<MutationSync<AnyModel>>, APIError> = .fromAppSyncResponse(
            json: json,
            decodePath: "onCreatePost",
            modelName: "Post"
        )
        XCTAssertNoThrow(try result.get())
        let mutationSync = try! result.get()
        XCTAssertThrowsError(try mutationSync.get()) { error in
            if let graphQLResponseError = error as? GraphQLResponseError<MutationSync<AnyModel>>,
               case .partial(let mutationSync, let graphQLErrors) = graphQLResponseError
            {
                XCTAssertEqual(graphQLErrors.map(\.message), ["error1", "error2"])
                XCTAssertEqual(expectedModel.modelName, mutationSync.model.modelName)
                XCTAssertEqual(expectedModel.id, mutationSync.model.identifier)
            } else {
                XCTFail("Errors are not decoded correctly")
            }
        }
    }

    func testFromAppSyncResponse_withNoDataNoErrors_decodePayload() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let json: JSONValue = [
            "a": "b"
        ]

        let result: Result<GraphQLResponse<MutationSync<AnyModel>>, APIError> = .fromAppSyncResponse(
            json: json,
            decodePath: "onCreatePost",
            modelName: "Post"
        )
        XCTAssertThrowsError(try result.get()) { error in
            if case .unknown(let description, _, _) = (error as! APIError) {
                XCTAssertEqual("Failed to get data object or errors from GraphQL response", description)
            } else {
                XCTFail("Should throw APIError.unknown")
            }
        }
    }

    func testFromAppSyncResponse_withJsonString_decodeCorrectly() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let json: JSONValue = [
            "__typename": "Post",
            "id": "123",
            "title": "test",
            "author": "authorId",
        ]

        let jsonString = String(data: try! JSONEncoder().encode(json), encoding: .utf8)!
        let response: GraphQLResponse<AnyModel> = .fromAppSyncResponse(string: jsonString, decodePath: nil, modelName: "Post")
        XCTAssertNoThrow(try response.get())
        XCTAssertEqual(json.id?.stringValue, try response.get().identifier)
        XCTAssertEqual(json.__typename?.stringValue, try response.get().modelName)
    }

    func testFromAppSyncResponse_withBrokenJsonString_failWithTransformationError() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let jsonString = "{"
        let response: GraphQLResponse<AnyModel> = .fromAppSyncResponse(string: jsonString, decodePath: nil, modelName: "Post")
        XCTAssertThrowsError(try response.get()) { error in
            guard case .transformationError = error as! GraphQLResponseError<AnyModel> else {
                XCTFail("Should failed with transformationError")
                return
            }
        }
    }

    func testFromAppSyncSubscriptionResponse_withJsonString_decodeCorrectly() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let payloadJson: JSONValue = [
            "data": [
                "onCreatePost": [
                    "__typename": "Post",
                    "id": "123",
                    "title": "test",
                    "author": "authorId",
                    "_version": 1,
                   "_deleted": nil,
                   "_lastChangedAt": 1707773705221
                ]
            ]
        ]

        let jsonString = String(data: try! JSONEncoder().encode(payloadJson), encoding: .utf8)!
        let response: GraphQLResponse<MutationSync<AnyModel>> = .fromAppSyncResponse(
            string: jsonString,
            decodePath: "onCreatePost",
            modelName: "Post"
        )
        XCTAssertNoThrow(try response.get())
        let mutationSync = try! response.get()
        XCTAssertEqual(payloadJson.data?.onCreatePost?.id?.stringValue, mutationSync.model.identifier)
        XCTAssertEqual(payloadJson.data?.onCreatePost?.__typename?.stringValue, mutationSync.model.modelName)
    }

    func testFromAppSyncSubscriptionResponse_withWrongJsonString_failWithTransformationError() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let jsonString = "{"
        let response: GraphQLResponse<MutationSync<AnyModel>> = .fromAppSyncSubscriptionResponse(
            string: jsonString,
            decodePath: nil,
            modelName: "Post"
        )
        XCTAssertThrowsError(try response.get()) { error in
            guard case .transformationError = error as! GraphQLResponseError<MutationSync<AnyModel>> else {
                XCTFail("Should failed with transformationError")
                return
            }
        }
    }

    func testFromAppSyncSubscriptionErrorResponse_withErrorJsonPayload_decodeCorrectly() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let errorJsonPayload: JSONValue = [
            "errors": [
                ["message": "error1"],
                ["message": "error2"]
            ]
        ]
        let errorJsonPayloadString = String(data: try! JSONEncoder().encode(errorJsonPayload), encoding: .utf8)!
        let result: GraphQLResponse<MutationSync<AnyModel>> = .fromAppSyncSubscriptionErrorResponse(string: errorJsonPayloadString)
        XCTAssertThrowsError(try result.get()) { error in
            if let graphQLResponseError = error as? GraphQLResponseError<MutationSync<AnyModel>>,
               case .error(let graphQLErrors) = graphQLResponseError
            {
                XCTAssertEqual(graphQLErrors.map(\.message), ["error1", "error2"])
            } else {
                XCTFail("Errors are not decoded correctly")
            }
        }
    }

    func testFromAppSyncSubscriptionErrorResponse_withSingleErrorJsonPayload_decodeCorrectly() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let errorJsonPayload: JSONValue = [
            "errors": [
                "message": "error1"
            ]
        ]
        let errorJsonPayloadString = String(data: try! JSONEncoder().encode(errorJsonPayload), encoding: .utf8)!
        let result: GraphQLResponse<MutationSync<AnyModel>> = .fromAppSyncSubscriptionErrorResponse(string: errorJsonPayloadString)
        XCTAssertThrowsError(try result.get()) { error in
            if let graphQLResponseError = error as? GraphQLResponseError<MutationSync<AnyModel>>,
               case .error(let graphQLErrors) = graphQLResponseError
            {
                XCTAssertEqual(graphQLErrors.map(\.message), ["error1"])
            } else {
                XCTFail("Errors are not decoded correctly")
            }
        }
    }

    func testFromAppSyncSubscriptionErrorResponse_withBrokenErrorJsonPayload_failWithTransformationError() {
        SchemaData.modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
        let errorJsonString = "{"
        let response: GraphQLResponse<MutationSync<AnyModel>> = .fromAppSyncSubscriptionErrorResponse(string: errorJsonString)
        XCTAssertThrowsError(try response.get()) { error in
            guard case .transformationError = error as! GraphQLResponseError<MutationSync<AnyModel>> else {
                XCTFail("Should failed with transformationError")
                return
            }
        }
    }
}
