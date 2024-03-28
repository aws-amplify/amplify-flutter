//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation

/// Class that wraps another `Logger` and saves the logs in memory
class PersistentLogWrapper: Logger {
    var logLevel: LogLevel

    var wrapper: Logger

    /// Array of `LogEntry` containing the history of logs
    private var logHistory: [LogEntryItem] = []

    /// Maximum number of `LogEntryItem`  stored
    static let logLimit = 2_000

    init(logWrapper: Logger) {
        self.wrapper = logWrapper
        self.logLevel = logWrapper.logLevel
    }

    func error(_ message: @autoclosure () -> String) {
        addToLogHistory(logItem: LogEntryItem(message: message(), logLevel: .error, timeStamp: Date()))
        wrapper.error(message())
    }

    func warn(_ message: @autoclosure () -> String) {
        addToLogHistory(logItem: LogEntryItem(message: message(), logLevel: .warn, timeStamp: Date()))
        wrapper.warn(message())
    }

    func error(error: Error) {
        addToLogHistory(logItem: LogEntryItem(message: error.localizedDescription, logLevel: .error, timeStamp: Date()))
        wrapper.error(error: error)
    }

    func info(_ message: @autoclosure () -> String) {
        addToLogHistory(logItem: LogEntryItem(message: message(), logLevel: .info, timeStamp: Date()))
        wrapper.info(message())
    }

    func debug(_ message: @autoclosure () -> String) {
        addToLogHistory(logItem: LogEntryItem(message: message(), logLevel: .debug, timeStamp: Date()))
        wrapper.debug(message())
    }

    func verbose(_ message: @autoclosure () -> String) {
        addToLogHistory(logItem: LogEntryItem(message: message(), logLevel: .verbose, timeStamp: Date()))
        wrapper.verbose(message())
    }

    func getLogHistory() -> [LogEntryItem] {
        return logHistory
    }

    private func addToLogHistory(logItem: LogEntryItem) {
        if logHistory.count == PersistentLogWrapper.logLimit {
            logHistory.removeFirst()
        }

        logHistory.append(logItem)
    }

}
#endif
