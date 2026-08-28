//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Protocol that defines a contract between the consumer and the DataStore plugin.
/// All models have to be registered and have an associated `version`.
public protocol AmplifyModelRegistration {

    /// Function called during plugin initialization. Implementations must
    /// register all the available models here.
    func registerModels(registry: ModelRegistry.Type)

    /// The version associated with the current schema.
    var version: String { get }
}
