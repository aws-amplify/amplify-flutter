//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import AWSPluginsCore
import Combine
import Foundation

protocol DataStoreObserveQueryOperation {
    func resetState()
    func startObserveQuery(with storageEngine: StorageEngineBehavior)
}

class ObserveQueryRequest: AmplifyOperationRequest {
    var options: Any

    typealias Options = Any

    init(options: Any) {
        self.options = options
    }
}

/// Publishes a stream of `DataStoreQuerySnapshot` events.
///
/// Flow: When the operation starts executing
///     - Subscribe to DataStore hub events
///     - Subscribe to Item changes
///     - Perform initial query to set up the internal state of the items
///     - Generate first snapshot based on the internal state
///     When the operation receives item changes
///     - Batch them into batches of up to 1000 items or when 2 seconds have elapsed (`.collect(2s,1000)`)`
///     - Update internal state of items based on the changed items
///     - Generate new snapshot based on latest state of the items.
///
/// This operation should perform its methods under the serial DispatchQueue `serialQueue` to ensure all its properties
/// remain thread-safe.
class ObserveQueryTaskRunner<M: Model>: InternalTaskRunner, InternalTaskAsyncThrowingSequence, InternalTaskThrowingChannel, DataStoreObserveQueryOperation {
    typealias Request = ObserveQueryRequest
    typealias InProcess = DataStoreQuerySnapshot<M>
    var request: ObserveQueryRequest
    var context = InternalTaskAsyncThrowingSequenceContext<DataStoreQuerySnapshot<M>>()

    private let serialQueue = DispatchQueue(label: "com.amazonaws.AWSDataStoreObseverQueryOperation.serialQueue",
                                            target: DispatchQueue.global())
    private let itemsChangedPeriodicPublishTimeInSeconds: DispatchQueue.SchedulerTimeType.Stride = 2

    let modelType: M.Type
    let modelSchema: ModelSchema
    let predicate: QueryPredicate?
    let sortInput: [QuerySortDescriptor]?
    var storageEngine: StorageEngineBehavior
    var dataStorePublisher: ModelSubcriptionBehavior
    let dispatchedModelSyncedEvent: AtomicValue<Bool>
    let itemsChangedMaxSize: Int

    let stopwatch: Stopwatch
    var observeQueryStarted: Bool
    var currentItems: SortedList<M>
    var batchItemsChangedSink: AnyCancellable?
    var itemsChangedSink: AnyCancellable?
    var modelSyncedEventSink: AnyCancellable?

    var currentSnapshot: DataStoreQuerySnapshot<M> {
        DataStoreQuerySnapshot<M>(items: currentItems.sortedModels, isSynced: dispatchedModelSyncedEvent.get())
    }

    private var running = false

    var dataStoreStatePublisher: AnyPublisher<DataStoreState, DataStoreError>
    var dataStoreStateSink: AnyCancellable?

    init(request: ObserveQueryRequest = .init(options: []),
         context: InternalTaskAsyncThrowingSequenceContext<DataStoreQuerySnapshot<M>> = InternalTaskAsyncThrowingSequenceContext<DataStoreQuerySnapshot<M>>(),
         modelType: M.Type,
         modelSchema: ModelSchema,
         predicate: QueryPredicate?,
         sortInput: [QuerySortDescriptor]?,
         storageEngine: StorageEngineBehavior,
         dataStorePublisher: ModelSubcriptionBehavior,
         dataStoreConfiguration: DataStoreConfiguration,
         dispatchedModelSyncedEvent: AtomicValue<Bool>,
         dataStoreStatePublisher: AnyPublisher<DataStoreState, DataStoreError>) {
        self.request = request
        self.context = context

        self.modelType = modelType
        self.modelSchema = modelSchema
        self.predicate = predicate
        self.sortInput = sortInput
        self.storageEngine = storageEngine
        self.dataStorePublisher = dataStorePublisher
        self.dispatchedModelSyncedEvent = dispatchedModelSyncedEvent
        self.itemsChangedMaxSize = Int(dataStoreConfiguration.syncPageSize)
        self.stopwatch = Stopwatch()
        self.observeQueryStarted = false
        self.currentItems = SortedList(sortInput: sortInput, modelSchema: modelSchema)

        self.dataStoreStatePublisher = dataStoreStatePublisher
    }

    func run() async throws {
        guard !running else { return }
        running = true

        subscribeToDataStoreState()
        startObserveQuery()
    }

