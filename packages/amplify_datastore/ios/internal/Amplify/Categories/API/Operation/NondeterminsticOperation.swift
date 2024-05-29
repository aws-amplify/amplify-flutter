//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//


import Combine
/**
 A non-deterministic operation offers multiple paths to accomplish its task.
 It attempts the next path if all preceding paths have failed with an error that allows for continuation.
 */
enum NondeterminsticOperationError: Error {
    case totalFailure
    case cancelled
}

final class NondeterminsticOperation<T> {
    /// operation that to be eval
    typealias Operation = () async throws -> T
    typealias OnError = (Error) -> Bool

    private let operations: AsyncStream<Operation>
    private var shouldTryNextOnError: OnError = { _ in true }
    private var cancellables = Set<AnyCancellable>()
    private var task: Task<Void, Never>?

    deinit {
        cancel()
    }

    init(operations: AsyncStream<Operation>, shouldTryNextOnError: OnError? = nil) {
        self.operations = operations
        if let shouldTryNextOnError {
            self.shouldTryNextOnError = shouldTryNextOnError
        }
    }

    convenience init(
        operationStream: AnyPublisher<Operation, Never>,
        shouldTryNextOnError: OnError? = nil
    ) {
        var cancellables = Set<AnyCancellable>()
        let (asyncStream, continuation) = AsyncStream.makeStream(of: Operation.self)
        operationStream.sink { _ in
            continuation.finish()
        } receiveValue: {
            continuation.yield($0)
        }.store(in: &cancellables)

        self.init(
            operations: asyncStream,
            shouldTryNextOnError: shouldTryNextOnError
        )
        self.cancellables = cancellables
    }

    /// Synchronous version of executing the operations
    func execute() -> Future<T, Error> {
        Future { [weak self] promise in
            self?.task = Task { [weak self] in
                do {
                    if let self {
                        promise(.success(try await self.run()))
                    } else {
                        promise(.failure(NondeterminsticOperationError.cancelled))
                    }
                } catch {
                    promise(.failure(error))
                }
            }
        }
    }

    /// Asynchronous version of executing the operations
    func run() async throws -> T {
        for await operation in operations {
            if Task.isCancelled {
                throw NondeterminsticOperationError.cancelled
            }
            do {
                return try await operation()
            } catch {
                if shouldTryNextOnError(error) {
                    continue
                } else {
                    throw error
                }
            }
        }
        throw NondeterminsticOperationError.totalFailure
    }

    /// Cancel the operation
    func cancel() {
        task?.cancel()
        cancellables = Set<AnyCancellable>()
    }
}
