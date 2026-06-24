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

/// Simple task that represents a unit of work and its result.
///
/// See Also: [AmplifyInProcessReportingTask](x-source-tag://AmplifyInProcessReportingTask)
///
/// - Tag: AmplifyTask
public protocol AmplifyTask {
    associatedtype Request
    associatedtype Success
    associatedtype Failure: AmplifyError

    /// Blocks until the receiver has successfully collected a result or throws if an error was encountered.
    ///
    /// - Tag: AmplifyTask.value
    var value: Success { get async throws }

    /// Pauses the work represented by the receiver.
    ///
    /// - Tag: AmplifyTask.pause
    func pause()

    /// Resumes any paused work represented by the receiver.
    ///
    /// - Tag: AmplifyTask.resume
    func resume()

    /// Cancels any work represented by the receiver.
    ///
    /// - Tag: AmplifyTask.resume
    func cancel()

#if canImport(Combine)
    var resultPublisher: AnyPublisher<Success, Failure> { get }
#endif
}

/// Simple task that represents a unit of work and its result and is able to report its progress.
///
/// See Also: [AmplifyTask](x-source-tag://AmplifyTask)
///
/// - Tag: AmplifyInProcessReportingTask
public protocol AmplifyInProcessReportingTask {
    associatedtype InProcess

    /// An async sequence that is able to report on the progress of the work represented by the receiver.
    ///
    /// - Tag: AmplifyInProcessReportingTask.inProcess
    var inProcess: AmplifyAsyncSequence<InProcess> { get async }

#if canImport(Combine)
    var inProcessPublisher: AnyPublisher<InProcess, Never> { get }
#endif
}

public extension AmplifyInProcessReportingTask where InProcess == Progress {

    /// An async sequence that is able to report on the progress of the work represented by the receiver
    /// using [Progress](x-source-tag://Progress).
    ///
    /// - Tag: AmplifyInProcessReportingTask.progress
    var progress: AmplifyAsyncSequence<InProcess> {
        get async {
            await inProcess
        }
    }
}
