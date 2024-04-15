//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension DataStoreCategory: CategoryConfigurable {

    func configure(using amplifyConfiguration: AmplifyConfiguration) throws {
        if let configuration = categoryConfiguration(from: amplifyConfiguration) {
            try configure(using: configuration)
        } else {
            try configureFirstWithEmptyConfiguration()
        }
    }

    func configure(using configuration: CategoryConfiguration?) throws {
        guard !isConfigured else {
            let error = ConfigurationError.amplifyAlreadyConfigured(
                "\(categoryType.displayName) has already been configured.",
                "Remove the duplicate call to `Amplify.configure()`"
            )
            throw error
        }

        try Amplify.configure(plugins: Array(plugins.values), using: configuration)

        isConfigured = true
    }

    func configureFirstWithEmptyConfiguration() throws {
        guard !isConfigured else {
            let error = ConfigurationError.amplifyAlreadyConfigured(
                "\(categoryType.displayName) has already been configured.",
                "Remove the duplicate call to `Amplify.configure()`"
            )
            throw error
        }
        guard let dataStorePlugin = plugins.first else {
            return
        }

        try dataStorePlugin.value.configure(using: [])
        isConfigured = true
    }

}
