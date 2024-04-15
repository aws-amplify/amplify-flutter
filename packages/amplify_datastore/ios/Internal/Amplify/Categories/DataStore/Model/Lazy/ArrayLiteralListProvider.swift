//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public struct ArrayLiteralListProvider<Element: Model>: ModelListProvider {

    let elements: [Element]
    public init(elements: [Element]) {
        self.elements = elements
    }

    public func getState() -> ModelListProviderState<Element> {
        return .loaded(elements)
    }

    public func load() -> Result<[Element], CoreError> {
        .success(elements)
    }

    public func load(completion: @escaping (Result<[Element], CoreError>) -> Void) {
        completion(.success(elements))
    }

    public func load() async throws -> [Element] {
        return elements
    }

    public func hasNextPage() -> Bool {
        false
    }

    public func getNextPage(completion: @escaping (Result<List<Element>, CoreError>) -> Void) {
        completion(.failure(CoreError.clientValidation("No pagination on an array literal",
                                                       "Don't call this method",
                                                       nil)))
    }

    public func getNextPage() async throws -> List<Element> {
        throw CoreError.clientValidation("No pagination on an array literal",
                                                       "Don't call this method",
                                                       nil)
    }

    public func encode(to encoder: Encoder) throws {
        try elements.encode(to: encoder)
    }
}
