//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Combine
import Foundation

/// Collects all subscription types for a given model into a single subscribable publisher.
///
/// The queue "Element" is AnyModel to allow for queues to be collected into an aggregate structure upstream, but each
/// individual EventQueue operates on a single, specific Model type.
///
/// At initialization, the Queue sets up subscriptions, via the provided `APICategoryGraphQLBehavior`, for each type
/// `GraphQLSubscriptionType` and holds a reference to the returned operation. The operations' listeners enqueue
/// incoming successful events onto a `Publisher`, that queue processors can subscribe to.
final class IncomingAsyncSubscriptionEventPublisher: AmplifyCancellable {
    typealias Payload = MutationSync<AnyModel>
    typealias Event = GraphQLSubscriptionEvent<Payload>

    private var onCreateOperation: RetryableGraphQLSubscriptionOperation<Payload>?
    private var onCreateValueListener: GraphQLSubscriptionOperation<Payload>.InProcessListener?
    private var onCreateConnected: Bool

    private var onUpdateOperation: RetryableGraphQLSubscriptionOperation<Payload>?
    private var onUpdateValueListener: GraphQLSubscriptionOperation<Payload>.InProcessListener?
    private var onUpdateConnected: Bool

    private var onDeleteOperation: RetryableGraphQLSubscriptionOperation<Payload>?
    private var onDeleteValueListener: GraphQLSubscriptionOperation<Payload>.InProcessListener?
    private var onDeleteConnected: Bool

    private let connectionStatusQueue: OperationQueue
    private var combinedConnectionStatusIsConnected: Bool {
        return onCreateConnected && onUpdateConnected && onDeleteConnected
    }

    private let incomingSubscriptionEvents = PassthroughSubject<Event, DataStoreError>()
    private var cancelables = Set<AnyCancellable>()
    private let awsAuthService: AWSAuthServiceBehavior

    private let consistencyQueue: DispatchQueue
    private let taskQueue: TaskQueue<Void>
    private let modelName: ModelName

    init(modelSchema: ModelSchema,
         api: APICategoryGraphQLBehavior,
         modelPredicate: QueryPredicate?,
         auth: AuthCategoryBehavior?,
         authModeStrategy: AuthModeStrategy,
         awsAuthService: AWSAuthServiceBehavior? = nil) async {
        self.onCreateConnected = false
        self.onUpdateConnected = false
        self.onDeleteConnected = false
        self.consistencyQueue = DispatchQueue(
            label: "com.amazonaws.Amplify.RemoteSyncEngine.\(modelSchema.name)"
        )
        self.taskQueue = TaskQueue()
        self.modelName = modelSchema.name

        self.connectionStatusQueue = OperationQueue()
        connectionStatusQueue.name
            = "com.amazonaws.Amplify.RemoteSyncEngine.\(modelSchema.name).IncomingAsyncSubscriptionEventPublisher"
        connectionStatusQueue.maxConcurrentOperationCount = 1
        connectionStatusQueue.isSuspended = false

        self.awsAuthService = awsAuthService ?? AWSAuthService()

        // onCreate operation
        self.onCreateValueListener = onCreateValueListenerHandler(event:)
        self.onCreateOperation = await retryableOperation(
            subscriptionType: .create,
            modelSchema: modelSchema,
            authModeStrategy: authModeStrategy,
            auth: auth,
            api: api
        )
        onCreateOperation?.subscribe()
            .sink(receiveCompletion: genericCompletionListenerHandler(result:), receiveValue: onCreateValueListener!)
            .store(in: &cancelables)

        // onUpdate operation
        self.onUpdateValueListener = onUpdateValueListenerHandler(event:)
        self.onUpdateOperation = await retryableOperation(
            subscriptionType: .update,
            modelSchema: modelSchema,
            authModeStrategy: authModeStrategy,
            auth: auth,
            api: api
        )
        onUpdateOperation?.subscribe()
            .sink(receiveCompletion: genericCompletionListenerHandler(result:), receiveValue: onUpdateValueListener!)
            .store(in: &cancelables)

        // onDelete operation
        self.onDeleteValueListener = onDeleteValueListenerHandler(event:)
        self.onDeleteOperation = await retryableOperation(
            subscriptionType: .delete,
            modelSchema: modelSchema,
            authModeStrategy: authModeStrategy,
            auth: auth,
            api: api
        )
        onDeleteOperation?.subscribe()
            .sink(receiveCompletion: genericCompletionListenerHandler(result:), receiveValue: onDeleteValueListener!)
            .store(in: &cancelables)
    }


