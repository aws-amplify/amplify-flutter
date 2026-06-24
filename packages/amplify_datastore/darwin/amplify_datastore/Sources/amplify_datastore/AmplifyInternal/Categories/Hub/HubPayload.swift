//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// The payload of a Hub message
public struct HubPayload {

    /// Event names registered by Amplify Operations
    public struct EventName {}

    /// The name, tag, or grouping of the HubPayload. Recommended to be a small string without spaces,
    /// such as `signIn` or `hang_up`. For AmplifyOperations, this will be a concatenation of the category display name
    /// and a short name of the operation type, as in "Storage.getURL" or "Storage.downloadFile".
    public let eventName: HubPayloadEventName

    /// A structure used to pass the source, or context, of the HubPayload. For HubPayloads that are
    /// generated from AmplifyOperations, this field will be the Operation's associated AmplifyOperationContext.
    public let context: Any?

    /// A freeform structure used to pass objects or custom data. For HubPayloads that are generated from
    /// AmplifyOperations, this field will be the Operation's associated OperationResult.
    public let data: Any?

    public init(eventName: String,
                context: Any? = nil,
                data: Any? = nil) {
        self.eventName = eventName
        self.context = context
        self.data = data
    }
}

protocol HubPayloadEventNameConvertible {
   var hubEventName: String { get }
}
