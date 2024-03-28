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

final class InitialSyncOperation: AsynchronousOperation {
    typealias SyncQueryResult = PaginatedList<AnyModel>

    private weak var api: APICategoryGraphQLBehaviorExtended?
    private weak var reconciliationQueue: IncomingEventReconciliationQueue?
    private weak var storageAdapter: StorageEngineAdapter?
    private let dataStoreConfiguration: DataStoreConfiguration
    private let authModeStrategy: AuthModeStrategy

    private let modelSchema: ModelSchema

    private var recordsReceived: UInt

    private var syncMaxRecords: UInt {
        return dataStoreConfiguration.syncMaxRecords
    }
    private var syncPageSize: UInt {
        return dataStoreConfiguration.syncPageSize
    }

    private var syncPredicate: QueryPredicate? {
        return dataStoreConfiguration.syncExpressions.first {
            $0.modelSchema.name == self.modelSchema.name
        }?.modelPredicate()
    }

    private var syncPredicateString: String? {
        guard let syncPredicate = syncPredicate,
              let data = try? syncPredicateEncoder.encode(syncPredicate) else {
            return nil
        }
        return String(data: data, encoding: .utf8)
    }

    private lazy var _syncPredicateEncoder: JSONEncoder = {
        var encoder = JSONEncoder()
        encoder.dateEncodingStrategy = ModelDateFormatting.encodingStrategy
        encoder.outputFormatting = [.sortedKeys]
        return encoder
    }()

    var syncPredicateEncoder: JSONEncoder {
        _syncPredicateEncoder
    }

    private let initialSyncOperationTopic: PassthroughSubject<InitialSyncOperationEvent, DataStoreError>
    var publisher: AnyPublisher<InitialSyncOperationEvent, DataStoreError> {
        return initialSyncOperationTopic.eraseToAnyPublisher()
    }

    init(modelSchema: ModelSchema,
         api: APICategoryGraphQLBehaviorExtended?,
         reconciliationQueue: IncomingEventReconciliationQueue?,
         storageAdapter: StorageEngineAdapter?,
         dataStoreConfiguration: DataStoreConfiguration,
         authModeStrategy: AuthModeStrategy) {
        self.modelSchema = modelSchema
        self.api = api
        self.reconciliationQueue = reconciliationQueue
        self.storageAdapter = storageAdapter
        self.dataStoreConfiguration = dataStoreConfiguration
        self.authModeStrategy = authModeStrategy

        self.recordsReceived = 0
        self.initialSyncOperationTopic = PassthroughSubject<InitialSyncOperationEvent, DataStoreError>()
    }

    override func main() {
        guard !isCancelled else {
            finish(result: .successfulVoid)
            return
        }

        log.info("Beginning sync for \(modelSchema.name)")
        let lastSyncMetadata = getLastSyncMetadata()
        let lastSyncTime = getLastSyncTime(lastSyncMetadata)
        Task {
            await query(lastSyncTime: lastSyncTime)
        }
    }

    private func getLastSyncMetadata() -> ModelSyncMetadata? {
        guard !isCancelled else {
            finish(result: .successfulVoid)
            return nil
        }

        guard let storageAdapter = storageAdapter else {
            log.error(error: DataStoreError.nilStorageAdapter())
            return nil
        }

        do {
            let modelSyncMetadata = try storageAdapter.queryModelSyncMetadata(for: modelSchema)
            return modelSyncMetadata
        } catch {
            log.error(error: error)
            return nil
        }
    }

    /// Retrieve the lastSync time for the request before performing the query operation.
    ///
    /// - Parameter lastSyncMetadata: Retrieved persisted sync metadata for this model
    /// - Returns: A `lastSync` time for the query request.
    func getLastSyncTime(_ lastSyncMetadata: ModelSyncMetadata?) -> Int64? {
        let syncType: SyncType
        let lastSyncTime: Int64?
        if syncPredicateChanged(self.syncPredicateString, lastSyncMetadata?.syncPredicate) {
            log.info("SyncPredicate for \(modelSchema.name) changed, performing full sync.")
            lastSyncTime = nil
            syncType = .fullSync
        } else {
            lastSyncTime = getLastSyncTime(lastSync: lastSyncMetadata?.lastSync)
            syncType = lastSyncTime == nil ? .fullSync : .deltaSync
        }
        initialSyncOperationTopic.send(.started(modelName: modelSchema.name, syncType: syncType))
        return lastSyncTime
    }

    private func syncPredicateChanged(_ lastSyncPredicate: String?, _ currentSyncPredicate: String?) -> Bool {
        switch (lastSyncPredicate, currentSyncPredicate) {
        case (.some, .some):
            return lastSyncPredicate != currentSyncPredicate
        case (.some, .none), (.none, .some):
            return true
        case (.none, .none):
            return false
        }
    }

    private func getLastSyncTime(lastSync: Int64?) -> Int64? {
        guard let lastSync = lastSync else {
            return nil
        }
        let lastSyncDate = Date(timeIntervalSince1970: TimeInterval.milliseconds(Double(lastSync)))
        let secondsSinceLastSync = (lastSyncDate.timeIntervalSinceNow * -1)
        if secondsSinceLastSync < 0 {
            log.info("lastSyncTime was in the future, assuming base query")
            return nil
        }

        let shouldDoDeltaQuery = secondsSinceLastSync < dataStoreConfiguration.syncInterval
        return shouldDoDeltaQuery ? lastSync : nil
    }