    func subscribeToDataStoreState() {
        serialQueue.async { [weak self] in
            guard let self = self else { return }

            self.dataStoreStateSink = self.dataStoreStatePublisher.sink { completion in
                switch completion {
                case .finished:
                    self.finish()
                case .failure(let error):
                    self.fail(error)
                }
            } receiveValue: { state in
                switch state {
                case .start(let storageEngine):
                    self.startObserveQuery(storageEngine)
                case .stop, .clear:
                    self.resetState()
                }
            }

        }
    }

    public func cancel() {
        serialQueue.sync {
            if let itemsChangedSink = itemsChangedSink {
                itemsChangedSink.cancel()
            }

            if let batchItemsChangedSink = batchItemsChangedSink {
                batchItemsChangedSink.cancel()
            }

            if let modelSyncedEventSink = modelSyncedEventSink {
                modelSyncedEventSink.cancel()
            }
        }
    }

    func resetState() {
        serialQueue.async {
            if !self.observeQueryStarted {
                return
            } else {
                self.observeQueryStarted = false
            }
            self.log.verbose("Resetting state")
            self.currentItems.reset()
            self.itemsChangedSink = nil
            self.batchItemsChangedSink = nil
            self.modelSyncedEventSink = nil
        }
    }

    func startObserveQuery(with storageEngine: StorageEngineBehavior) {
        startObserveQuery(storageEngine)
    }

    private func startObserveQuery(_ storageEngine: StorageEngineBehavior? = nil) {
        serialQueue.async {

            if self.observeQueryStarted {
                return
            } else {
                self.observeQueryStarted = true
            }

            if let storageEngine = storageEngine {
                self.storageEngine = storageEngine
            }
            self.log.verbose("Start ObserveQuery")
            self.subscribeToItemChanges()
            self.initialQuery()
        }
    }

    // MARK: - Query

    func initialQuery() {
        startSnapshotStopWatch()
        storageEngine.query(
            modelType,
            modelSchema: modelSchema,
            predicate: predicate,
            sort: sortInput,
            paginationInput: nil,
            eagerLoad: true,
            completion: { queryResult in
                switch queryResult {
                case .success(let queriedModels):
                    currentItems.set(sortedModels: queriedModels)
                    subscribeToModelSyncedEvent()
                    sendSnapshot()
                case .failure(let error):
                    fail(error)
                    return
                }
            })
    }

    // MARK: Observe item changes

    /// Subscribe to item changes with two subscribers (During Sync and After Sync). During Sync, the items are filtered
    /// by name and predicate, then collected by the timeOrCount grouping, before sent for processing the snapshot.
    /// After Sync, the item is only filtered by name, and not the predicate filter because updates to the item may
    /// make it so that the item no longer matches the predicate and requires to be removed from `currentItems`.
    /// This check is defered until `onItemChangedAfterSync` where the predicate is then used, and `currentItems` is
    /// accessed under the serial queue.
    func subscribeToItemChanges() {
        serialQueue.async { [weak self] in
            guard let self = self else { return }

            self.batchItemsChangedSink = self.dataStorePublisher.publisher
                .filter { _ in !self.dispatchedModelSyncedEvent.get() }
                .filter(self.filterByModelName(mutationEvent:))
                .filter(self.filterByPredicateMatch(mutationEvent:))
                .handleEvents(receiveOutput: self.onItemChangeDuringSync(mutationEvent:) )
                .collect(
                    .byTimeOrCount(
                        // on queue
                        self.serialQueue,
                        // collect over this timeframe
                        self.itemsChangedPeriodicPublishTimeInSeconds,
                        // If the `storageEngine` does sync from remote, the initial batch should
                        // collect snapshots based on time / snapshots received.
                        // If it doesn't, it should publish each snapshot without waiting.
                        self.storageEngine.syncsFromRemote
                        ? self.itemsChangedMaxSize
                        : 1
                    )
                )
                .sink(receiveCompletion: self.onReceiveCompletion(completed:),
                      receiveValue: self.onItemsChangeDuringSync(mutationEvents:))

            self.itemsChangedSink = self.dataStorePublisher.publisher
                .filter { _ in self.dispatchedModelSyncedEvent.get() }
                .filter(self.filterByModelName(mutationEvent:))
                .receive(on: self.serialQueue)
                .sink(receiveCompletion: self.onReceiveCompletion(completed:),
                      receiveValue: self.onItemChangeAfterSync(mutationEvent:))
        }
    }

