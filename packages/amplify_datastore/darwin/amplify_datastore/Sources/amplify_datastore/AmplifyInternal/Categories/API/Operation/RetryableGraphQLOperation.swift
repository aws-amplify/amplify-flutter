//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Combine


// MARK: - RetryableGraphQLOperation
public final class RetryableGraphQLOperation<Payload: Decodable> {
    public typealias Payload = Payload

    private let nondeterminsticOperation: NondeterminsticOperation<GraphQLTask<Payload>.Success>

    public init(
        requestStream: AsyncStream<() async throws -> GraphQLTask<Payload>.Success>
    ) {
        self.nondeterminsticOperation = NondeterminsticOperation(
            operations: requestStream,
            shouldTryNextOnError: Self.onError(_:)
        )
    }

    deinit {
        cancel()
    }

    static func onError(_ error: Error) -> Bool {
        guard let error = error as? APIError,
              let authError = error.underlyingError as? AuthError
        else {
            return false
        }

        switch authError {
        case .notAuthorized: return true
        default: return false
        }
    }

    public func execute(
        _ operationType: GraphQLOperationType
    ) -> AnyPublisher<GraphQLTask<Payload>.Success, APIError> {
        nondeterminsticOperation.execute().mapError {
            if let apiError = $0 as? APIError {
                return apiError
            } else {
                return APIError.operationError("Failed to execute GraphQL operation", "", $0)
            }
        }.eraseToAnyPublisher()
    }

    public func run() async -> Result<GraphQLTask<Payload>.Success, APIError> {
        do {
            let result = try await nondeterminsticOperation.run()
            return .success(result)
        } catch {
            if let apiError = error as? APIError {
                return .failure(apiError)
            } else {
                return .failure(.operationError("Failed to execute GraphQL operation", "", error))
            }
        }
    }

    public func cancel() {
        nondeterminsticOperation.cancel()
    }

}

public final class RetryableGraphQLSubscriptionOperation<Payload: Decodable> {

    public typealias Payload = Payload
    public typealias SubscriptionEvents = GraphQLSubscriptionEvent<Payload>
    private var task: Task<Void, Never>?
    private let nondeterminsticOperation: NondeterminsticOperation<AmplifyAsyncThrowingSequence<SubscriptionEvents>>

    public init(
        requestStream: AsyncStream<() async throws -> AmplifyAsyncThrowingSequence<SubscriptionEvents>>
    ) {
        self.nondeterminsticOperation = NondeterminsticOperation(operations: requestStream)
    }

    deinit {
        cancel()
    }

    public func subscribe() -> AnyPublisher<SubscriptionEvents, APIError> {
        let subject = PassthroughSubject<SubscriptionEvents, APIError>()
        self.task = Task { await self.trySubscribe(subject) }
        return subject.eraseToAnyPublisher()
    }

    private func trySubscribe(_ subject: PassthroughSubject<SubscriptionEvents, APIError>) async {
        var apiError: APIError?
        do {
            try Task.checkCancellation()
            let sequence = try await self.nondeterminsticOperation.run()
            defer { sequence.cancel() }
            for try await event in sequence {
                try Task.checkCancellation()
                subject.send(event)
            }
        } catch is CancellationError {
            subject.send(completion: .finished)
        } catch {
            if let error = error as? APIError {
                apiError = error
            }
            Self.log.debug("Failed with subscription request: \(error)")
        }

        if apiError != nil {
            subject.send(completion: .failure(apiError!))
        } else {
            subject.send(completion: .finished)
        }
    }

    public func cancel() {
        self.task?.cancel()
        self.nondeterminsticOperation.cancel()
    }
}

extension AsyncSequence {
    fileprivate var asyncStream: AsyncStream<Self.Element> {
        AsyncStream { continuation in
            Task {
                var it = self.makeAsyncIterator()
                do {
                    while let ele = try await it.next() {
                        continuation.yield(ele)
                    }
                    continuation.finish()
                } catch {
                    continuation.finish()
                }
            }
        }
    }
}

extension RetryableGraphQLSubscriptionOperation {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.api.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
