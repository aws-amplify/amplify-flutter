//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Combine
import Foundation

/// An abstract representation of an Amplify unit of work. Subclasses may aggregate multiple work items
/// to fulfull a single "AmplifyOperation", such as an "extract text operation" which might include
/// uploading an image to cloud storage, processing it via a Predictions engine, and translating the results.
///
/// AmplifyOperations are used by plugin developers to perform tasks on behalf of the calling app. They have a default
/// implementation of a `dispatch` method that sends a contextualized payload to the Hub.
///
/// Pausable/resumable tasks that do not require Hub dispatching should use AsynchronousOperation instead.
open class AmplifyOperation<Request: AmplifyOperationRequest, Success, Failure: AmplifyError>: AsynchronousOperation {

    /// The concrete Request associated with this operation
    public typealias Request = Request

    /// The concrete Success type associated with this operation
    public typealias Success = Success

    /// The concrete Failure type associated with this operation
    public typealias Failure = Failure

    /// Convenience typealias defining the `Result`s dispatched by this operation
    public typealias OperationResult = Result<Success, Failure>

    /// Convenience typealias for the `listener` callback submitted during Operation creation
    public typealias ResultListener = (OperationResult) -> Void

    /// The unique ID of the operation. In categories where operations are persisted for future processing, this id can
    /// be used to identify previously-scheduled work for progress tracking or other functions.
    public let id: UUID

    /// Incoming parameters of the original request
    public let request: Request

    /// All AmplifyOperations must be associated with an Amplify Category
    public let categoryType: CategoryType

    /// All AmplifyOperations must declare a HubPayloadEventName
    public let eventName: HubPayloadEventName

    private var resultListenerUnsubscribeToken: UnsubscribeToken?

    /// Local storage for the result publisher associated with this operation. We use a
    /// Future here to ensure that a subscriber will always receive a value, even if
    /// the operation has already completed execution by the time the subscriber is
    /// attached. We derive the `resultPublisher` computed property from this value.
    /// Amplify V2 can expect Combine to be available.
#if canImport(Combine)
    var resultFuture: Future<Success, Failure>!

    /// Local storage for the result promise associated with this operation. We use
    /// this promise handle to resolve the operation in the `dispatch` method
    var resultPromise: Future<Success, Failure>.Promise!
#endif

    /// Creates an AmplifyOperation for the specified reequest.
    ///
    /// ## Events
    /// An AmplifyOperation will dispatch messages to the Hub as it completes its work. The HubPayload for these
    /// messages will have the following structure:
    /// - **`eventName`**: The event name defined by the operation , such as "Storage.getURL" or "Storage.downloadFile".
    ///   See `HubPayload.EventName` for a list of pre-defined event names.
    /// - **`context`**: An `AmplifyOperationContext` whose `operationId` will be the ID of this operation, and whose
    ///   `request` will be the Request used to create the operation.
    /// - **`data`**: The `OperationResult` that will be dispatched to an event listener. Event types for the listener
    ///   are derived from the request.
    ///
    /// A caller may specify a listener during a call to an
    /// Amplify category API:
    /// ```swift
    /// Amplify.Storage.list { event in print(event) }
    /// ```
    ///
    /// Or after the fact, by passing the operation to the Hub:
    /// ```swift
    /// Amplify.Hub.listen(to: operation) { event in print(event) }
    /// ```
    ///
    /// In either of these cases, Amplify creates a HubListener for the operation by:
    /// 1. Filtering messages by the operation's ID
    /// 1. Extracting the HubPayload's `data` element and casts it to the expected `OperationResult` type for the
    ///    listener
    /// 1. Automatically unsubscribing the listener (by calling `Amplify.Hub.removeListener`) when the listener receives
    ///    a result
    ///
    /// Callers can remove the listener at any time by calling `operation.removeResultListener()`.
    ///
    /// - Parameter categoryType: The categoryType of this operation
    /// - Parameter eventName: The event name of this operation, used in HubPayload messages dispatched by the operation
    /// - Parameter request: The request used to generate this operation
    /// - Parameter resultListener: The optional listener for the OperationResults associated with the operation
    public init(categoryType: CategoryType,
                eventName: HubPayloadEventName,
                request: Request,
                resultListener: ResultListener? = nil) {
        self.categoryType = categoryType
        self.eventName = eventName
        self.request = request
        self.id = UUID()

        super.init()

#if canImport(Combine)
        resultFuture = Future<Success, Failure> { self.resultPromise = $0 }
#endif

        if let resultListener = resultListener {
            self.resultListenerUnsubscribeToken = subscribe(resultListener: resultListener)
        }
    }

    func subscribe(resultListener: @escaping ResultListener) -> UnsubscribeToken {
        let channel = HubChannel(from: categoryType)
        let filterById = HubFilters.forOperation(self)

        var token: UnsubscribeToken?
        let resultHubListener: HubListener = { payload in
            guard let result = payload.data as? OperationResult else {
                return
            }

            resultListener(result)

            // Automatically unsubscribe when event is received
            guard let token = token else {
                return
            }
            Amplify.Hub.removeListener(token)
        }

        token = Amplify.Hub.listen(to: channel, isIncluded: filterById, listener: resultHubListener)

        // We know that `token` is assigned by `Amplify.Hub.listen` so it's safe to force-unwrap
        return token!
    }

    /// Classes that override this method must emit a completion to the `resultPublisher` upon cancellation
    open override func cancel() {
        super.cancel()
#if canImport(Combine)
        let cancellationError = Failure(
            errorDescription: "Operation cancelled",
            recoverySuggestion: "The operation was cancelled before it completed",
            error: OperationCancelledError()
        )
        publish(result: .failure(cancellationError))
#endif
        removeResultListener()
    }

    /// Dispatches an event to the hub. Internally, creates an
    /// `AmplifyOperationContext` object from the operation's `id`, and `request`. On
    /// iOS 13+, this method also publishes the result on the `resultPublisher`.
    ///
    /// - Parameter result: The OperationResult to dispatch to the hub as part of the
    ///   HubPayload
    public func dispatch(result: OperationResult) {
#if canImport(Combine)
        publish(result: result)
#endif

        let channel = HubChannel(from: categoryType)
        let context = AmplifyOperationContext(operationId: id, request: request)
        let payload = HubPayload(eventName: eventName, context: context, data: result)
        Amplify.Hub.dispatch(to: channel, payload: payload)
    }

    /// Removes the listener that was registered during operation instantiation
    public func removeResultListener() {
        guard let unsubscribeToken = resultListenerUnsubscribeToken else {
            return
        }

        Amplify.Hub.removeListener(unsubscribeToken)
        resultListenerUnsubscribeToken = nil
    }

}

/// All AmplifyOperations must be associated with an Amplify Category
extension AmplifyOperation: CategoryTypeable { }

/// All AmplifyOperations must declare a HubPayloadEventName. Subclasses should provide names by extending
/// `HubPayload.EventName`, e.g.:
///
/// ```
/// public extension HubPayload.EventName.Storage {
///     static let put = "Storage.put"
/// }
/// ```
extension AmplifyOperation: HubPayloadEventNameable { }

/// Conformance to Cancellable we gain for free by subclassing AsynchronousOperation
extension AmplifyOperation: Cancellable { }

/// Describes the parameters that are passed during the creation of an AmplifyOperation
public protocol AmplifyOperationRequest {
    /// The concrete Options type that adjusts the behavior of the request type
    associatedtype Options

    /// Options to adjust the behavior of this request, including plugin options
    var options: Options { get }
}
