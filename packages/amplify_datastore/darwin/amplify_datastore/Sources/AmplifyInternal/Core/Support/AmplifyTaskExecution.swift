//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//
import Foundation

/// Task that supports hub with execution of a single unit of work. .
///
/// See Also: [AmplifyTask](x-source-tag://AmplifyTask)
///
/// - Tag: AmplifyTaskExecution
public protocol AmplifyTaskExecution {

    associatedtype Success
    associatedtype Request
    associatedtype Failure: AmplifyError

    typealias AmplifyTaskExecutionResult = Result<Success, Failure>

    /// Blocks until the receiver has successfully collected a result or throws if an error was encountered.
    ///
    /// - Tag: AmplifyTaskExecution.value
    var value: Success { get async throws }

    /// Hub event name for the task
    ///
    /// - Tag: AmplifyTaskExecution.eventName
    var eventName: HubPayloadEventName { get }

    /// Category for which the Hub event would be dispatched for.
    ///
    /// - Tag: AmplifyTaskExecution.eventNameCategoryType
    var eventNameCategoryType: CategoryType { get }

    /// Executes  work represented by the receiver.
    ///
    /// - Tag: AmplifyTaskExecution.execute
    func execute() async throws -> Success

    /// Dispatches a hub event.
    ///
    /// - Tag: AmplifyTaskExecution.dispatch
    func dispatch(result: AmplifyTaskExecutionResult)

}

public extension AmplifyTaskExecution where Self: DefaultLogger {
    var value: Success {
        get async throws {
            do {
                log.info("Starting execution for \(eventName)")
                let valueReturned = try await execute()
                log.info("Successfully completed execution for \(eventName) with result:\n\(valueReturned)")
                dispatch(result: .success(valueReturned))
                return valueReturned
            } catch let error as Failure {
                log.error("Failed execution for \(eventName) with error:\n\(error)")
                dispatch(result: .failure(error))
                throw error
            }
        }
    }

    func dispatch(result: AmplifyTaskExecutionResult) {
        let channel = HubChannel(from: eventNameCategoryType)
        let payload = HubPayload(eventName: eventName, context: nil, data: result)
        Amplify.Hub.dispatch(to: channel, payload: payload)
    }
}
