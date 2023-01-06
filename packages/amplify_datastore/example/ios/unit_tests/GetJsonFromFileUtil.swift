// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify

func readJsonMap(filePath: String) throws -> [String: Any] {
    if let object = try readJson(filePath: filePath) as? [String: Any] {
        return object
    } else {
        throw NSError(domain: NSURLErrorDomain, code: NSURLErrorCannotDecodeRawData, userInfo: nil)
    }
}

func readJsonArray(filePath: String) throws -> [Any] {
    if let object = try readJson(filePath: filePath) as? [Any] {
        return object
    } else {
        throw NSError(domain: NSURLErrorDomain, code: NSURLErrorCannotDecodeRawData, userInfo: nil)
    }
}

private func readJson(filePath: String) throws -> Any {
    do {
        let bundle = Bundle(for: QueryPredicateBuilderUnitTests.self)
        if let file = bundle.url(forResource: filePath, withExtension: "json") {
            let data = try Data(contentsOf: file)
            return try JSONSerialization.jsonObject(with: data, options: [])
        } else {
            throw NSError(domain: NSURLErrorDomain, code: NSURLErrorCannotOpenFile, userInfo: nil)
        }
    } catch {
        print(error.localizedDescription)
        throw error
    }
}
