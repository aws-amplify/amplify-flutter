//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if canImport(Combine)
import Combine

extension List {

    public typealias LazyListPublisher = AnyPublisher<[Element], DataStoreError>

}
#endif
