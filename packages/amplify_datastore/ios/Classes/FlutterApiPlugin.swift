//
//  ApiPlugin.swift
//  amplify_datastore
//
//  Created by Quartey, Elijah on 3/4/24.
//

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
    private var modelSchemaRegistry: FlutterSchemaRegistry
    
    init(
        apiAuthProviderFactory: APIAuthProviderFactory,
        nativeApiPlugin: NativeApiPlugin,
        modelSchemaRegistry: FlutterSchemaRegistry,
        subscriptionEventBus: PassthroughSubject<NativeGraphQLSubscriptionResponse, Never>
    ) {
        self.apiAuthFactory = apiAuthProviderFactory
        self.nativeApiPlugin = nativeApiPlugin
        self.nativeSubscriptionEvents = subscriptionEventBus
        self.modelSchemaRegistry = modelSchemaRegistry
    }
    
    public func apiAuthProviderFactory() -> APIAuthProviderFactory {
        return self.apiAuthFactory // might not need
    }

    private func decodePayloadJson<R>(
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

    func asyncQuery(nativeRequest: NativeGraphQLRequest) async -> NativeGraphQLResponse {
        await withCheckedContinuation { continuation in
            nativeApiPlugin.query(request: nativeRequest) { response in
                print("Swift:: query response: \(response)")
                continuation.resume(returning: response)
            }
        }
    }

    public func query<R>(request: GraphQLRequest<R>) async throws -> GraphQLTask<R>.Success where R : Decodable {
        print("Swift:: Query called")
        let nativeRequest = request.toNativeGraphQLRequest()
        print("Swift:: Query request made")
        let response = await asyncQuery(nativeRequest: nativeRequest)
        print("Swift:: Query got response")
        let responseDecoded: GraphQLResponse<R> = try decodePayloadJson(request: request, payload: response.payloadJson)
        print("Swift:: Query decoded response")
        
        return responseDecoded
    }
    
    func asyncMutate(nativeRequest: NativeGraphQLRequest) async -> NativeGraphQLResponse{
        await withCheckedContinuation { continuation in
            nativeApiPlugin.mutate(request: nativeRequest) { response in
                print("Swift:: mutate response: \(response)")
                continuation.resume(returning: response)
            }
        }
    }

    public func mutate<R>(request: GraphQLRequest<R>) async throws -> GraphQLTask<R>.Success where R : Decodable {
        let response = await asyncMutate(nativeRequest: request.toNativeGraphQLRequest())
        return try decodePayloadJson(request: request, payload: response.payloadJson)
    }


    public func subscribe<R: Decodable>(
        request: GraphQLRequest<R>
    ) -> AmplifyAsyncThrowingSequence<GraphQLSubscriptionEvent<R>> where R : Decodable {
        // TODO: write a e2e test to ensure we don't go over 100 AppSync connections
        func unsub(subscriptionId: String?){
            if let subscriptionId {
                self.nativeApiPlugin.unsubscribe(subscriptionId: subscriptionId) {}
            }
        }
        
        var subscriptionId: String? = ""
        let (sequence, cancellable) = nativeSubscriptionEvents // shouldn't there be a timeout if there is no start_ack returned in a certain period of time
            .filter { $0.subscriptionId != nil }
            .filter { $0.subscriptionId == subscriptionId }
            .handleEvents(receiveCompletion: {_ in 
                unsub(subscriptionId: subscriptionId)
            }, receiveCancel: {
                unsub(subscriptionId: subscriptionId)
            })
            .compactMap { [weak self] event -> GraphQLSubscriptionEvent<R>? in
                switch event.type {
                case .some("start_ack"):
                    return .connection(.connected)
                case .some("complete"):
                    return .connection(.disconnected)
                case .some("data"):
                    if let responseDecoded: GraphQLResponse<R> =
                        try? self?.decodePayloadJson(request: request, payload: event.payloadJson)
                    {
                        print("Swift:: event: \(responseDecoded) ")
                        return .data(responseDecoded)
                    }
                    return nil
                case .some("error"):
                    // TODO: (5d) error parsing
                    print("received error:  \(String(describing: event.payloadJson))")
                    return nil
                default:
                    print("ERROR unsupported subscription event type! \(String(describing: event.type))")
                    return nil
                }
            }.toAmplifyAsyncThrowingSequence()
        cancellables.insert(cancellable) // the subscription is bind with class instance lifecycle, it should be released when stream is finished or unsubscribed
        sequence.send(.connection(.connecting))
        self.nativeApiPlugin.subscribe(request: request.toNativeGraphQLRequest()) { response in
            subscriptionId = response.subscriptionId
        }
        return sequence
    }
    
    public func configure(using configuration: Any?) throws {
        print("Configuring Flutter Bridged API Plugin...")
    }
    
    public func add(interceptor: URLRequestInterceptor, for apiName: String) throws {
        fatalError("operation not supported")
    }
    
    public func get(request: RESTRequest) async throws -> RESTTask.Success {
        fatalError("operation not supported")
    }
    
    public func put(request: RESTRequest) async throws -> RESTTask.Success {
        fatalError("operation not supported")
    }
    
    public func post(request: RESTRequest) async throws -> RESTTask.Success {
        fatalError("operation not supported")
    }
    
    public func delete(request: RESTRequest) async throws -> RESTTask.Success {
        fatalError("operation not supported")
    }
    
    public func head(request: RESTRequest) async throws -> RESTTask.Success {
        fatalError("operation not supported")
    }
    
    public func patch(request: RESTRequest) async throws -> RESTTask.Success {
        fatalError("operation not supported")
    }
    
    public func reachabilityPublisher(for apiName: String?) throws -> AnyPublisher<ReachabilityUpdate, Never>? {
        
        fatalError("operation not supported")
    }
    
    public func reachabilityPublisher() throws -> AnyPublisher<ReachabilityUpdate, Never>? {
        return nil
    }
}