    func subscribeToModelSyncedEvent() {
        modelSyncedEventSink = Amplify.Hub.publisher(for: .dataStore).sink { event in
            if event.eventName == HubPayload.EventName.DataStore.modelSynced,
               let modelSyncedEvent = event.data as? ModelSyncedEvent,
               modelSyncedEvent.modelName == self.modelSchema.name {
                self.serialQueue.async {
                    self.sendSnapshot()
                }
            }
        }
    }

    func filterByModelName(mutationEvent: MutationEvent) -> Bool {
        // Filter in the model when it matches the model name for this operation
        mutationEvent.modelName == modelSchema.name
    }

    func filterByPredicateMatch(mutationEvent: MutationEvent) -> Bool {
        // Filter in the model when there is no predicate to check against.
        guard let predicate = self.predicate else {
            return true
        }
        do {
            let model = try mutationEvent.decodeModel(as: modelType)
            // Filter in the model when the predicate matches, otherwise filter out
            return predicate.evaluate(target: model)
        } catch {
            log.error(error: error)
            return false
        }
    }

    func onItemChangeDuringSync(mutationEvent: MutationEvent) {
        serialQueue.async { [weak self] in
            guard let self = self, self.observeQueryStarted else {
                return
            }

            self.apply(itemsChanged: [mutationEvent])
        }
    }

    func onItemsChangeDuringSync(mutationEvents: [MutationEvent]) {
        serialQueue.async { [weak self] in
            guard let self = self,
                  self.observeQueryStarted,
                  !mutationEvents.isEmpty,
                  !self.dispatchedModelSyncedEvent.get()
            else { return }

            self.startSnapshotStopWatch()
            self.sendSnapshot()
        }
    }

    // Item changes after sync is more elaborate than item changes during sync because the item was never filtered out
    // by the predicate (unlike during sync). An item that no longer matches the predicate may already exist in the
    // snapshot and now needs to be removed. The evaluation is done here under the serial queue since checking to
    // remove the item requires that check on `currentItems` and is required to be performed under the serial queue.
    func onItemChangeAfterSync(mutationEvent: MutationEvent) {
        serialQueue.async {
            guard self.observeQueryStarted else {
                return
            }
            self.startSnapshotStopWatch()

            do {
                let model = try mutationEvent.decodeModel(as: self.modelType)
                guard let mutationType = MutationEvent.MutationType(rawValue: mutationEvent.mutationType) else {
                    return
                }

                guard let predicate = self.predicate else {
                    // 1. If there is no predicate, this item should be applied to the snapshot
                    if self.currentItems.apply(model: model, mutationType: mutationType) {
                        self.sendSnapshot()
                    }
                    return
                }

                // 2. When there is a predicate, evaluate further
                let modelMatchesPredicate = predicate.evaluate(target: model)

                guard !modelMatchesPredicate else {
                    // 3. When the item matchs the predicate, the item should be applied to the snapshot
                    if self.currentItems.apply(model: model, mutationType: mutationType) {
                        self.sendSnapshot()
                    }
                    return
                }

                // 4. When the item does not match the predicate, and is an update/delete, then the item needs to be
                // removed from `currentItems` because it no longer should be in the snapshot. If removing it was
                // was successfully, then send a new snapshot
                if mutationType == .update || mutationType == .delete, self.currentItems.remove(model) {
                    self.sendSnapshot()
                }
            } catch {
                self.log.error(error: error)
                return
            }

        }
    }

    /// Update `curentItems` list with the changed items.
    /// This method is not thread safe unless executed under the serial DispatchQueue `serialQueue`.
    private func apply(itemsChanged: [MutationEvent]) {
        for item in itemsChanged {
            do {
                let model = try item.decodeModel(as: modelType)
                guard let mutationType = MutationEvent.MutationType(rawValue: item.mutationType) else {
                    return
                }

                currentItems.apply(model: model, mutationType: mutationType)
            } catch {
                log.error(error: error)
                continue
            }
        }
    }

    private func startSnapshotStopWatch() {
        if log.logLevel >= .debug {
            stopwatch.start()
        }
    }

    private func sendSnapshot() {
        send(currentSnapshot)
        if log.logLevel >= .debug {
            let time = stopwatch.stop()
            log.debug("Time to generate snapshot: \(time) seconds. isSynced: \(dispatchedModelSyncedEvent.get()), count: \(currentSnapshot.items.count)")
        }
    }

    private func onReceiveCompletion(completed: Subscribers.Completion<DataStoreError>) {
        serialQueue.async { [weak self] in
            guard let self = self else { return }
            switch completed {
            case .finished:
                self.finish()
            case .failure(let error):
                self.fail(error)
            }
        }
    }
}

extension ObserveQueryTaskRunner: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
