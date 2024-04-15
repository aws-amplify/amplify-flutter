//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Defines a `log` convenience property, and provides a default implementation that returns a Logger for a category
/// name of `String(describing: self)`
public protocol DefaultLogger {
    static var log: Logger { get }
    var log: Logger { get }
}

public extension DefaultLogger {
    static var log: Logger {
        Amplify.Logging.logger(forCategory: String(describing: self))
    }
    var log: Logger {
        type(of: self).log
    }
}
