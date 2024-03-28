//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

struct InternalDatastoreConfiguration {

    /// `true` if any models are syncable. Resolved during configuration phase
    var isSyncEnabled: Bool

    /// Configuration of the query against the local storage, whether it should load
    /// the belongs-to/has-one associations or not.
    ///
    /// `isEagerLoad` is true by default, unless the models contain the rootPath
    /// which is indication of the codegen that supports for lazy loading.
    var isEagerLoad: Bool = true

    /// Identifier used to access the API plugin added to Amplify by api
    ///  `Amplify.API.getPlugin(for: identifier)`
    let validAPIPluginKey: String

    /// Identifier used to access the Auth plugin added to Amplify by api
    ///  `Amplify.Auth.getPlugin(for: identifier)`
    let validAuthPluginKey: String

    /// Configuration provided during Datastore initialization, this is a `public` configuration.
    let pluginConfiguration: DataStoreConfiguration

    mutating func updateIsSyncEnabled(_ isEnabled: Bool) {
        self.isSyncEnabled = isEnabled
    }

    mutating func updateIsEagerLoad(modelSchema: ModelSchema) {
        guard isEagerLoad else {
            return
        }

        if ModelRegistry.modelType(from: modelSchema.name)?.rootPath != nil {
            isEagerLoad = false
        }
    }
}
