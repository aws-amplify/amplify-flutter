//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension GeoCategory: Resettable {

    public func reset() async {
        await withTaskGroup(of: Void.self) { taskGroup in
            for plugin in plugins.values {
                taskGroup.addTask { [weak self] in
                    self?.log.verbose("Resetting \(String(describing: self?.categoryType)) plugin")
                    await plugin.reset()
                    self?.log.verbose("Resetting \(String(describing: self?.categoryType)) plugin: finished")
                }
            }
            await taskGroup.waitForAll()
        }
        isConfigured = false
    }
}
