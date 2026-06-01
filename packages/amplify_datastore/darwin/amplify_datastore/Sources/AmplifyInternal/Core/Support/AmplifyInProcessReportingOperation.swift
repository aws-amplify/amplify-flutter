//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
#if canImport(Combine)
import Combine
#endif

/// An AmplifyOperation that emits InProcess values intermittently during the operation.
///
/// Unlike a regular `AmplifyOperation`, which emits a single Result at the completion of the operation's work, an
/// `AmplifyInProcessReportingOperation` may emit intermediate values while its work is ongoing. These values could be
/// incidental to the operation (such as a `Storage.downloadFile` operation reporting Progress values periodically as
/// the download proceeds), or they could be the primary delivery mechanism for an operation (such as a
/// `GraphQLSubscriptionOperation`'s emitting new subscription values).
open class AmplifyInProcessReportingOperation<
    Request: AmplifyOperationRequest,
    InProcess,
    Success,
    Failure: AmplifyError
>: AmplifyOperation<Request, Success, Failure> {
    public typealias InProcess = InProcess

    var inProcessListenerUnsubscribeToken: UnsubscribeToken?

    /// Local storage for the result publisher associated with this operation.
    /// We derive the `inProcessPublisher` computed property from this value.
    /// Amplify V2 can expect Combine to be available.
#if canImport(Combine)
    var inProcessSubject: PassthroughSubject<InProcess, Never>!
#endif

    public init(categoryType: CategoryType,
                eventName: HubPayloadEventName,
                request: Request,
                inProcessListener: InProcessListener? = nil,
                resultListener: ResultListener? = nil) {

        super.init(categoryType: categoryType, eventName: eventName, request: request, resultListener: resultListener)

#if canImport(Combine)
        inProcessSubject = PassthroughSubject<InProcess, Never>()
#endif

        // If the inProcessListener is present, we need to register a hub event listener for it, and ensure we
        // automatically unsubscribe when we receive a completion event for the operation
        if let inProcessListener = inProcessListener {
            self.inProcessListenerUnsubscribeToken = subscribe(inProcessListener: inProcessListener)
        }
    }

    /// Registers an in-process listener for this operation. If the operation
    /// completes, this listener will automatically be removed.
    ///
    /// - Parameter inProcessListener: The listener for in-process events
    /// - Returns: an UnsubscribeToken that can be used to remove the listener from Hub
    func subscribe(inProcessListener: @escaping InProcessListener) -> UnsubscribeToken {
        let channel = HubChannel(from: categoryType)
        let filterById = HubFilters.forOperation(self)

        var inProcessListenerToken: UnsubscribeToken!
        let inProcessHubListener: HubListener = { payload in
            if let inProcessData = payload.data as? InProcess {
                inProcessListener(inProcessData)
                return
            }
            // Remove listener if we see a result come through
            if payload.data is OperationResult {
                Amplify.Hub.removeListener(inProcessListenerToken)
            }
        }

        inProcessListenerToken = Amplify.Hub.listen(to: channel,
                                                    isIncluded: filterById,
                                                    listener: inProcessHubListener)

        return inProcessListenerToken
    }

    /// Classes that override this method must emit a completion to the `inProcessPublisher` upon cancellation
    open override func cancel() {
        super.cancel()
#if canImport(Combine)
        publish(completion: .finished)
#endif
    }

    /// Invokes `super.dispatch()`. On iOS 13+, this method first publishes a
    /// `.finished` completion on the in-process publisher.
    ///
    /// - Parameter result: The OperationResult to dispatch to the hub as part of the
    ///   HubPayload
    public override func dispatch(result: OperationResult) {
#if canImport(Combine)
        publish(completion: .finished)
#endif
        super.dispatch(result: result)
    }

}

public extension AmplifyInProcessReportingOperation {
    /// Convenience typealias for the `inProcessListener` callback submitted during Operation creation
    typealias InProcessListener = (InProcess) -> Void

    /// Dispatches an event to the hub. Internally, creates an
    /// `AmplifyOperationContext` object from the operation's `id`, and `request`
    /// - Parameter result: The OperationResult to dispatch to the hub as part of the HubPayload
    func dispatchInProcess(data: InProcess) {
#if canImport(Combine)
        publish(inProcessValue: data)
#endif

        let channel = HubChannel(from: categoryType)
        let context = AmplifyOperationContext(operationId: id, request: request)
        let payload = HubPayload(eventName: eventName, context: context, data: data)
        Amplify.Hub.dispatch(to: channel, payload: payload)
    }

    /// Removes the listener that was registered during operation instantiation
    func removeInProcessResultListener() {
        if let inProcessListenerUnsubscribeToken = inProcessListenerUnsubscribeToken {
            Amplify.Hub.removeListener(inProcessListenerUnsubscribeToken)
        }
    }

}
