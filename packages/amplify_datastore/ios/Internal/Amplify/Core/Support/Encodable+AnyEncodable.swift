//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public struct AnyEncodable: Encodable {

    let encodable: Encodable

    init(_ encodable: Encodable) {
        self.encodable = encodable
    }

    public func encode(to encoder: Encoder) throws {
        try encodable.encode(to: encoder)
    }
}

extension Encodable {

    public func eraseToAnyEncodable() -> AnyEncodable {
        return AnyEncodable(self)
    }

}
