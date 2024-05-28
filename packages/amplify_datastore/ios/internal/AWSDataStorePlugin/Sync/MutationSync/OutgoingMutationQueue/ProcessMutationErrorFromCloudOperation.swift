//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine
import Foundation
import AWSPluginsCore

// swiftlint:disable type_body_length file_length
/// Checks the GraphQL error response for specific error scenarios related to data synchronziation to the local store.
/// 1. When there is an APIError which is for an unauthenticated user, call the error handler.
/// 2. When there is a "conditional request failed" error, then emit to the Hub a 'conditionalSaveFailed' event.
/// 3. When there is a "conflict unahandled" error, trigger the conflict handler and reconcile the state of the system.
class ProcessMutationErrorFromCloudOperation: AsynchronousOperation {

    typealias MutationSyncAPIRequest = GraphQLRequest<MutationSyncResult>
    typealias MutationSyncCloudResult = GraphQLOperation<MutationSync<AnyModel>>.OperationResult

    private let dataStoreConfiguration: DataStoreConfiguration
    private let storageAdapter: StorageEngineAdapter
    private let mutationEvent: MutationEvent
    private let graphQLResponseError: GraphQLResponseError<MutationSync<AnyModel>>?
    private let apiError: APIError?
    private let completion: (Result<MutationEvent?, Error>) -> Void
    private var mutationOperation: AtomicValue<GraphQLOperation<MutationSync<AnyModel>>?>
    private weak var api: APICategoryGraphQLBehavior?
    private weak var reconciliationQueue: IncomingEventReconciliationQueue?

    init(dataStoreConfiguration: DataStoreConfiguration,
         mutationEvent: MutationEvent,
         api: APICategoryGraphQLBehavior,
         storageAdapter: StorageEngineAdapter,
         graphQLResponseError: GraphQLResponseError<MutationSync<AnyModel>>? = nil,
         apiError: APIError? = nil,
         reconciliationQueue: IncomingEventReconciliationQueue? = nil,
         completion: @escaping (Result<MutationEvent?, Error>) -> Void) {
        self.dataStoreConfiguration = dataStoreConfiguration
        self.mutationEvent = mutationEvent
        self.api = api
        self.storageAdapter = storageAdapter
        self.graphQLResponseError = graphQLResponseError
        self.apiError = apiError
        self.reconciliationQueue = reconciliationQueue
        self.completion = completion
        self.mutationOperation = AtomicValue(initialValue: nil)

        super.init()
    }

