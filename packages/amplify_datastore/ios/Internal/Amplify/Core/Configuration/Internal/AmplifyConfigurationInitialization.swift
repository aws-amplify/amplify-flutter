//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension AmplifyConfiguration {
    init(bundle: Bundle) throws {
        guard let path = bundle.path(forResource: "amplifyconfiguration", ofType: "json") else {
            throw ConfigurationError.invalidAmplifyConfigurationFile(
                """
                Could not load default `amplifyconfiguration.json` file
                """,

                """
                Expected to find the file, `amplifyconfiguration.json` in the app bundle at `\(bundle.bundlePath)`, but
                it was not present. Either add amplifyconfiguration.json to your app's "Copy Bundle Resources" build
                phase, or invoke `Amplify.configure()` with a configuration object that you load from a custom path.
                """
            )
        }

        let url = URL(fileURLWithPath: path)

        self = try AmplifyConfiguration.loadAmplifyConfiguration(from: url)
    }

    static func loadAmplifyConfiguration(from url: URL) throws -> AmplifyConfiguration {
        let fileData: Data
        do {
            fileData = try Data(contentsOf: url)
        } catch {
            throw ConfigurationError.invalidAmplifyConfigurationFile(
                """
                Could not extract UTF-8 data from `\(url.path)`
                """,

                """
                Could not load data from the file at `\(url.path)`. Inspect the file to ensure it is present.
                The system reported the following error:
                \(error.localizedDescription)
                """,
                error
            )
        }

        return try decodeAmplifyConfiguration(from: fileData)
    }

    static func decodeAmplifyConfiguration(from data: Data) throws -> AmplifyConfiguration {
        let jsonDecoder = JSONDecoder()

        do {
            let configuration = try jsonDecoder.decode(AmplifyConfiguration.self, from: data)
            return configuration
        } catch {
            throw ConfigurationError.unableToDecode(
                """
                Could not decode `amplifyconfiguration.json` into a valid AmplifyConfiguration object
                """,

                """
                `amplifyconfiguration.json` was found, but could not be converted to an AmplifyConfiguration object
                using the default JSONDecoder. The system reported the following error:
                \(error.localizedDescription)
                """,
                error
            )
        }
    }

}
