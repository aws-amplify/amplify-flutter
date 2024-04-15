//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// The default Hub plugin provided with the Amplify Framework
///
/// **No guaranteed delivery order**
///
/// AWSHubPlugin distributes messages in order to listeners, but makes no guarantees about the order in
/// which a listener is called.
/// This plugin does not guarantee synchronization between message delivery and listener management. In other words, the
/// following sequence is not guaranteed to succeed:
///
///     plugin.listen(to: .custom("MyChannel") { event in print("event received: \(event)") }
///     plugin.dispatch(to: .custom("MyChannel"), payload: HubPayload("MY_EVENT"))
///
/// Instead, messages and listener states are guaranteed to be independently self-consistent. Callers can use
/// `hasListener(withToken:)` to check that a listener has been registered.
final public class AWSHubPlugin: HubCategoryPlugin {
    /// Convenience property. Each instance of `AWSHubPlugin` has the same key
    public static var key: String {
        return "awsHubPlugin"
    }

    private let dispatcher = HubChannelDispatcher()

    // MARK: - HubCategoryPlugin

    public var key: String {
        return type(of: self).key
    }

    /// For protocol conformance only--this plugin has no applicable configurations
    public func configure(using configuration: Any?) throws {
        // Do nothing
    }

    /// Removes listeners and empties the message queue
    public func reset() async {
        await dispatcher.destroy()
    }

    public func dispatch(to channel: HubChannel, payload: HubPayload) {
        dispatcher.dispatch(to: channel, payload: payload)
    }

    public func listen(to channel: HubChannel,
                       eventName: HubPayloadEventName,
                       listener: @escaping HubListener) -> UnsubscribeToken {
        let filter = HubFilters.forEventName(eventName)
        return listen(to: channel, isIncluded: filter, listener: listener)
    }

    public func listen(to channel: HubChannel,
                       isIncluded filter: HubFilter? = nil,
                       listener: @escaping HubListener) -> UnsubscribeToken {
        let filteredListener = FilteredListener(for: channel, filter: filter, listener: listener)
        dispatcher.insert(filteredListener)

        let unsubscribeToken = UnsubscribeToken(channel: channel, id: filteredListener.id)
        return unsubscribeToken
    }

    public func removeListener(_ token: UnsubscribeToken) {
        dispatcher.removeListener(withId: token.id)
    }

    // MARK: - Custom Plugin methods

    /// Returns true if the dispatcher has a listener registered with `token`
    ///
    /// - Parameter token: The UnsubscribeToken of the listener to check
    /// - Returns: True if the dispatcher has a listener registered with `token`
    public func hasListener(withToken token: UnsubscribeToken) -> Bool {
        return dispatcher.hasListener(withId: token.id)
    }

}

extension AWSHubPlugin: AmplifyVersionable { }
