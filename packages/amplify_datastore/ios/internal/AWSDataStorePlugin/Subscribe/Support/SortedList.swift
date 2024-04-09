//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify

class SortedList<ModelType: Model> {
    private(set) var sortedModels: [ModelType]
    private(set) var modelIds: Set<String>
    private let sortInput: [QuerySortDescriptor]?
    private let modelSchema: ModelSchema

    init(sortInput: [QuerySortDescriptor]?, modelSchema: ModelSchema) {
        self.sortedModels = []
        self.modelIds = []
        self.sortInput = sortInput
        self.modelSchema = modelSchema
    }

    /// Sets the internal data structures to the list of models. `sortedModels` should already be sorted to efficiently
    /// update the internal instructures of `SortedList`. If `sortedModels` is not sorted, then the subsequent
    /// methods used on the data structure will have adverse consequences, for example adding a model assumes the list
    /// is already sorted (since it performs a binary search insertion).
    func set(sortedModels: [ModelType]) {
        self.sortedModels = sortedModels
        modelIds = Set(sortedModels.map { $0.identifier(schema: modelSchema).stringValue })
    }

    /// Apply the incoming `model` to the sorted array based on the mutation type. This logic accounts for duplicate
    /// events since identical events may have different sources (local and remote). When the mutation type is delete,
    /// remove it if it exists in the array. When create/update and it has an sort order, then remove and add it back in
    /// the correct sort order. if there is no sort order, replace it.
    /// Return `true` if something occured (added, replaced, deleted), otherwise `false`
    @discardableResult func apply(model: ModelType, mutationType: MutationEvent.MutationType) -> Bool {
        if mutationType == MutationEvent.MutationType.delete {
            return remove(model)
        }

        guard let sortInputs = sortInput else {
            // If there is no sort order, check if it exists to replace, otherwise add it to the end
            appendOrReplace(model)
            return true
        }

        // When there is a sort input, always attempt to remove it before adding to the correct position.
        // If we had simply replaced it, and the update if applied to a field on the model that is the same as the
        // sort field, then it may no longer be in the correct position.
        _ = remove(model)
        add(model: model, sortInputs: sortInputs)
        return true
    }

    /// Add the incoming `model` to the sorted array based on the sort input, or at the end if none is provided.
    /// Search for the index by comparing the incoming model with the current model in the binary search traversal.
    /// If the models are equal in terms of their sort order (comparator returns `nil`), then move onto the next sort
    /// input. If all sort comparators return `nil`, then the incoming model is equal to the current model on all
    /// sort inputs,  and inserting at the index will maintain the overall sort order.
    func add(model: ModelType, sortInputs: [QuerySortDescriptor]) {
        let index = sortedModels.binarySearch { existingModel in
            var sortOrder: Bool?
            var sortIndex: Int = 0
            while sortOrder == nil && sortIndex < sortInputs.endIndex {
                let sortInput = sortInputs[sortIndex]
                // `existingModel` is passed as left argument so the binarySearch's `predicate` criteria is met, ie.
                // if `existingModel` should come before the `model`, keep searching the right half of the array
                sortOrder = modelSchema.comparator(model1: existingModel, model2: model, sortBy: sortInput)
                sortIndex += 1
            }
            return sortOrder
        }

        sortedModels.insert(model, at: index)
        modelIds.insert(model.identifier(schema: modelSchema).stringValue)
    }

    /// Tries to remove the `model`, if removed then return `true`, otherwise `false`
    func remove(_ model: ModelType) -> Bool {
        let identifier = model.identifier(schema: modelSchema)
        if modelIds.contains(identifier.stringValue),
           let index = sortedModels.firstIndex(where: {
               $0.identifier(schema: $0.schema).stringValue == identifier.stringValue
           }) {
            sortedModels.remove(at: index)
            modelIds.remove(identifier.stringValue)
            return true
        } else {
            return false
        }
    }

    /// Tries to replace the model with `model` if it already exists, otherwise append it to at the end
    func appendOrReplace(_ model: ModelType) {
        let identifier = model.identifier(schema: modelSchema)
        if modelIds.contains(identifier.stringValue),
           let index = sortedModels.firstIndex(where: { $0.identifier(schema: $0.schema).stringValue == identifier.stringValue }) {
            sortedModels[index] = model
        } else {
            sortedModels.append(model)
            modelIds.insert(identifier.stringValue)
        }
    }

    /// Removes the models in the list
    func reset() {
        sortedModels.removeAll()
        modelIds.removeAll()
    }
}

extension Array where Element: Model {

    /// Binary search an array that is expected to be sorted based on the `predicate`. The predicate should return
    /// `true` to continue searching on the right side by moving left index after the current middle index. Return
    /// `false` to continue searching on the left side by moving right index to the middle. If the `predicate` returns
    /// `nil` then the search is complete and return the index. There may be multiple models in the array that resolves
    /// to `nil`, however the index is immediately returned when found. The binary search is only possible on
    /// pre-sorted arrays to provide a O(log n) runtime and can be used to maintain the sorted array by inserting new
    /// models into the correct position.
    func binarySearch(predicate: (Element) -> Bool?) -> Index {
        var left = startIndex
        var right = endIndex
        while left != right {
            let middle = index(left, offsetBy: distance(from: left, to: right) / 2)
            guard let result = predicate(self[middle]) else {
                return middle
            }

            if result {
                left = index(after: middle)
            } else {
                right = middle
            }
        }
        return left
    }
}
