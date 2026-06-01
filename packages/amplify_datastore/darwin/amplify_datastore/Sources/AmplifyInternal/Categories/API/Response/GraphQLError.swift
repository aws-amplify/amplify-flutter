//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// The error format according to https://graphql.github.io/graphql-spec/June2018/#sec-Errors
public struct GraphQLError: Decodable {

    /// Description of the error
    public let message: String

    /// list of locations describing the syntax element
    public let locations: [Location]?

    /// Details the path of the response field with error. The values are either strings or 0-index integers
    public let path: [JSONValue]?

    /// Additional map of of errors
    public let extensions: [String: JSONValue]?

    /// Initializer with all properties
    public init(message: String,
                locations: [Location]? = nil,
                path: [JSONValue]? = nil,
                extensions: [String: JSONValue]? = nil) {
        self.message = message
        self.locations = locations
        self.path = path
        self.extensions = extensions
    }
}

extension GraphQLError {

    /// Both `line` and `column` are positive numbers describing the beginning of an associated syntax element
    public struct Location: Decodable {

        /// The line describing the associated syntax element
        public let line: Int

        /// The column describing the associated syntax element
        public let column: Int
    }
}

extension GraphQLError: Error { }
