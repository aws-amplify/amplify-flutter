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



public class ApiPlugin: APICategoryPlugin
{
    public var key: PluginKey = "awsAPIPlugin"
    private let apiAuthFactory: APIAuthProviderFactory
    private let nativeApiPlugin: NativeApiPlugin
    
    init(apiAuthProviderFactory: APIAuthProviderFactory, nativeApiPlugin: NativeApiPlugin) {
        self.apiAuthFactory = apiAuthProviderFactory
        self.nativeApiPlugin = nativeApiPlugin
    }
    
    public func apiAuthProviderFactory() -> APIAuthProviderFactory {
        return self.apiAuthFactory // might not need
    }
    
    public func mutate<R>(request: GraphQLRequest<R>) async throws -> GraphQLTask<R>.Success where R : Decodable {
        
        let variables = request.variables?.compactMapValues { $0 as? String }
        
        let nativeRequest = NativeGraphQLRequest(apiName: request.apiName, document: request.document, variables: variables, responseType: "foo", decodePath: request.decodePath)
        
//        nativeApiPlugin.mutate(request: nativeRequest, completion: <#(NativeGraphQLOperation) -> Void#>)
        fatalError("operation not supported")
    }
    
    public func subscribe<R>(request: GraphQLRequest<R>) -> AmplifyAsyncThrowingSequence<GraphQLSubscriptionEvent<R>> where R : Decodable {
        fatalError("operation not supported")
    }

//    public func mutate<R: Decodable>(request: GraphQLRequest<R>,
//                                     listener: GraphQLOperation<R>.ResultListener?) -> GraphQLOperation<R> {
//        fatalError("operation not supported")
//    }
//    public func subscribe<R: Decodable>(request: GraphQLRequest<R>,
//                                             valueListener: GraphQLSubscriptionOperation<R>.InProcessListener?,
//                                             completionListener: GraphQLSubscriptionOperation<R>.ResultListener?)
//    -> GraphQLSubscriptionOperation<R> {
//        
//        fatalError("operation not supported")
//    }
    
    public func configure(using configuration: Any?) throws {
        fatalError("operation not supported")
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
        fatalError("operation not supported")
    }
}
