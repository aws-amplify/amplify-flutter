//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension APICategory: APICategoryRESTBehavior {

    public func get(request: RESTRequest) async throws -> RESTTask.Success {
        try await plugin.get(request: request)
    }

    public func put(request: RESTRequest) async throws -> RESTTask.Success {
        try await plugin.put(request: request)
    }

    public func post(request: RESTRequest) async throws -> RESTTask.Success {
        try await plugin.post(request: request)
    }

    public func delete(request: RESTRequest) async throws -> RESTTask.Success {
        try await plugin.delete(request: request)
    }

    public func head(request: RESTRequest) async throws -> RESTTask.Success {
        try await plugin.head(request: request)
    }

    public func patch(request: RESTRequest) async throws -> RESTTask.Success {
        try await plugin.patch(request: request)
    }
}
