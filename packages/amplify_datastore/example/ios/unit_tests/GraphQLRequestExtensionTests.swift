// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0


import XCTest
@testable import amplify_datastore

class GraphQLRequestExtensionTests: XCTestCase {
    func testToNativeGraphQLRequest_withCorrectData_convertToNativeGraphQLRequestSuccessfully() {

        let graphQLRequest = GraphQLRequest(
            apiName: UUID().uuidString,
            document: UUID().uuidString,
            variables: [UUID().uuidString: UUID().uuidString],
            responseType: MutationEvent.self
        )

        let nativeGrqphQLRquest = graphQLRequest.toNativeGraphQLRequest()
        XCTAssertEqual(graphQLRequest.apiName, nativeGrqphQLRquest.apiName)
        XCTAssertEqual(graphQLRequest.document, nativeGrqphQLRquest.document)
        XCTAssertEqual(String(describing: graphQLRequest.responseType), nativeGrqphQLRquest.responseType)
        let graphQLVariablesJson = """
        {"\(graphQLRequest.variables!.keys.first!)":"\(graphQLRequest.variables!.values.first!)"}
        """
        XCTAssertEqual(graphQLVariablesJson, nativeGrqphQLRquest.variablesJson)
    }

    func testToNativeGraphQLRequest_withNilVariables_convertToNativeGraphQLRequestWithEmptyVariablesJsonObject() {
        let graphQLRequest = GraphQLRequest(
            apiName: UUID().uuidString,
            document: UUID().uuidString,
            variables: nil,
            responseType: MutationEvent.self
        )

        let nativeGrqphQLRquest = graphQLRequest.toNativeGraphQLRequest()
        XCTAssertEqual(graphQLRequest.apiName, nativeGrqphQLRquest.apiName)
        XCTAssertEqual(graphQLRequest.document, nativeGrqphQLRquest.document)
        XCTAssertEqual(String(describing: graphQLRequest.responseType), nativeGrqphQLRquest.responseType)
        let graphQLVariablesJson = "{}"
        XCTAssertEqual(graphQLVariablesJson, nativeGrqphQLRquest.variablesJson)
    }

    func testToNativeGraphQLRequest_withEmptyVariables_convertToNativeGraphQLRequestWithEmptyVariablesJsonObject() {
        let graphQLRequest = GraphQLRequest(
            apiName: UUID().uuidString,
            document: UUID().uuidString,
            variables: [:],
            responseType: MutationEvent.self
        )

        let nativeGrqphQLRquest = graphQLRequest.toNativeGraphQLRequest()
        XCTAssertEqual(graphQLRequest.apiName, nativeGrqphQLRquest.apiName)
        XCTAssertEqual(graphQLRequest.document, nativeGrqphQLRquest.document)
        XCTAssertEqual(String(describing: graphQLRequest.responseType), nativeGrqphQLRquest.responseType)
        let graphQLVariablesJson = "{}"
        XCTAssertEqual(graphQLVariablesJson, nativeGrqphQLRquest.variablesJson)
    }

}
