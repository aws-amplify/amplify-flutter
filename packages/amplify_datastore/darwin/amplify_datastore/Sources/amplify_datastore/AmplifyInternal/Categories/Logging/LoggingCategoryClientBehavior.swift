//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

public protocol LoggingCategoryClientBehavior {
    /// A reference to the `default` logger accessed by method calls directly to `Amplify.Logging`, as in
    /// `Amplify.Logging.debug("message")`. Default loggers must use the Logging category's `logLevel`.
    var `default`: Logger { get }

    /// Returns a category-specific logger at the specified level.
    func logger(forCategory category: String, logLevel: LogLevel) -> Logger

    /// Returns a category-specific logger. Defaults to using `Amplify.Logging.logLevel`.
    func logger(forCategory category: String) -> Logger

    /// enable plugin
    func enable()

    /// disable plugin
    func disable()

    /// adding namespace to match Android implementation
    func logger(forNamespace namespace: String) -> Logger

    /// new api to support category and namespace
    func logger(forCategory category: String, forNamespace namespace: String) -> Logger
}

public protocol Logger {

    /// The log level of the logger.
    var logLevel: LogLevel { get set }

    /// Logs a message at `error` level
    func error(_ message: @autoclosure () -> String)

    /// Logs the error at `error` level
    func error(error: Error)

    /// Logs a message at `warn` level
    func warn(_ message: @autoclosure () -> String)

    /// Logs a message at `info` level
    func info(_ message: @autoclosure () -> String)

    /// Logs a message at `debug` level
    func debug(_ message: @autoclosure () -> String)

    /// Logs a message at `verbose` level
    func verbose(_ message: @autoclosure () -> String)
}