    func retryableOperation(
        subscriptionType: IncomingAsyncSubscriptionType,
        modelSchema: ModelSchema,
        authModeStrategy: AuthModeStrategy,
        auth: AuthCategoryBehavior?,
        api: APICategoryGraphQLBehavior
    ) async -> RetryableGraphQLSubscriptionOperation<Payload> {
        let authTypeProvider = await authModeStrategy.authTypesFor(
            schema: modelSchema,
            operations: subscriptionType.operations
        )

        return RetryableGraphQLSubscriptionOperation(
            requestStream: AsyncStream { continuation in
                for authType in authTypeProvider {
                    continuation.yield({ [weak self] in
                        guard let self else {
                            throw APIError.operationError("GraphQL subscription cancelled", "")
                        }

                        return api.subscribe(request: await IncomingAsyncSubscriptionEventPublisher.makeAPIRequest(
                            for: modelSchema,
                            subscriptionType: subscriptionType.subscriptionType,
                            api: api,
                            auth: auth,
                            authType: authType.awsAuthType,
                            awsAuthService: self.awsAuthService
                        ))
                    })
                }
                continuation.finish()
            }

        )
    }

    func onCreateValueListenerHandler(event: Event) {
        log.verbose("onCreateValueListener: \(event)")
        let onCreateConnectionOp = CancelAwareBlockOperation {
            self.onCreateConnected = self.isConnectionStatusConnected(for: event)
            self.sendConnectionEventIfConnected(event: event)
        }
        genericValueListenerHandler(event: event, cancelAwareBlock: onCreateConnectionOp)
    }

    func onUpdateValueListenerHandler(event: Event) {
        log.verbose("onUpdateValueListener: \(event)")
        let onUpdateConnectionOp = CancelAwareBlockOperation {
            self.onUpdateConnected = self.isConnectionStatusConnected(for: event)
            self.sendConnectionEventIfConnected(event: event)
        }
        genericValueListenerHandler(event: event, cancelAwareBlock: onUpdateConnectionOp)
    }

    func onDeleteValueListenerHandler(event: Event) {
        log.verbose("onDeleteValueListener: \(event)")
        let onDeleteConnectionOp = CancelAwareBlockOperation {
            self.onDeleteConnected = self.isConnectionStatusConnected(for: event)
            self.sendConnectionEventIfConnected(event: event)
        }
        genericValueListenerHandler(event: event, cancelAwareBlock: onDeleteConnectionOp)
    }

    func isConnectionStatusConnected(for event: Event) -> Bool {
        if case .connection(.connected) = event {
            return true
        }
        return false
    }

    func sendConnectionEventIfConnected(event: Event) {
        if combinedConnectionStatusIsConnected {
            send(event)
        }
    }

    func genericValueListenerHandler(event: Event, cancelAwareBlock: CancelAwareBlockOperation) {
        if case .connection = event {
            connectionStatusQueue.addOperation(cancelAwareBlock)
        } else {
            send(event)
        }
    }

    func genericCompletionListenerHandler(result: Subscribers.Completion<APIError>) {
        switch result {
        case .finished:
            send(completion: .finished)
        case .failure(let apiError):
            log.verbose("[InitializeSubscription.1] API.subscribe failed for `\(modelName)` error: \(apiError.errorDescription)")
            let dataStoreError = DataStoreError(error: apiError)
            send(completion: .failure(dataStoreError))
        }
    }

