//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//


import Foundation

extension GraphQLRequest {
    func toNativeGraphQLRequest() -> NativeGraphQLRequest {
        let variablesJson = self.variables
            .flatMap { try? JSONSerialization.data(withJSONObject: $0, options: []) }
            .flatMap { String(data: $0, encoding: .utf8) }
        
        let datastoreOptions = self.options?.pluginOptions as? AWSAPIPluginDataStoreOptions

        return NativeGraphQLRequest(
            document: self.document,
            apiName: self.apiName,
            variablesJson: variablesJson ?? "{}",
            responseType: String(describing: self.responseType),
            decodePath: self.decodePath,
            authMode: datastoreOptions?.authType.map { String(describing: $0) }
        )
    }
}
