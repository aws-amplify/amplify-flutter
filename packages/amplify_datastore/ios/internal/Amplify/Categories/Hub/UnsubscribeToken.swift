//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Convenience typealias defining a closure that can be used to unsubscribe a Hub listener. Although UnsubscribeToken
/// conforms to Hashable, only the `id` property is considered for equality and hash value; `channel` is used only for
/// routing an unsubscribe request to the correct HubChannel.
public struct UnsubscribeToken {
    let channel: HubChannel
    let id: UUID

    public init(channel: HubChannel, id: UUID) {
        self.channel = channel
        self.id = id
    }
}

extension UnsubscribeToken: Hashable {
    public static func == (lhs: UnsubscribeToken, rhs: UnsubscribeToken) -> Bool {
        return lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        return id.hash(into: &hasher)
    }
}
