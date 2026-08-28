//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension ModelSchema {
    func lazyReferenceIdentifiers(from modelObject: [String: JSONValue]) throws -> [LazyReferenceIdentifier] {
        enum ExtractionError: Error {
            case unsupportedLazyReferenceIdentifier(name: String, value: JSONValue?)
        }

        var identifiers = [LazyReferenceIdentifier]()

        for identifierField in primaryKey.fields {
            let object = modelObject[identifierField.name]

            switch object {
            case .string(let identifierValue):
                identifiers.append(.init(name: identifierField.name, value: identifierValue))
            default:
                throw ExtractionError.unsupportedLazyReferenceIdentifier(
                    name: identifierField.name,
                    value: object
                )
            }
        }

        return identifiers
    }
}