    override func main() {
        log.verbose(#function)

        guard !isCancelled else {
            return
        }

        if let apiError = apiError {
            if isAuthSignedOutError(apiError: apiError) {
                log.verbose("User is signed out, passing error back to the error handler, and removing mutation event.")
            } else if let underlyingError = apiError.underlyingError {
                log.debug("Received APIError: \(apiError.localizedDescription) with underlying error: \(underlyingError.localizedDescription)")
            } else {
                log.debug("Received APIError: \(apiError.localizedDescription)")
            }
            dataStoreConfiguration.errorHandler(DataStoreError.api(apiError, mutationEvent))
            finish(result: .success(nil))
            return
        }

        guard let graphQLResponseError = graphQLResponseError else {
            dataStoreConfiguration.errorHandler(
                DataStoreError.api(APIError.unknown("This is unexpected. Missing APIError and GraphQLError.", ""),
                                   mutationEvent))
            finish(result: .success(nil))
            return
        }

        guard case let .error(graphQLErrors) = graphQLResponseError else {
            dataStoreConfiguration.errorHandler(DataStoreError.api(graphQLResponseError, mutationEvent))
            finish(result: .success(nil))
            return
        }

        guard graphQLErrors.count == 1 else {
            log.error("Received more than one error response: \(String(describing: graphQLResponseError))")
            dataStoreConfiguration.errorHandler(DataStoreError.api(graphQLResponseError, mutationEvent))
            finish(result: .success(nil))
            return
        }

        guard let graphQLError = graphQLErrors.first else {
            dataStoreConfiguration.errorHandler(DataStoreError.api(graphQLResponseError, mutationEvent))
            finish(result: .success(nil))
            return
        }

        if let extensions = graphQLError.extensions, case let .string(errorTypeValue) = extensions["errorType"] {
            let errorType = AppSyncErrorType(errorTypeValue)
            switch errorType {
            case .conditionalCheck:
                let payload = HubPayload(eventName: HubPayload.EventName.DataStore.conditionalSaveFailed,
                                         data: mutationEvent)
                Amplify.Hub.dispatch(to: .dataStore, payload: payload)
                dataStoreConfiguration.errorHandler(DataStoreError.api(graphQLResponseError, mutationEvent))
                finish(result: .success(nil))
            case .conflictUnhandled:
                processConflictUnhandled(extensions)
            case .unauthorized:
                log.debug("Unauthorized mutation \(errorType)")
                dataStoreConfiguration.errorHandler(DataStoreError.api(graphQLResponseError, mutationEvent))
                finish(result: .success(nil))
            case .operationDisabled:
                log.debug("Operation disabled \(errorType)")
                dataStoreConfiguration.errorHandler(DataStoreError.api(graphQLResponseError, mutationEvent))
                finish(result: .success(nil))
            case .unknown(let errorType):
                log.debug("Unhandled error with errorType \(errorType)")
                dataStoreConfiguration.errorHandler(DataStoreError.api(graphQLResponseError, mutationEvent))
                finish(result: .success(nil))
            }
        } else {
            log.debug("GraphQLError missing extensions and errorType \(graphQLError)")
            dataStoreConfiguration.errorHandler(DataStoreError.api(graphQLResponseError, mutationEvent))
            finish(result: .success(nil))
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

    private func processConflictUnhandled(_ extensions: [String: JSONValue]) {
        let localModel: Model
        do {
            localModel = try mutationEvent.decodeModel()
        } catch {
            let error = DataStoreError.unknown("Couldn't decode local model", "")
            finish(result: .failure(error))
            return
        }

        let remoteModel: MutationSync<AnyModel>
        switch getRemoteModel(extensions) {
        case .success(let model):
            remoteModel = model
        case .failure(let error):
            finish(result: .failure(error))
            return
        }
        let latestVersion = remoteModel.syncMetadata.version

        guard let mutationType = GraphQLMutationType(rawValue: mutationEvent.mutationType) else {
            let dataStoreError = DataStoreError.decodingError(
                "Invalid mutation type",
                """
                The incoming mutation event had a mutation type of \(mutationEvent.mutationType), which does not
                match any known GraphQL mutation type. Ensure you only send valid mutation types:
                \(GraphQLMutationType.allCases)
                """
            )
            log.error(error: dataStoreError)
            finish(result: .failure(dataStoreError))
            return
        }

        switch mutationType {
        case .create:
            let error = DataStoreError.unknown("Should never get conflict unhandled for create mutation",
                                               "This indicates something unexpected was returned from the service")
            finish(result: .failure(error))
            return
        case .delete:
            processLocalModelDeleted(localModel: localModel, remoteModel: remoteModel, latestVersion: latestVersion)
        case .update:
            processLocalModelUpdated(localModel: localModel, remoteModel: remoteModel, latestVersion: latestVersion)
        }
    }

    private func getRemoteModel(_ extensions: [String: JSONValue]) -> Result<MutationSync<AnyModel>, Error> {
        guard case let .object(data) = extensions["data"] else {
            let error = DataStoreError.unknown("Missing remote model from the response from AppSync.",
                                               "This indicates something unexpected was returned from the service")
            return .failure(error)
        }
        do {
            let serializedJSON = try JSONEncoder().encode(data)
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = ModelDateFormatting.decodingStrategy
            return .success(try decoder.decode(MutationSync<AnyModel>.self, from: serializedJSON))
        } catch {
            return .failure(error)
        }
    }

    private func processLocalModelDeleted(
        localModel: Model,
        remoteModel: MutationSync<AnyModel>,
        latestVersion: Int
    ) {
        guard !remoteModel.syncMetadata.deleted else {
            log.debug("Conflict Unhandled for data deleted in local and remote. Nothing to do, skip processing.")
            finish(result: .success(nil))
            return
        }

        let conflictData = DataStoreConflictData(local: localModel, remote: remoteModel.model.instance)
        dataStoreConfiguration.conflictHandler(conflictData) { result in
            switch result {
            case .applyRemote:
                self.saveCreateOrUpdateMutation(remoteModel: remoteModel)
            case .retryLocal:
                let request = GraphQLRequest<MutationSyncResult>.deleteMutation(of: localModel,
                                                                                modelSchema: localModel.schema,
                                                                                version: latestVersion)
                self.sendMutation(describedBy: request)
            case .retry(let model):
                guard let modelSchema = ModelRegistry.modelSchema(from: self.mutationEvent.modelName) else {
                    return Fatal.preconditionFailure("""
                    Could not retrieve schema for the model \(self.mutationEvent.modelName), verify that datastore is
                    initialized.
                    """)
                }
                let request = GraphQLRequest<MutationSyncResult>.updateMutation(of: model,
                                                                                modelSchema: modelSchema,
                                                                                version: latestVersion)
                self.sendMutation(describedBy: request)
            }
        }
    }

    private func processLocalModelUpdated(
        localModel: Model,
        remoteModel: MutationSync<AnyModel>,
        latestVersion: Int
    ) {
        guard !remoteModel.syncMetadata.deleted else {
            log.debug("Conflict Unhandled for updated local and deleted remote. Reconcile by deleting local")
            saveDeleteMutation(remoteModel: remoteModel)
            return
        }

        let conflictData = DataStoreConflictData(local: localModel, remote: remoteModel.model.instance)
        let latestVersion = remoteModel.syncMetadata.version
        dataStoreConfiguration.conflictHandler(conflictData) { result in
            switch result {
            case .applyRemote:
                self.saveCreateOrUpdateMutation(remoteModel: remoteModel)
            case .retryLocal:
                guard let modelSchema = ModelRegistry.modelSchema(from: self.mutationEvent.modelName) else {
                    return Fatal.preconditionFailure("""
                    Could not retrieve schema for the model \(self.mutationEvent.modelName), verify that datastore is
                    initialized.
                    """)
                }
                let request = GraphQLRequest<MutationSyncResult>.updateMutation(of: localModel,
                                                                                modelSchema: modelSchema,
                                                                                version: latestVersion)
                self.sendMutation(describedBy: request)
            case .retry(let model):
                guard let modelSchema = ModelRegistry.modelSchema(from: self.mutationEvent.modelName) else {
                    return Fatal.preconditionFailure("""
                    Could not retrieve schema for the model \(self.mutationEvent.modelName), verify that datastore is
                    initialized.
                    """)
                }
                let request = GraphQLRequest<MutationSyncResult>.updateMutation(of: model,
                                                                                modelSchema: modelSchema,
                                                                                version: latestVersion)
                self.sendMutation(describedBy: request)
            }
        }
    }

    // MARK: Sync to cloud

    private func sendMutation(describedBy apiRequest: MutationSyncAPIRequest) {
        guard !isCancelled else {
            return
        }

        guard let api = self.api else {
            log.error("\(#function): API unexpectedly nil")
            let apiError = APIError.unknown("API unexpectedly nil", "")
            finish(result: .failure(apiError))
            return
        }

        log.verbose("\(#function) sending mutation with data: \(apiRequest)")
        Task { [weak self] in
            do {
                let result = try await api.mutate(request: apiRequest)
                guard let self = self, !self.isCancelled else {
                    self?.finish(result: .failure(APIError.operationError("Mutation operation cancelled", "")))
                    return
                }

                self.log.verbose("sendMutationToCloud received asyncEvent: \(result)")
                self.validate(cloudResult: result, request: apiRequest)
            } catch {
                self?.finish(result: .failure(APIError.operationError("Failed to do mutation", "", error)))
            }
        }
    }

    private func validate(cloudResult: GraphQLResponse<MutationSyncResult>, request: MutationSyncAPIRequest) {
        guard !isCancelled else {
            return
        }

        switch cloudResult {
        case .success(let mutationSyncResult):
            guard let reconciliationQueue = reconciliationQueue else {
                let dataStoreError = DataStoreError.configuration(
                    "reconciliationQueue is unexpectedly nil",
                    """
                    The reference to reconciliationQueue has been released while an ongoing mutation was being processed.
                    \(AmplifyErrorMessages.reportBugToAWS())
                    """
                )
                finish(result: .failure(dataStoreError))
                return
            }

            reconciliationQueue.offer([mutationSyncResult], modelName: mutationEvent.modelName)
        case .failure(let graphQLResponseError):
            dataStoreConfiguration.errorHandler(graphQLResponseError)
        }

        finish(result: .success(nil))
    }

    // MARK: Reconcile Local Store

    private func saveDeleteMutation(remoteModel: MutationSync<AnyModel>) {
        log.verbose(#function)
        let modelName = remoteModel.model.modelName

        guard let modelType = ModelRegistry.modelType(from: modelName) else {
            let error = DataStoreError.invalidModelName("Invalid Model \(modelName)")
            finish(result: .failure(error))
            return
        }

        guard let modelSchema = ModelRegistry.modelSchema(from: modelName) else {
            let error = DataStoreError.invalidModelName("Invalid Model \(modelName)")
            finish(result: .failure(error))
            return
        }

        let identifier = remoteModel.model.identifier(schema: modelSchema)

        storageAdapter.delete(untypedModelType: modelType,
                              modelSchema: modelSchema,
                              withIdentifier: identifier,
                              condition: nil) { response in
            switch response {
            case .failure(let dataStoreError):
                let error = DataStoreError.unknown("Delete failed \(dataStoreError)", "")
                finish(result: .failure(error))
                return
            case .success:
                self.saveMetadata(storageAdapter: storageAdapter, inProcessModel: remoteModel)
            }
        }
    }

    private func saveCreateOrUpdateMutation(remoteModel: MutationSync<AnyModel>) {
        log.verbose(#function)
        storageAdapter.save(untypedModel: remoteModel.model.instance, eagerLoad: true) { response in
            switch response {
            case .failure(let dataStoreError):
                let error = DataStoreError.unknown("Save failed \(dataStoreError)", "")
                self.finish(result: .failure(error))
                return
            case .success(let savedModel):
                let anyModel: AnyModel
                do {
                    anyModel = try savedModel.eraseToAnyModel()
                } catch {
                    let error = DataStoreError.unknown("eraseToAnyModel failed \(error)", "")
                    self.finish(result: .failure(error))
                    return
                }
                let inProcessModel = MutationSync(model: anyModel, syncMetadata: remoteModel.syncMetadata)
                self.saveMetadata(storageAdapter: self.storageAdapter, inProcessModel: inProcessModel)
            }
        }
    }

    private func saveMetadata(storageAdapter: StorageEngineAdapter,
                              inProcessModel: MutationSync<AnyModel>) {
        log.verbose(#function)
        storageAdapter.save(inProcessModel.syncMetadata, condition: nil, eagerLoad: true) { result in
            switch result {
            case .failure(let dataStoreError):
                let error = DataStoreError.unknown("Save metadata failed \(dataStoreError)", "")
                self.finish(result: .failure(error))
                return
            case .success(let syncMetadata):
                let appliedModel = MutationSync(model: inProcessModel.model, syncMetadata: syncMetadata)
                self.notify(savedModel: appliedModel)
            }
        }
    }

    private func notify(savedModel: MutationSync<AnyModel>) {
        log.verbose(#function)

        guard !isCancelled else {
            return
        }

        let mutationType: MutationEvent.MutationType
        let version = savedModel.syncMetadata.version
        if savedModel.syncMetadata.deleted {
            mutationType = .delete
        } else if version == 1 {
            mutationType = .create
        } else {
            mutationType = .update
        }

        guard let mutationEvent = try? MutationEvent(untypedModel: savedModel.model.instance,
                                                     mutationType: mutationType,
                                                     version: version)
            else {
                let error = DataStoreError.unknown("Could not create MutationEvent", "")
                finish(result: .failure(error))
                return
        }

        let payload = HubPayload(eventName: HubPayload.EventName.DataStore.syncReceived,
                                 data: mutationEvent)
        Amplify.Hub.dispatch(to: .dataStore, payload: payload)

        finish(result: .success(mutationEvent))
    }

    override func cancel() {
        mutationOperation.get()?.cancel()
        let error = DataStoreError(error: OperationCancelledError())
        finish(result: .failure(error))
    }

    private func finish(result: Result<MutationEvent?, Error>) {
        mutationOperation.with { operation in
            operation?.removeResultListener()
            operation = nil
        }
        DispatchQueue.global().async {
            self.completion(result)
        }
        finish()
    }
}

extension ProcessMutationErrorFromCloudOperation: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
// swiftlint:enable type_body_length file_length
