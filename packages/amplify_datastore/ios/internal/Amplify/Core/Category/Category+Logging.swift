//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

public extension Category {
    /// A default logger for the category
    ///
    /// - Tag: Category.log
    var log: Logger {
        Amplify.Logging.logger(forCategory: categoryType.displayName)
    }
}
