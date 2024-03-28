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

enum IncomingModelSyncedEmitterEvent {
    case mutationEventApplied(MutationEvent)
    case mutationEventDropped(modelName: String, error: DataStoreError? = nil)
    case modelSyncedEvent(ModelSyncedEvent)
}

/// Listens to events published by both the `InitialSyncOrchestrator` and `IncomingEventReconciliationQueue`,
/// and emits a `ModelSyncedEvent` when the initial sync is complete. This class expects
/// `InitialSyncOrchestrator` and `IncomingEventReconciliationQueue` to have matching counts
/// for the events they enqueue and process, respectively. Always send back the reconciled event
/// (`.mutationEventApplied`, `.mutationEventDropped`). The flow also provides a guaranteed sequence of events for the
/// mutation event which causes the `ModelSyncedEvent` to be emitted afterwards by
///     - Check if it `ModelSyncedEvent` should be emitted, if so, emit it.
///     - Then send the mutation event which was used in the check above.
final class ModelSyncedEventEmitter {
    private let queue = DispatchQueue(label: "com.amazonaws.ModelSyncedEventEmitterQueue",
                                      target: DispatchQueue.global())

    private var syncOrchestratorSink: AnyCancellable?
    private var reconciliationQueueSink: AnyCancellable?

    private let modelSchema: ModelSchema
    private var recordsReceived: Int
    private var reconciledReceived: Int
    private var initialSyncOperationFinished: Bool

    private var modelSyncedEventBuilder: ModelSyncedEvent.Builder

    private var modelSyncedEventTopic: PassthroughSubject<IncomingModelSyncedEmitterEvent, Never>
    var publisher: AnyPublisher<IncomingModelSyncedEmitterEvent, Never> {
        return modelSyncedEventTopic.eraseToAnyPublisher()
    }

    var shouldSendModelSyncedEvent: Bool {
        initialSyncOperationFinished && reconciledReceived == recordsReceived
    }

    /// Used within ModelSyncedEventEmitter instances, not thread-safe, is accessed serially under DispatchQueue.
    var dispatchedModelSyncedEvent: Bool

    init(modelSchema: ModelSchema,
         initialSyncOrchestrator: InitialSyncOrchestrator?,
         reconciliationQueue: IncomingEventReconciliationQueue?) {
        self.modelSchema = modelSchema
        self.recordsReceived = 0
        self.reconciledReceived = 0
        self.initialSyncOperationFinished = false
        self.dispatchedModelSyncedEvent = false
        self.modelSyncedEventBuilder = ModelSyncedEvent.Builder()

        self.modelSyncedEventTopic = PassthroughSubject<IncomingModelSyncedEmitterEvent, Never>()

        self.syncOrchestratorSink = initialSyncOrchestrator?
            .publisher
            .receive(on: queue)
            .filter(filterSyncOperationEvent(_:))
            .sink(receiveCompletion: { _ in },
                  receiveValue: { [weak self] value in
                    self?.onReceiveSyncOperationEvent(value: value)
            })

        self.reconciliationQueueSink = reconciliationQueue?
            .publisher
            .receive(on: queue)
            .filter(filterReconciliationQueueEvent(_:))
            .sink(receiveCompletion: { _ in },
                  receiveValue: { [weak self] value in
                    self?.onReceiveReconciliationEvent(value: value)
            })
    }

    /// Filtering `InitialSyncOperationEvent`s that come from `InitialSyncOperation` of the same ModelType
    private func filterSyncOperationEvent(_ value: InitialSyncOperationEvent) -> Bool {
        switch value {
        case .started(let modelName, _):
            return modelSchema.name == modelName
        case .enqueued(_, let modelName):
            return modelSchema.name == modelName
        case .finished(let modelName, _):
            return modelSchema.name == modelName
        }
    }

    /// Filtering `IncomingEventReconciliationQueueEvent`s that come from `ReconciliationAndLocalSaveOperation`
    /// of the same ModelType
    private func filterReconciliationQueueEvent(_ value: IncomingEventReconciliationQueueEvent) -> Bool {
        switch value {
        case .mutationEventApplied(let event):
            return modelSchema.name == event.modelName
        case .mutationEventDropped(let modelName, _):
            return modelSchema.name == modelName
        case .idle, .initialized, .started, .paused:
            return false
        }
    }

    private func onReceiveSyncOperationEvent(value: InitialSyncOperationEvent) {
        switch value {
        case .started(_, let syncType):
            modelSyncedEventBuilder.isFullSync = syncType == .fullSync ? true : false
            modelSyncedEventBuilder.isDeltaSync = !modelSyncedEventBuilder.isFullSync
        case .enqueued:
            recordsReceived += 1
        case .finished:
            if recordsReceived == 0 || recordsReceived == reconciledReceived {
                sendModelSyncedEvent()
            } else {
                initialSyncOperationFinished = true
            }
        }
    }

    private func onReceiveReconciliationEvent(value: IncomingEventReconciliationQueueEvent) {
        guard !dispatchedModelSyncedEvent else {
            switch value {
            case .mutationEventApplied(let event):
                modelSyncedEventTopic.send(.mutationEventApplied(event))
            case .mutationEventDropped(let modelName, let error):
                modelSyncedEventTopic.send(.mutationEventDropped(modelName: modelName, error: error))
            case .idle, .initialized, .started, .paused:
                return
            }
            return
        }

        switch value {
        case .mutationEventApplied(let event):
            reconciledReceived += 1
            switch GraphQLMutationType(rawValue: event.mutationType) {
            case .create:
                modelSyncedEventBuilder.added += 1
            case .update:
                modelSyncedEventBuilder.updated += 1
            case .delete:
                modelSyncedEventBuilder.deleted += 1
            default:
                log.error("Unexpected mutationType received: \(event.mutationType)")
            }

            modelSyncedEventTopic.send(.mutationEventApplied(event))
            if shouldSendModelSyncedEvent {
                sendModelSyncedEvent()
            }
        case .mutationEventDropped(let modelName, let error):
            reconciledReceived += 1
            modelSyncedEventTopic.send(.mutationEventDropped(modelName: modelName, error: error))
            if shouldSendModelSyncedEvent {
                sendModelSyncedEvent()
            }
        case .idle, .initialized, .started, .paused:
            return
        }
    }

    private func sendModelSyncedEvent() {
        modelSyncedEventBuilder.modelName = modelSchema.name
        let modelSyncedEvent = modelSyncedEventBuilder.build()
        log.verbose("[Lifecycle event 3]: modelSyncedEvent model: \(modelSchema.name)")
        modelSyncedEventTopic.send(.modelSyncedEvent(modelSyncedEvent))
        dispatchedModelSyncedEvent = true
        syncOrchestratorSink?.cancel()
    }
}

extension ModelSyncedEventEmitter: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
