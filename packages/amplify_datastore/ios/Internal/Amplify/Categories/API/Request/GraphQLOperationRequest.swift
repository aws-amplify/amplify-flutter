//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// GraphQL Operation Request
public struct GraphQLOperationRequest<R: Decodable>: AmplifyOperationRequest {
    /// The name of the API to perform the request against
    public let apiName: String?

    /// The GraphQL operation type
    public let operationType: GraphQLOperationType

    /// The GraphQL query document used for the operation
    public let document: String

    /// The GraphQL variables used for the operation
    public let variables: [String: Any]?

    /// The type to decode to
    public let responseType: R.Type

    /// The path to traverse before decoding to `responseType`.
    public let decodePath: String?

    /// Options to adjust the behavior of this request, including plugin-options
    public let options: Options

    /// Initializer for GraphQLOperationRequest
    public init(apiName: String?,
                operationType: GraphQLOperationType,
                document: String,
                variables: [String: Any]? = nil,
                responseType: R.Type,
                decodePath: String? = nil,
                options: Options) {
        self.apiName = apiName
        self.operationType = operationType
        self.document = document
        self.variables = variables
        self.responseType = responseType
        self.decodePath = decodePath
        self.options = options
    }
}

// MARK: GraphQLOperationRequest + Options
public extension GraphQLOperationRequest {
    struct Options {
        public let pluginOptions: Any?

        public init(pluginOptions: Any?) {
            self.pluginOptions = pluginOptions
        }
    }
}
