import Foundation
import Flutter
import Amplify
import AWSPluginsCore
import Combine



public class FlutterApiPlugin: APICategoryPlugin
{
    public var key: PluginKey = "awsAPIPlugin"
    private let apiAuthFactory: APIAuthProviderFactory
    private let nativeApiPlugin: NativeApiPlugin
    private let nativeSubscriptionEvents: PassthroughSubject<NativeGraphQLSubscriptionResponse, Never>
    private var cancellables = Set<AnyCancellable>()

    init(
        apiAuthProviderFactory: APIAuthProviderFactory,
        nativeApiPlugin: NativeApiPlugin,
        subscriptionEventBus: PassthroughSubject<NativeGraphQLSubscriptionResponse, Never>
    ) {
        self.apiAuthFactory = apiAuthProviderFactory
        self.nativeApiPlugin = nativeApiPlugin
        self.nativeSubscriptionEvents = subscriptionEventBus
    }
    
    public func query<R>(request: GraphQLRequest<R>) async throws -> GraphQLTask<R>.Success where R : Decodable {
        let response = await asyncQuery(nativeRequest: request.toNativeGraphQLRequest())
        return try decodeGraphQLPayloadJson(request: request, payload: response.payloadJson)
    }
    

    public func mutate<R>(request: GraphQLRequest<R>) async throws -> GraphQLTask<R>.Success where R : Decodable {
        let response = await asyncMutate(nativeRequest: request.toNativeGraphQLRequest())
        return try decodeGraphQLPayloadJson(request: request, payload: response.payloadJson)
    }
    
    public func subscribe<R: Decodable>(
        request: GraphQLRequest<R>
    ) -> AmplifyAsyncThrowingSequence<GraphQLSubscriptionEvent<R>> where R : Decodable {
        var subscriptionId: String? = ""
        
        // TODO: write a e2e test to ensure we don't go over 100 AppSync connections
        func unsubscribe(subscriptionId: String?){
            if let subscriptionId {
                DispatchQueue.main.async {
                    self.nativeApiPlugin.unsubscribe(subscriptionId: subscriptionId) {}
                }
            }
        }
        
        // TODO: shouldn't there be a timeout if there is no start_ack returned in a certain period of time
        let (sequence, cancellable) = nativeSubscriptionEvents
            .receive(on: DispatchQueue.global())
            .filter { $0.subscriptionId == subscriptionId }
            .handleEvents(receiveCompletion: {_ in
                unsubscribe(subscriptionId: subscriptionId)
            }, receiveCancel: {
                unsubscribe(subscriptionId: subscriptionId)
            })
            .compactMap { [weak self] event -> GraphQLSubscriptionEvent<R>? in
                switch event.type {
                    case "connecting":
                        return .connection(.connecting)
                    case "start_ack":
                        return .connection(.connected)
                    case "complete":
                        return .connection(.disconnected)
                    case "data":
                        if let responseDecoded: GraphQLResponse<R> =
                            try? self?.decodeGraphQLPayloadJson(request: request, payload: event.payloadJson)
                        {
                            return .data(responseDecoded)
                        }
                        return nil
                    case "error":
                        if let payload = event.payloadJson {
                            return .data(.fromAppSyncSubscriptionErrorResponse(string: payload))
                        }
                    return nil
                    default:
                        print("ERROR unsupported subscription event type! \(String(describing: event.type))")
                        return nil
                }
            }
            .toAmplifyAsyncThrowingSequence()
        cancellables.insert(cancellable) // the subscription is bind with class instance lifecycle, it should be released when stream is finished or unsubscribed
        sequence.send(.connection(.connecting))
        DispatchQueue.main.async {
            self.nativeApiPlugin.subscribe(request: request.toNativeGraphQLRequest()) { response in
                subscriptionId = response.subscriptionId
            }
        }
        return sequence
    }

    private func decodeGraphQLPayloadJson<R>(
        request: GraphQLRequest<R>,
        payload: String?
    ) throws -> GraphQLResponse<R> {
        guard let payload else {
            throw DataStoreError.decodingError("Request payload could not be empty", "")
        }

        return GraphQLResponse<R>.fromAppSyncResponse(
            string: payload,
            decodePath: request.decodePath
        )
    }

    private func decodeGraphQLSubscriptionPayloadJson<R>(
        request: GraphQLRequest<R>,
        payload: String?
    ) throws -> GraphQLResponse<R> {
        guard let payload else {
            throw DataStoreError.decodingError("Request payload could not be empty", "")
        }

        return GraphQLResponse<R>.fromAppSyncSubscriptionResponse(
            string: payload,
            decodePath: request.decodePath
        )
    }
    
    func asyncQuery(nativeRequest: NativeGraphQLRequest) async -> NativeGraphQLResponse {
        await withCheckedContinuation { continuation in
            DispatchQueue.main.async {
                self.nativeApiPlugin.query(request: nativeRequest) { response in
                    continuation.resume(returning: response)
                }
            }
        }
    }
    
    func asyncMutate(nativeRequest: NativeGraphQLRequest) async -> NativeGraphQLResponse{
        await withCheckedContinuation { continuation in
            DispatchQueue.main.async {
                self.nativeApiPlugin.mutate(request: nativeRequest) { response in
                    continuation.resume(returning: response)
                }
            }
        }
    }
    
    public func configure(using configuration: Any?) throws { }
    
    public func apiAuthProviderFactory() -> APIAuthProviderFactory {
        return self.apiAuthFactory
    }
    
    public func add(interceptor: any URLRequestInterceptor, for apiName: String) throws {
        preconditionFailure("method not supported")
    }
    
    public func get(request: RESTRequest) async throws -> RESTTask.Success {
        preconditionFailure("method not supported")
    }
    
    public func put(request: RESTRequest) async throws -> RESTTask.Success {
        preconditionFailure("method not supported")
    }
    
    public func post(request: RESTRequest) async throws -> RESTTask.Success {
        preconditionFailure("method not supported")
    }
    
    public func delete(request: RESTRequest) async throws -> RESTTask.Success {
        preconditionFailure("method not supported")
    }
    
    public func head(request: RESTRequest) async throws -> RESTTask.Success {
        preconditionFailure("method not supported")
    }
    
    public func patch(request: RESTRequest) async throws -> RESTTask.Success {
        preconditionFailure("method not supported")
    }
    
    public func reachabilityPublisher(for apiName: String?) throws -> AnyPublisher<ReachabilityUpdate, Never>? {
        preconditionFailure("method not supported")
    }
    
    public func reachabilityPublisher() throws -> AnyPublisher<ReachabilityUpdate, Never>? {
        return nil
    }
    

}
