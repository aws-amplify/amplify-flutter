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



public class ApiPlugin: APICategoryPlugin, APICategoryGraphQLBehaviorExtended
{
    public func query<R>(request: GraphQLRequest<R>, listener: GraphQLOperation<R>.ResultListener?) -> GraphQLOperation<R> where R : Decodable {
        fatalError("To be implmented")
    }
    
    public func mutate<R>(request: GraphQLRequest<R>, listener: GraphQLOperation<R>.ResultListener?) -> GraphQLOperation<R> where R : Decodable {
        
        let variables = request.variables?.compactMapValues { $0 as? String }
        
        // Call into flutter by passing a request over flutter platform channel
        let nativeRequest = NativeGraphQLRequest(apiName: request.apiName, document: request.document, variables: variables, responseType: "foo", decodePath: request.decodePath)
        print("Swift mutation:: Starting...")
        nativeApiPlugin.mutate(request: nativeRequest) { operation in
            print("Swift mutation:: Completed")
            print(operation)
        }
        
        fatalError("TODO: implmenet return transform")
    }
    
    public func subscribe<R>(request: GraphQLRequest<R>, valueListener: GraphQLSubscriptionOperation<R>.InProcessListener?, completionListener: GraphQLSubscriptionOperation<R>.ResultListener?) -> GraphQLSubscriptionOperation<R> where R : Decodable {
        
        // A hacky way to call the old subscribe API
        // Currently does not return any thing
        let task = subscribe(request: request)
        
        
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
    
    public func mutate<R>(request: GraphQLRequest<R>) async throws -> GraphQLTask<R>.Success where R : Decodable {
        fatalError("operation not supported")
    }
    
    public func subscribe<R>(request: GraphQLRequest<R>) -> AmplifyAsyncThrowingSequence<GraphQLSubscriptionEvent<R>> where R : Decodable {
        let variables = request.variables?.compactMapValues { $0 as? String }
        let nativeRequest = NativeGraphQLRequest(apiName: request.apiName, document: request.document, variables: variables, responseType: "foo", decodePath: request.decodePath)
        print("Swift:: responseType: \(request.responseType)")
        
        var subscriptionId: String? = ""
        
        self.nativeApiPlugin.subscribe(request: nativeRequest) { response in
            print("Swift:: nativeApiPlugin.subscribe \(String(describing: response.subscriptionId))")
            subscriptionId = response.subscriptionId
        }
        
        let amplifySequence = AmplifyAsyncThrowingSequence<GraphQLSubscriptionEvent<R>>()
        
        nativeSubscriptionEvents.filter{(subscriptionId != nil) && $0 != nil}.sink(receiveValue: { event in
            do {
                // WIP: Decode response and type into a model/graphql response
                print("Swift:: subscriptionEvent: \(event)")
                
                //                    let modelSchema = try FlutterDataStoreRequestUtils.getModelSchema(
                //                        modelSchemaRegistry: self.modelSchemaRegistry,
                //                        modelName: "Blog"
                //                    )
                
                guard let jsonData = event.payloadJson?.data(using: .utf8) else {
                    throw DataStoreError.decodingError("Unable to deserialize json data", "Check the event structure.")
                }
                
                guard let jsonValue = try? JSONDecoder().decode([String: JSONValue].self, from: jsonData) else {
                    throw DataStoreError.decodingError("Unable to deserialize json data", "Check the event structure.")
                }
                
                print("Swift:: subscription payload JSON: \(jsonValue)")
                
                // TODO: Decode jsonValue to Swift model
                // The value of <R> in this function is: AWSPluginsCore.MutationSync<AWSPluginsCore.AnyModel>
                // The Model should then be converted into this <R> type and passed back to the sequence
                
                
                let response = GraphQLResponse.success(jsonValue)
                let subEvent = GraphQLSubscriptionEvent.data(response)
                amplifySequence.send(.data(.success(subEvent as! R)))
            } catch {
                print("Failed to decode JSON: \(error.localizedDescription)")
            }
        }).store(in: &cancellables)
        return amplifySequence
    }
    
    public func configure(using configuration: Any?) throws {
        print("Configuring Flutter Bridged API Plugin...")
    }
    
    public func query<R>(request: GraphQLRequest<R>) async throws -> GraphQLTask<R>.Success where R : Decodable {
        fatalError("operation not supported")
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
