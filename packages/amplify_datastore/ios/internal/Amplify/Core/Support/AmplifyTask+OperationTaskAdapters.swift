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

public class AmplifyOperationTaskAdapter<Request: AmplifyOperationRequest,
                                            Success,
                                            Failure: AmplifyError>: AmplifyTask {
    let operation: AmplifyOperation<Request, Success, Failure>
    let childTask: ChildTask<Void, Success, Failure>
    var resultToken: UnsubscribeToken?

    public init(operation: AmplifyOperation<Request, Success, Failure>) {
        self.operation = operation
        self.childTask = ChildTask(parent: operation)
        resultToken = operation.subscribe { [weak self] in
            self?.resultListener($0)
        }
    }

    deinit {
        if let resultToken = resultToken {
            Amplify.Hub.removeListener(resultToken)
        }
    }

    public var value: Success {
        get async throws {
            try await childTask.value
        }
    }

    public func pause() {
        operation.pause()
    }

    public func resume() {
        operation.resume()
    }

    public func cancel() {
        Task {
            await childTask.cancel()
        }
    }

#if canImport(Combine)
    public var resultPublisher: AnyPublisher<Success, Failure> {
        operation.resultPublisher
    }
#endif

    private func resultListener(_ result: Result<Success, Failure>) {
        Task {
            await childTask.finish(result)
        }
    }
}

public class AmplifyInProcessReportingOperationTaskAdapter<Request: AmplifyOperationRequest,
                                                            InProcess,
                                                            Success,
                                                            Failure: AmplifyError>: AmplifyTask, AmplifyInProcessReportingTask {
    let operation: AmplifyInProcessReportingOperation<Request, InProcess, Success, Failure>
    let childTask: ChildTask<InProcess, Success, Failure>
    var resultToken: UnsubscribeToken?
    var inProcessToken: UnsubscribeToken?

    public init(operation: AmplifyInProcessReportingOperation<Request, InProcess, Success, Failure>) {
        self.operation = operation
        self.childTask = ChildTask(parent: operation)
        resultToken = operation.subscribe(resultListener: { [weak self] result in
            guard let self = self else { return }
            self.resultListener(result)
        })
        inProcessToken = operation.subscribe(inProcessListener: { [weak self] inProcess in
            guard let self = self else { return }
            self.inProcessListener(inProcess)
        })
    }

    deinit {
        if let resultToken = resultToken {
            Amplify.Hub.removeListener(resultToken)
        }
        if let inProcessToken = inProcessToken {
            Amplify.Hub.removeListener(inProcessToken)
        }
    }

    public var value: Success {
        get async throws {
            try await childTask.value
        }
    }

    public var inProcess: AmplifyAsyncSequence<InProcess> {
        get async {
            await childTask.inProcess
        }
    }

    public func pause() {
        operation.pause()
    }

    public func resume() {
        operation.resume()
    }

    public func cancel() {
        Task {
            await childTask.cancel()
        }
    }

#if canImport(Combine)
    public var resultPublisher: AnyPublisher<Success, Failure> {
        operation.resultPublisher
    }

    public var inProcessPublisher: AnyPublisher<InProcess, Never> {
        operation.inProcessPublisher
    }
#endif

    private func resultListener(_ result: Result<Success, Failure>) {
        Task {
            await childTask.finish(result)
        }
    }

    private func inProcessListener(_ inProcess: InProcess) {
        Task {
            try await childTask.report(inProcess)
        }
    }
}

public extension AmplifyOperationTaskAdapter where Request: RequestIdentifier {
    var requestID: String {
        operation.request.requestID
    }
}

public extension AmplifyInProcessReportingOperationTaskAdapter where Request: RequestIdentifier {
    var requestID: String {
        operation.request.requestID
    }
}
