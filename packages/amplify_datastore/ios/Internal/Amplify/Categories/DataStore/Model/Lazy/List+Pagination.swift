//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension List {

    /// Check if there is subsequent data to retrieve. If true, the next page can be retrieved using
    /// `getNextPage(completion:)`. Calling `hasNextPage()` will load the underlying elements from the data source if not yet
    /// loaded before.
    public func hasNextPage() -> Bool {
        switch loadedState {
        case .loaded:
            return listProvider.hasNextPage()
        case .notLoaded:
            let message = "Call `fetch` to lazy load the list before using this method."
            Amplify.log.error(message)
            assertionFailure(message)
            return false
        }
    }

    /// Retrieve the next page as a new in-memory List object. Calling `getNextPage(completion:)` will load the
    /// underlying elements of the receiver from the data source if not yet loaded before
    public func getNextPage() async throws -> List<Element> {
        switch loadedState {
        case .loaded:
            return try await listProvider.getNextPage()
        case .notLoaded:
            let message = "Call `fetch` to lazy load the list before using this method."
            let error: CoreError = .listOperation(message, "", nil)
            Amplify.log.error(error: error)
            assertionFailure(message)
            throw error
        }
    }
}
