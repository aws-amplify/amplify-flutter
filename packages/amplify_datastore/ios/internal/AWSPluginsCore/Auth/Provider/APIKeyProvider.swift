//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// For using API Key based authorization, this protocol needs to be implemented and passed to configuration object.
public protocol APIKeyProvider {
    func getAPIKey() -> String
}

public struct BasicAPIKeyProvider: APIKeyProvider {
    private let apiKey: String

    public init(apiKey: String) {
        self.apiKey = apiKey
    }

    public func getAPIKey() -> String {
        apiKey
    }
}
