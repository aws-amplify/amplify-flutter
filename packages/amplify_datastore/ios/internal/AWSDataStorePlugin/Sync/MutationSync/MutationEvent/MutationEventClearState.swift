//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

final class MutationEventClearState {

    let storageAdapter: StorageEngineAdapter
    init(storageAdapter: StorageEngineAdapter) {
        self.storageAdapter = storageAdapter
    }

    func clearStateOutgoingMutations(completion: @escaping BasicClosure) {
        let fields = MutationEvent.keys
        let predicate = fields.inProcess == true
        let sort = QuerySortDescriptor(fieldName: fields.createdAt.stringValue, order: .ascending)
        storageAdapter.query(MutationEvent.self,
                             predicate: predicate,
                             sort: [sort],
                             paginationInput: nil,
                             eagerLoad: true) { result in
                                switch result {
                                case .failure(let dataStoreError):
                                    log.error("Failed on clearStateOutgoingMutations: \(dataStoreError)")
                                case .success(let mutationEvents):
                                    if !mutationEvents.isEmpty {
                                        updateMutationsState(mutationEvents: mutationEvents,
                                                             completion: completion)
                                    } else {
                                        completion()
                                    }
                                }
        }
    }

    private func updateMutationsState(mutationEvents: [MutationEvent], completion: @escaping BasicClosure) {
        var numMutationEventsUpdated = 0
        for mutationEvent in mutationEvents {
            var inProcessEvent = mutationEvent
            inProcessEvent.inProcess = false
            storageAdapter.save(inProcessEvent, condition: nil, eagerLoad: true, completion: { result in
                switch result {
                case .success:
                    numMutationEventsUpdated += 1
                    if numMutationEventsUpdated >= mutationEvents.count {
                        completion()
                    }
                case .failure(let error):
                    self.log.error("Failed to update mutationEvent:\(error)")
                }
            })
        }
    }

}

extension MutationEventClearState: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
