//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension LoggingCategory: Resettable {

    public func reset() async {
        log.verbose("Resetting \(categoryType) plugin")
        for (_, plugin) in plugins {
            await plugin.reset()
        }
        log.verbose("Resetting \(categoryType) plugin: finished")
        configurationState = .default
    }
}