    private func query(lastSyncTime: Int64?, nextToken: String? = nil) async {
        guard !isCancelled else {
            finish(result: .successfulVoid)
            return
        }

        guard let api = api else {
            finish(result: .failure(DataStoreError.nilAPIHandle()))
            return
        }
        let minSyncPageSize = Int(min(syncMaxRecords - recordsReceived, syncPageSize))
        let limit = minSyncPageSize < 0 ? Int(syncPageSize) : minSyncPageSize
        let completionListener: GraphQLOperation<SyncQueryResult>.ResultListener = { result in
            switch result {
            case .failure(let apiError):
                if self.isAuthSignedOutError(apiError: apiError) {
                    self.log.error("Sync for \(self.modelSchema.name) failed due to signed out error \(apiError.errorDescription)")
                }

                // TODO: Retry query on error
                let error = DataStoreError.api(apiError)
                self.dataStoreConfiguration.errorHandler(error)
                self.finish(result: .failure(error))
            case .success(let graphQLResult):
                self.handleQueryResults(lastSyncTime: lastSyncTime, graphQLResult: graphQLResult)
            }
        }

        var authTypes = await authModeStrategy.authTypesFor(schema: modelSchema, operation: .read)

        RetryableGraphQLOperation(requestFactory: {
            GraphQLRequest<SyncQueryResult>.syncQuery(modelSchema: self.modelSchema,
                                                      where: self.syncPredicate,
                                                      limit: limit,
                                                      nextToken: nextToken,
                                                      lastSync: lastSyncTime,
                                                      authType: authTypes.next())
        },
                                  maxRetries: authTypes.count,
                                  resultListener: completionListener) { nextRequest, wrappedCompletionListener in
            api.query(request: nextRequest, listener: wrappedCompletionListener)
        }.main()
    }

    /// Disposes of the query results: Stops if error, reconciles results if success, and kick off a new query if there
    /// is a next token
    private func handleQueryResults(lastSyncTime: Int64?,
                                    graphQLResult: Result<SyncQueryResult, GraphQLResponseError<SyncQueryResult>>) {
        guard !isCancelled else {
            finish(result: .successfulVoid)
            return
        }

        guard let reconciliationQueue = reconciliationQueue else {
            finish(result: .failure(DataStoreError.nilReconciliationQueue()))
            return
        }

        let syncQueryResult: SyncQueryResult
        switch graphQLResult {
        case .success(let queryResult):
            syncQueryResult = queryResult

        case .failure(.partial(let queryResult, let errors)):
            syncQueryResult = queryResult
            errors.map { DataStoreError.api(APIError(errorDescription: $0.message, error: $0)) }
                .forEach { dataStoreConfiguration.errorHandler($0) }

        case .failure(let graphQLResponseError):
            finish(result: .failure(DataStoreError.api(graphQLResponseError)))
            return
        }

        let items = syncQueryResult.items
        recordsReceived += UInt(items.count)

        reconciliationQueue.offer(items, modelName: modelSchema.name)
        for item in items {
            initialSyncOperationTopic.send(.enqueued(item, modelName: modelSchema.name))
        }

        if let nextToken = syncQueryResult.nextToken, recordsReceived < syncMaxRecords {
            Task {
                await self.query(lastSyncTime: lastSyncTime, nextToken: nextToken)
            }
        } else {
            updateModelSyncMetadata(lastSyncTime: syncQueryResult.startedAt)
        }
    }

    private func updateModelSyncMetadata(lastSyncTime: Int64?) {
        guard !isCancelled else {
            finish(result: .successfulVoid)
            return
        }

        guard let storageAdapter = storageAdapter else {
            finish(result: .failure(DataStoreError.nilStorageAdapter()))
            return
        }

        let syncMetadata = ModelSyncMetadata(id: modelSchema.name,
                                             lastSync: lastSyncTime,
                                             syncPredicate: syncPredicateString)
        storageAdapter.save(syncMetadata, condition: nil, eagerLoad: true) { result in
            switch result {
            case .failure(let dataStoreError):
                self.finish(result: .failure(dataStoreError))
            case .success:
                self.finish(result: .successfulVoid)
            }
        }
    }

    private func isAuthSignedOutError(apiError: APIError) -> Bool {
        if case let .operationError(_, _, underlyingError) = apiError,
            let authError = underlyingError as? AuthError,
            case .signedOut = authError {
            return true
        }

        return false
    }

    private func finish(result: AWSInitialSyncOrchestrator.SyncOperationResult) {
        switch result {
        case .failure(let error):
            initialSyncOperationTopic.send(.finished(modelName: modelSchema.name, error: error))
            initialSyncOperationTopic.send(completion: .failure(error))
        case .success:
            initialSyncOperationTopic.send(.finished(modelName: modelSchema.name))
            initialSyncOperationTopic.send(completion: .finished)
        }
        super.finish()
    }

}

extension InitialSyncOperation: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
