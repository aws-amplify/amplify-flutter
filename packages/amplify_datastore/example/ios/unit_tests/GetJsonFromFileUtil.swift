/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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
