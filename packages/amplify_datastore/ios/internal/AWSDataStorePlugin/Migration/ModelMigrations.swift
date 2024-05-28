//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

protocol ModelMigration {
    func apply() throws
}

class ModelMigrations {
    var modelMigrations: [ModelMigration]

    init(modelMigrations: [ModelMigration]) {
        self.modelMigrations = modelMigrations
    }

    func apply() throws {
        for modelMigrations in modelMigrations {
            try modelMigrations.apply()
        }
    }
}
