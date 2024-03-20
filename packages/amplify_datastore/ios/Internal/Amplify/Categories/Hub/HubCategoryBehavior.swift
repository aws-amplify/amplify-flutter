//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Convenience typealias defining a closure that can be used to listen to Hub messages
public typealias HubListener = (HubPayload) -> Void

/// Behavior of the Hub category that clients will use
public protocol HubCategoryBehavior {

    /// Dispatch a Hub message on the specified channel
    /// - Parameter channel: The channel to send the message on
    /// - Parameter payload: The payload to send
    func dispatch(to channel: HubChannel, payload: HubPayload)

    /// Listen to Hub messages with a particular event name on a particular channel
    ///
    /// - Parameter channel: The channel to listen for messages on
    /// - Parameter eventName: Only hub payloads with this event name will be dispatched to the listener
    /// - Parameter listener: The closure to invoke with the received message
    func listen(to channel: HubChannel,
                eventName: HubPayloadEventName,
                listener: @escaping HubListener) -> UnsubscribeToken

    /// Listen to Hub messages on a particular channel, optionally filtering message prior to dispatching them
    ///
    /// - Parameter channel: The channel to listen for messages on
    /// - Parameter filter: If specified, candidate messages will be passed to this closure prior to dispatching to
    ///             the `listener`. Only messages for which the filter returns `true` will be dispatched.
    /// - Parameter listener: The closure to invoke with the received message
    func listen(to channel: HubChannel,
                isIncluded filter: HubFilter?,
                listener: @escaping HubListener) -> UnsubscribeToken

    /// Removes the listener identified by `token`
    /// - Parameter token: The UnsubscribeToken returned by `listen`
    func removeListener(_ token: UnsubscribeToken)
}