    static func makeAPIRequest(for modelSchema: ModelSchema,
                               subscriptionType: GraphQLSubscriptionType,
                               api: APICategoryGraphQLBehavior,
                               auth: AuthCategoryBehavior?,
                               authType: AWSAuthorizationType?,
                               awsAuthService: AWSAuthServiceBehavior) async -> GraphQLRequest<Payload> {
        let request: GraphQLRequest<Payload>
        if modelSchema.hasAuthenticationRules,
            let _ = auth,
            let tokenString = try? await awsAuthService.getUserPoolAccessToken(),
            case .success(let claims) = awsAuthService.getTokenClaims(tokenString: tokenString) {
            request = GraphQLRequest<Payload>.subscription(to: modelSchema,
                                                           subscriptionType: subscriptionType,
                                                           claims: claims,
                                                           authType: authType)
        } else if modelSchema.hasAuthenticationRules,
            let oidcAuthProvider = hasOIDCAuthProviderAvailable(api: api),
            let tokenString = try? await oidcAuthProvider.getLatestAuthToken(),
            case .success(let claims) = awsAuthService.getTokenClaims(tokenString: tokenString) {
            request = GraphQLRequest<Payload>.subscription(to: modelSchema,
                                                           subscriptionType: subscriptionType,
                                                           claims: claims,
                                                           authType: authType)
        } else {
            request = GraphQLRequest<Payload>.subscription(to: modelSchema,
                                                           subscriptionType: subscriptionType,
                                                           authType: authType)
        }

        return request
    }

    static func hasOIDCAuthProviderAvailable(api: APICategoryGraphQLBehavior) -> AmplifyOIDCAuthProvider? {
        if let apiPlugin = api as? APICategoryAuthProviderFactoryBehavior,
            let oidcAuthProvider = apiPlugin.apiAuthProviderFactory().oidcAuthProvider() {
            return oidcAuthProvider
        }
        return nil
    }

    func subscribe<S: Subscriber>(subscriber: S) where S.Input == Event, S.Failure == DataStoreError {
        incomingSubscriptionEvents.subscribe(subscriber)
    }

    func send(_ event: Event) {
        taskQueue.async { [weak self] in
            guard let self else { return }
            self.incomingSubscriptionEvents.send(event)
        }
    }

    func send(completion: Subscribers.Completion<DataStoreError>) {
        taskQueue.async { [weak self] in
            guard let self else { return }
            self.incomingSubscriptionEvents.send(completion: completion)
        }
    }

    func cancel() {
        consistencyQueue.sync {
            genericCompletionListenerHandler(result: .finished)

            onCreateOperation?.cancel()
            onCreateOperation = nil
            onCreateValueListener = nil

            onUpdateOperation?.cancel()
            onUpdateOperation = nil
            onUpdateValueListener = nil

            onDeleteOperation?.cancel()
            onDeleteOperation = nil
            onDeleteValueListener = nil

            connectionStatusQueue.cancelAllOperations()
            connectionStatusQueue.waitUntilAllOperationsAreFinished()
        }
    }

    func reset() {
        consistencyQueue.sync {
            onCreateOperation?.cancel()
            onCreateOperation = nil
            onCreateValueListener?(.connection(.disconnected))

            onUpdateOperation?.cancel()
            onUpdateOperation = nil
            onUpdateValueListener?(.connection(.disconnected))

            onDeleteOperation?.cancel()
            onDeleteOperation = nil
            onDeleteValueListener?(.connection(.disconnected))

            genericCompletionListenerHandler(result: .finished)
        }
    }

}

enum IncomingAsyncSubscriptionType {
    case create
    case delete
    case update

    var operations: [ModelOperation] {
        switch self {
        case .create: return [.create, .read]
        case .delete: return [.delete, .read]
        case .update: return [.update, .read]
        }
    }

    var subscriptionType: GraphQLSubscriptionType {
        switch self {
        case .create: return .onCreate
        case .delete: return .onDelete
        case .update: return .onUpdate
        }
    }

}

extension IncomingAsyncSubscriptionEventPublisher: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
