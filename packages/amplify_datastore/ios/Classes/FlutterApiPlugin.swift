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
    private  let nativeSubscriptionEvents: PassthroughSubject<NativeGraphQLSubscriptionResponse, Never>
    private var cancellables = Set<AnyCancellable>()
    private var modelSchemaRegistry: FlutterSchemaRegistry
    
    private var mySequence: AmplifyAsyncThrowingSequence<any Sendable>?
    
    init(apiAuthProviderFactory: APIAuthProviderFactory, nativeApiPlugin: NativeApiPlugin, modelSchemaRegistry: FlutterSchemaRegistry, subscriptionEventBus: PassthroughSubject<NativeGraphQLSubscriptionResponse, Never>) {
        self.apiAuthFactory = apiAuthProviderFactory
        self.nativeApiPlugin = nativeApiPlugin
        self.nativeSubscriptionEvents = subscriptionEventBus
        self.modelSchemaRegistry = modelSchemaRegistry
    }
    
    public func apiAuthProviderFactory() -> APIAuthProviderFactory {
        return self.apiAuthFactory // might not need
    }
    
    private func getNativeGraphQLRequest<R>(request: GraphQLRequest<R>) -> NativeGraphQLRequest {
        let variables = request.variables?.compactMapValues { $0 as? String }
        
        let nativeRequest = NativeGraphQLRequest(apiName: request.apiName, document: request.document, variables: variables, responseType: String(describing: request.responseType), decodePath: request.decodePath)
        return nativeRequest
    }
    
    private func decodeResponse<R>(request: GraphQLRequest<R>, response: NativeGraphQLResponse) throws ->
    GraphQLResponse<R> {
        return try decodePayloadJson(request: request, payload: response.payloadJson)
    }
    
    private func decodeResponse<R>(request: GraphQLRequest<R>, response: NativeGraphQLSubscriptionResponse) throws ->
    GraphQLResponse<R> {
        return try decodePayloadJson(request: request, payload: response.payloadJson)
    }
    
    private func decodePayloadJson<R>(request: GraphQLRequest<R>, payload: String?) throws -> GraphQLResponse<R>{
        guard let jsonData = payload?.data(using: .utf8) else {
            throw DataStoreError.decodingError("Unable to deserialize json data", "Check the event structure.")
        }
        if (request.decodePath == nil) {
            throw DataStoreError.decodingError("No decodePath found", "Please provide a valid decodePath to the request")
        }
        let response: GraphQLResponse<R> = .fromAppSyncResponse(
            data: jsonData,
            decodePath: request.decodePath!
        )
        return response
    }
    
    
    func asyncQuery(nativeRequest: NativeGraphQLRequest) async -> NativeGraphQLResponse{
        await withCheckedContinuation { continuation in
            nativeApiPlugin.query(request: nativeRequest) { response in
                print("Swift:: query response: \(response)")
                continuation.resume(returning: response)
            }
        }
    }
    public func query<R>(request: GraphQLRequest<R>) async throws -> GraphQLTask<R>.Success where R : Decodable {
        print("Swift:: Query called")
        let nativeRequest = getNativeGraphQLRequest(request: request)
        print("Swift:: Query request made")
        let response = await asyncQuery(nativeRequest: nativeRequest)
        print("Swift:: Query got response")
        let responseDecoded: GraphQLResponse<R> =  try  decodeResponse(request: request, response: response)
        print("Swift:: Query decoded response")
        
        // Return GraphQLTask
        fatalError("operation not supported")
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
        let nativeRequest = getNativeGraphQLRequest(request: request)
        
        let response = await asyncMutate(nativeRequest: nativeRequest)
            
        let responseDecoded: GraphQLResponse<R> =  try  decodeResponse(request: request, response: response)
        
        // Return GraphQLTask
        fatalError("operation not supported")
    }

    public func subscribe<R: Decodable>(request: GraphQLRequest<R>) -> AmplifyAsyncThrowingSequence<GraphQLSubscriptionEvent<R>> where R : Decodable {
        let nativeRequest = getNativeGraphQLRequest(request: request)
        
        var subscriptionId: String? = ""
        DispatchQueue.main.async {
            self.nativeApiPlugin.subscribe(request: nativeRequest) { response in
                subscriptionId = response.subscriptionId
            }
        }
        print("SWIFT:: creating a sequence!")
        let mySequence = AmplifyAsyncThrowingSequence<GraphQLSubscriptionEvent<R>>()
        mySequence.send(.connection(.connecting))
        
        nativeSubscriptionEvents.filter{(subscriptionId != nil) && $0.subscriptionId == subscriptionId}.sink(receiveValue: { event in
            do {
                if (event.type == "connected") {
                    mySequence.send(.connection(.connected))
                } else if (event.type == "data") {
                    let responseDecoded: GraphQLResponse<R> =  try  self.decodeResponse(request: request, response: event)
                    print("Swift:: event: \(responseDecoded) ")
                    mySequence.send(.data(responseDecoded))
                } else if (event.type == "disconnected") {
                    mySequence.send(.connection(.disconnected))
                } else if (event.type == "error") {
                    print("ERROR -- TODO: need to handle errors")
                } else {
                    print("ERROR unsupported subscription event type!")
                }

            } catch {
                print("Failed to decode JSON: \(error.localizedDescription)")
            }
        }).store(in: &cancellables)
        return mySequence
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


extension GraphQLSubscriptionEvent: Sendable {
    
}
