//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if canImport(Combine)
import Foundation
import Combine

// MARK: - GraphQLSubscriptionOperation

public extension GraphQLSubscriptionOperation {

    /// Publishes the state of the GraphQL subscription's underlying network connection.
    ///
    /// Subscription termination will be reported as a `completion` on the
    /// `subscriptionDataPublisher` completion, so this is really only useful if you
    /// want to monitor the `.connected` state.
    var connectionStatePublisher: AnyPublisher<SubscriptionConnectionState, APIError> {
        // Suppress Void results from the result publisher, but continue to emit
        // completions
        let transformedResultPublisher = internalResultPublisher
            .flatMap { _ in Empty<SubscriptionConnectionState, Failure>(completeImmediately: true) }

        // Transform the in-process publisher to one that only outputs connectionState events
        let transformedInProcessPublisher = internalInProcessPublisher
            .compactMap { event -> SubscriptionConnectionState? in
                switch event {
                case .connection(let state):
                    return state
                default:
                    return nil
                }
        }
        .setFailureType(to: Failure.self)

        // Now that the publisher signatures match, we can merge them
        return transformedResultPublisher
            .merge(with: transformedInProcessPublisher)
            .eraseToAnyPublisher()
    }

    /// Publishes the data received from a GraphQL subscription.
    ///
    /// The publisher emits `GraphQLResponse` events, which are standard Swift `Result`
    /// values that contain either a successfully decoded response value, or a
    /// `GraphQLResponseError` describing the reason that a value could not be
    /// successfully decoded. Receiving a `.failure` response does not mean the
    /// subscription is terminated--the subscription may still receive values, and each
    /// value is independently evaluated. Thus, you may see a data stream containing a
    /// mix of successfully decoded responses, partially decoded responses, or decoding
    /// errors, none of which affect the state of the underlying subscription
    /// connection.
    ///
    /// When the subscription terminates with a cancellation or disconnection, this
    /// publisher will receive a `completion`.
    var subscriptionDataPublisher: AnyPublisher<GraphQLResponse<R>, Failure> {
        // Suppress Void results from the result publisher, but continue to emit completions
        let transformedResultPublisher = internalResultPublisher
            .flatMap { _ in Empty<GraphQLResponse<R>, Failure>(completeImmediately: true) }

        // Transform the in-process publisher to one that only outputs GraphQLResponse events
        let transformedInProcessPublisher = internalInProcessPublisher
            .compactMap { event -> GraphQLResponse<R>? in
                switch event {
                case .data(let result):
                    return result
                default:
                    return nil
                }
        }
        .setFailureType(to: Failure.self)

        // Now that the publisher signatures match, we can merge them
        return transformedResultPublisher
            .merge(with: transformedInProcessPublisher)
            .eraseToAnyPublisher()
    }

}

#endif
