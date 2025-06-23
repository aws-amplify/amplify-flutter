//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if canImport(Combine)
import Combine

public extension Amplify {

    /// Get Combine Publishers for Amplify APIs.
    ///
    /// Provides static methods to create Combine Publishers from Tasks and
    /// AsyncSequences.
    ///
    /// These can be used to get Combine Publishers for any Amplify API.
    enum Publisher {
        /// Create a Combine Publisher for a given Task.
        ///
        /// Example Usage
        /// ```
        /// let sink = Amplify.Publisher.create {
        ///     try await Amplify.Geo.search(for "coffee")
        /// }
        ///     .sink { completion in
        ///         // handle completion
        ///     } receiveValue: { value in
        ///         // handle value
        ///     }
        /// ```
        ///
        /// - Parameter operation: The Task for which to create the Publisher.
        /// - Returns: The Publisher for the given Task.
        public static func create<Success>(
            _ operation: @escaping @Sendable () async throws -> Success
        ) -> AnyPublisher<Success, Error> {
            let task = Task(operation: operation)
            return Future { promise in
                Task {
                    do {
                        let value = try await task.value
                        promise(.success(value))
                    } catch {
                        promise(.failure(error))
                    }
                }
            }
            .handleEvents(receiveCancel: { task.cancel() })
            .eraseToAnyPublisher()
        }

        /// Create a Combine Publisher for a given non-throwing Task.
        ///
        /// Example Usage
        /// ```
        /// let sink = Amplify.Publisher.create {
        ///     try await Amplify.Auth.signOut()
        /// }
        ///     .sink(receiveValue: { value in
        ///         // handle value
        ///     })
        /// ```
        ///
        /// - Parameter operation: The Task for which to create the Publisher.
        /// - Returns: The Publisher for the given Task.
        public static func create<Success>(
            _ operation: @escaping @Sendable () async -> Success
        ) -> AnyPublisher<Success, Never> {
            let task = Task(operation: operation)
            return Future { promise in
                Task {
                    let value = await task.value
                    promise(.success(value))
                }
            }
            .handleEvents(receiveCancel: { task.cancel() })
            .eraseToAnyPublisher()
        }

        /// Create a Combine Publisher for a given AsyncSequence.
        ///
        /// Example Usage
        /// ```
        /// let subscription = Amplify.API.subscribe(
        ///     request: .subscription(of: Todo.self, type: .onCreate)
        /// )
        ///
        /// let sink = Amplify.Publisher.create(subscription)
        ///     .sink { completion in
        ///         // handle completion
        ///     } receiveValue: { value in
        ///         // handle value
        ///     }
        /// ```
        ///
        /// - Parameter sequence: The AsyncSequence for which to create the Publisher.
        /// - Returns: The Publisher for the given AsyncSequence.
        public static func create<Sequence: AsyncSequence>(
            _ sequence: Sequence
        ) -> AnyPublisher<Sequence.Element, Error> {
            let subject = PassthroughSubject<Sequence.Element, Error>()
            let task = Task {
                do {
                    // If the Task is cancelled, this will allow the onCancel closure to be called immediately.
                    // This is necessary to prevent continuing to wait until another value is received from
                    // the sequence before cancelling in the case of a slow Iterator.
                    try await withTaskCancellationHandler {
                        for try await value in sequence {
                            // If the Task is cancelled, this will end the loop and send a CancellationError
                            // via the publisher.
                            // This is necessary to prevent the sequence from continuing to send values for a time
                            // after cancellation in the case of a fast Iterator.
                            try Task.checkCancellation()
                            subject.send(value)
                        }
                        subject.send(completion: .finished)
                    } onCancel: {
                        // If the Task is cancelled and the AsyncSequence is Cancellable, as
                        // is the case with AmplifyAsyncSequence, cancel the AsyncSequence.
                        if let cancellable = sequence as? Cancellable {
                            cancellable.cancel()
                        }
                    }
                } catch {
                    subject.send(completion: .failure(error))
                }
            }
            return subject
                .handleEvents(receiveCancel: { task.cancel() })
                .eraseToAnyPublisher()
        }
    }
}
#endif
