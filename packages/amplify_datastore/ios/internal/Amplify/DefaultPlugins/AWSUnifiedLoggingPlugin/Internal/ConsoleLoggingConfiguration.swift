//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public struct ConsoleLoggingConfiguration: Codable {
    public init(enable: Bool = true) {
         self.enable = enable
    }

    public let enable: Bool
}

extension ConsoleLoggingConfiguration {
    init?(bundle: Bundle) {
        guard let path = bundle.path(forResource: "amplifyconfiguration_logging", ofType: "json") else {
            return nil
        }

        let url = URL(fileURLWithPath: path)

        if let config = try? ConsoleLoggingConfiguration.loadConfiguration(from: url) {
            self = config
        } else {
            return nil
        }
    }

    static func loadConfiguration(from url: URL) throws -> ConsoleLoggingConfiguration? {
        let fileData: Data
        do {
            fileData = try Data(contentsOf: url)
        } catch {
            throw LoggingError.configuration(
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

        return try decodeConfiguration(from: fileData)
    }

    static func decodeConfiguration(from data: Data) throws -> ConsoleLoggingConfiguration? {
        do {
            if let configuration = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
               let configurationJson = configuration["consoleLoggingPlugin"] as? [String: Any] {
                let decoder = JSONDecoder()
                let data = try JSONSerialization.data(withJSONObject: configurationJson)
                let consoleLoggingConfiguration = try decoder.decode(ConsoleLoggingConfiguration.self, from: data)
                return consoleLoggingConfiguration
            }
        } catch {
            throw LoggingError.configuration(
                """
                Could not decode `amplifyconfiguration_logging.json` into a valid ConsoleLoggingConfiguration object
                """,

                """
                `amplifyconfiguration_logging.json` was found, but could not be converted to an AmplifyConfiguration object
                using the default JSONDecoder. The system reported the following error:
                \(error.localizedDescription)
                """,
                error
            )
        }
        return nil
    }
}
