//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Convenience protocol to handle any kind of GraphQLOperation
public protocol AnyGraphQLOperation {
    associatedtype Success
    associatedtype Failure: Error
    typealias ResultListener = (Result<Success, Failure>) -> Void
}

/// Abastraction for a retryable GraphQLOperation.
public protocol RetryableGraphQLOperationBehavior: Operation, DefaultLogger {
    associatedtype Payload: Decodable

    /// GraphQLOperation concrete type
    associatedtype OperationType: AnyGraphQLOperation

    typealias RequestFactory = () async -> GraphQLRequest<Payload>
    typealias OperationFactory = (GraphQLRequest<Payload>, @escaping OperationResultListener) -> OperationType
    typealias OperationResultListener = OperationType.ResultListener

    /// Operation unique identifier
    var id: UUID { get }

    /// Number of attempts (min 1)
    var attempts: Int { get set }

    /// Underlying GraphQL operation instantiated by `operationFactory`
    var underlyingOperation: AtomicValue<OperationType?> { get set }

    /// Maximum number of allowed retries
    var maxRetries: Int { get }

    /// GraphQLRequest factory, invoked to create a new operation
    var requestFactory: RequestFactory { get }

    /// GraphQL operation factory, invoked with a newly created GraphQL request
    /// and a wrapped result listener.
    var operationFactory: OperationFactory { get }

    var resultListener: OperationResultListener { get }

    init(requestFactory: @escaping RequestFactory,
         maxRetries: Int,
         resultListener: @escaping OperationResultListener,
         _ operationFactory: @escaping OperationFactory)

    func start(request: GraphQLRequest<Payload>)

    func shouldRetry(error: APIError?) -> Bool
}

extension RetryableGraphQLOperationBehavior {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.api.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}

// MARK: RetryableGraphQLOperationBehavior + default implementation
extension RetryableGraphQLOperationBehavior {
    public func start(request: GraphQLRequest<Payload>) {
        attempts += 1
        log.debug("[\(id)] - Try [\(attempts)/\(maxRetries)]")
        let wrappedResultListener: OperationResultListener = { result in
            if case let .failure(error) = result, self.shouldRetry(error: error as? APIError) {
                self.log.debug("\(error)")
                Task {
                    self.start(request: await self.requestFactory())
                }
                return
            }

            if case let .failure(error) = result {
                self.log.debug("\(error)")
                self.log.debug("[\(self.id)] - Failed")
            }

            if case .success = result {
                self.log.debug("[Operation \(self.id)] - Success")
            }
            self.resultListener(result)
        }
        underlyingOperation.set(operationFactory(request, wrappedResultListener))
    }
}

// MARK: - RetryableGraphQLOperation
public final class RetryableGraphQLOperation<Payload: Decodable>: Operation, RetryableGraphQLOperationBehavior {
    public typealias Payload = Payload
    public typealias OperationType = GraphQLOperation<Payload>

    public var id: UUID
    public var maxRetries: Int
    public var attempts: Int = 0
    public var requestFactory: RequestFactory
    public var underlyingOperation: AtomicValue<GraphQLOperation<Payload>?> = AtomicValue(initialValue: nil)
    public var resultListener: OperationResultListener
    public var operationFactory: OperationFactory

    public init(requestFactory: @escaping RequestFactory,
                maxRetries: Int,
                resultListener: @escaping OperationResultListener,
                _ operationFactory: @escaping OperationFactory) {
        self.id = UUID()
        self.maxRetries = max(1, maxRetries)
        self.requestFactory = requestFactory
        self.operationFactory = operationFactory
        self.resultListener = resultListener
    }

    public override func main() {
        Task {
            start(request: await requestFactory())
        }
    }

    override public func cancel() {
        self.underlyingOperation.get()?.cancel()
    }

    public func shouldRetry(error: APIError?) -> Bool {
        guard case let .operationError(_, _, underlyingError) = error,
              let authError = underlyingError as? AuthError else {
                  return false
              }

        switch authError {
        case .signedOut, .notAuthorized:
            return attempts < maxRetries
        default:
            return false
        }
    }
}

// MARK: - RetryableGraphQLSubscriptionOperation
public final class RetryableGraphQLSubscriptionOperation<Payload: Decodable>: Operation,
                                                                              RetryableGraphQLOperationBehavior {
    public typealias OperationType = GraphQLSubscriptionOperation<Payload>

    public typealias Payload = Payload

    public var id: UUID
    public var maxRetries: Int
    public var attempts: Int = 0
    public var underlyingOperation: AtomicValue<GraphQLSubscriptionOperation<Payload>?> = AtomicValue(initialValue: nil)
    public var requestFactory: RequestFactory
    public var resultListener: OperationResultListener
    public var operationFactory: OperationFactory

    public init(requestFactory: @escaping RequestFactory,
                maxRetries: Int,
                resultListener: @escaping OperationResultListener,
                _ operationFactory: @escaping OperationFactory) {
        self.id = UUID()
        self.maxRetries = max(1, maxRetries)
        self.requestFactory = requestFactory
        self.operationFactory = operationFactory
        self.resultListener = resultListener
    }
    public override func main() {
        Task {
            start(request: await requestFactory())
        }
    }

    public override func cancel() {
        self.underlyingOperation.get()?.cancel()
    }

    public func shouldRetry(error: APIError?) -> Bool {
        return attempts < maxRetries
    }

}

// MARK: GraphQLOperation - GraphQLSubscriptionOperation + AnyGraphQLOperation
extension GraphQLOperation: AnyGraphQLOperation {}
extension GraphQLSubscriptionOperation: AnyGraphQLOperation {}
