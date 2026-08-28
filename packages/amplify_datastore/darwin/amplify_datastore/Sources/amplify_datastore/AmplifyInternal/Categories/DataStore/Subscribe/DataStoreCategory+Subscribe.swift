//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Combine

extension DataStoreCategory: DataStoreSubscribeBehavior {
    public func observe<M: Model>(_ modelType: M.Type) -> AmplifyAsyncThrowingSequence<MutationEvent> {
        return plugin.observe(modelType)
    }

    public func observeQuery<M: Model>(for modelType: M.Type,
                                       where predicate: QueryPredicate? = nil,
                                       sort sortInput: QuerySortInput? = nil)
    -> AmplifyAsyncThrowingSequence<DataStoreQuerySnapshot<M>> {
        return plugin.observeQuery(for: modelType, where: predicate, sort: sortInput)
    }
}
