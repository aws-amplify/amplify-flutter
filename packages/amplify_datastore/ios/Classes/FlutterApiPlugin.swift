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



public class FlutterApiPlugin: APICategoryPlugin, APICategoryGraphQLBehaviorExtended
{
    
    public func query<R>(request: GraphQLRequest<R>, listener: GraphQLOperation<R>.ResultListener?) -> GraphQLOperation<R> where R : Decodable {
        
        fatalError("To be implmented")
    }
    
    public func mutate<R>(request: GraphQLRequest<R>, listener: GraphQLOperation<R>.ResultListener?) -> GraphQLOperation<R> where R : Decodable {
        
        fatalError("TODO: implmenet return transform")
    }
    
    public func subscribe<R>(request: GraphQLRequest<R>, valueListener: GraphQLSubscriptionOperation<R>.InProcessListener?, completionListener: GraphQLSubscriptionOperation<R>.ResultListener?) -> GraphQLSubscriptionOperation<R> where R : Decodable {
        
        // A hacky way to call the old subscribe API
        // Currently does not return any thing
        _ = subscribe(request: request)
        
        
        // This is a placeholder return type.
        // TODO: Events from Flutter bridge should be returned to caller.
        let responseOp = GraphQLOperationRequest(apiName: request.apiName, operationType: GraphQLOperationType.subscription, document: request.document, responseType: request.responseType, options: GraphQLOperationRequest.Options(pluginOptions: []))
        
        
        
        return GraphQLSubscriptionOperation(categoryType: CategoryType.api, eventName: HubPayload.EventName.API.subscribe, request: responseOp)
    }
    
    
    public var key: PluginKey = "awsAPIPlugin"
    private let apiAuthFactory: APIAuthProviderFactory
    private let nativeApiPlugin: NativeApiPlugin
    private  let nativeSubscriptionEvents: PassthroughSubject<NativeGraphQLSubscriptionResponse, Never>
    private var cancellables = Set<AnyCancellable>()
    private var modelSchemaRegistry: FlutterSchemaRegistry
    
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
        let nativeRequest = getNativeGraphQLRequest(request: request)
        
        let response = await asyncQuery(nativeRequest: nativeRequest)
            
        let responseDecoded: GraphQLResponse<R> =  try  decodeResponse(request: request, response: response)
        
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
        let amplifySequence = AmplifyAsyncThrowingSequence<GraphQLSubscriptionEvent<R>>()
        
        nativeSubscriptionEvents.filter{(subscriptionId != nil) && $0.subscriptionId == subscriptionId}.sink(receiveValue: { event in
            do {
                let responseDecoded: GraphQLResponse<R> =  try  self.decodeResponse(request: request, response: event)
                
                amplifySequence.send(.data(responseDecoded))
            } catch {
                print("Failed to decode JSON: \(error.localizedDescription)")
            }
        }).store(in: &cancellables)
        return amplifySequence
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
