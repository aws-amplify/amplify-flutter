//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension HubCategory {

    /// Convenience method to allow callers to listen to Hub events for a particular operation. Internally, the listener
    /// transforms the HubPayload into the Operation's expected OperationResult type, so callers may re-use their
    /// `listener`s
    ///
    /// - Parameter operation: The operation to monitor for results
    /// - Parameter resultListener: The Operation-specific listener callback to be invoked when an OperationResult for
    ///   that operation is received.
    func listenForResult<Request: AmplifyOperationRequest, Success, Failure: AmplifyError>(
        to operation: AmplifyOperation<Request, Success, Failure>,
        resultListener: @escaping AmplifyOperation<Request, Success, Failure>.ResultListener
    ) -> UnsubscribeToken {
        return operation.subscribe(resultListener: resultListener)
    }

    /// Convenience method to allow callers to listen to Hub in-process events for a particular operation. Internally,
    /// the listener transforms the HubPayload into the Operation's expected InProcess type, so callers may re-use
    /// their `listener`s.
    ///
    /// - Parameter operation: The progress reporting operation monitor for progress and results
    /// - Parameter inProcessListener: The ProgressListener callback to be invoked when the operation emits an
    ///   in-process value
    func listenForInProcess<Request: AmplifyOperationRequest, InProcess, Success, Failure: AmplifyError>(
        to operation: AmplifyInProcessReportingOperation<Request, InProcess, Success, Failure>,
        inProcessListener: @escaping AmplifyInProcessReportingOperation<
        Request, InProcess, Success, Failure>.InProcessListener
    ) -> UnsubscribeToken {
        return operation.subscribe(inProcessListener: inProcessListener)
    }
}
