//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import AWSPluginsCore
import Combine

enum IncomingReadyEventEmitter {
    case readyEvent
}

final class ReadyEventEmitter {
    var readySink: AnyCancellable?

    private var readyEventTopic: PassthroughSubject<IncomingReadyEventEmitter, Never>
    var publisher: AnyPublisher<IncomingReadyEventEmitter, Never> {
        return readyEventTopic.eraseToAnyPublisher()
    }

    init(remoteSyncEnginePublisher: AnyPublisher<RemoteSyncEngineEvent, DataStoreError>) {
        self.readyEventTopic = PassthroughSubject<IncomingReadyEventEmitter, Never>()

        let queriesReadyPublisher = ReadyEventEmitter.makeSyncQueriesReadyPublisher()
        let syncEngineStartedPublisher = ReadyEventEmitter.makeRemoteSyncEngineStartedPublisher(
            remoteSyncEnginePublisher: remoteSyncEnginePublisher
        )
        readySink = Publishers
            .Merge(queriesReadyPublisher, syncEngineStartedPublisher)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    self.readyEventTopic.send(.readyEvent)
                case .failure(let dataStoreError):
                    self.log.error("Failed to emit ready event, error: \(dataStoreError)")
                }
            }, receiveValue: { _ in })
    }

    private static func makeSyncQueriesReadyPublisher() -> AnyPublisher<Void, DataStoreError> {
        Amplify.Hub
            .publisher(for: .dataStore)
            .filter { $0.eventName == HubPayload.EventName.DataStore.syncQueriesReady }
            .first()
            .map { _ in () }
            .setFailureType(to: DataStoreError.self)
            .eraseToAnyPublisher()
    }

    private static func makeRemoteSyncEngineStartedPublisher(
        remoteSyncEnginePublisher: AnyPublisher<RemoteSyncEngineEvent, DataStoreError>
    ) -> AnyPublisher<Void, DataStoreError> {
        remoteSyncEnginePublisher
            .filter { if case .syncStarted = $0 { return true } else { return false } }
            .first()
            .map { _ in () }
            .eraseToAnyPublisher()
    }
}

extension ReadyEventEmitter: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
