//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//


import Foundation
import Amplify

extension GraphQLRequest {
    func toNativeGraphQLRequest() -> NativeGraphQLRequest {
        let variablesJson = self.variables
            .flatMap { try? JSONSerialization.data(withJSONObject: $0, options: []) }
            .flatMap { String(data: $0, encoding: .utf8) }

        return NativeGraphQLRequest(
            document: self.document,
            apiName: self.apiName,
            variablesJson: variablesJson ?? "{}",
            responseType: String(describing: self.responseType),
            decodePath: self.decodePath
        )
    }
}
