//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

public struct PaginatedList<ModelType: Model>: Decodable {
    public let items: [MutationSync<ModelType>]
    public let nextToken: String?
    public let startedAt: Int64?

    enum CodingKeys: CodingKey {
        case items
        case nextToken
        case startedAt
    }

    public init(items: [MutationSync<ModelType>], nextToken: String?, startedAt: Int64?) {
        self.items = items
        self.nextToken = nextToken
        self.startedAt = startedAt
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let optimisticDecodedResults = try values.decode([OptimisticDecoded<MutationSync<ModelType>>].self, forKey: .items)
        items = optimisticDecodedResults.compactMap { try? $0.result.get() }
        nextToken = try values.decode(String?.self, forKey: .nextToken)
        startedAt = try values.decode(Int64?.self, forKey: .startedAt)
    }
}


fileprivate struct OptimisticDecoded<T: Decodable>: Decodable {
    let result: Result<T, Error>

    init(from decoder: Decoder) throws {
        result = Result(catching: {
            try T(from: decoder)
        })
    }
}
