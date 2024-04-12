import Foundation
import Flutter
import Amplify
import AWSPluginsCore
import Combine



public class FlutterApiPlugin: APICategoryPlugin
{
    public var key: PluginKey = "awsAPIPlugin"
    init() {
        
    }
    
    // TODO: Implment in Async Swift v2
    public func query<R>(request: GraphQLRequest<R>) async throws -> GraphQLTask<R>.Success where R : Decodable {
        preconditionFailure("method not supported")
    }
    
    // TODO: Implment in Async Swift v2
    public func mutate<R>(request: GraphQLRequest<R>) async throws -> GraphQLTask<R>.Success where R : Decodable {
        preconditionFailure("method not supported")
    }
    
    // TODO: Implment in Async Swift v2
    public func subscribe<R>(request: GraphQLRequest<R>) -> AmplifyAsyncThrowingSequence<GraphQLSubscriptionEvent<R>> where R : Decodable {
        preconditionFailure("method not supported")
    }
    
    public func configure(using configuration: Any?) throws { }
    
    public func apiAuthProviderFactory() -> APIAuthProviderFactory {
        preconditionFailure("method not supported")
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
        preconditionFailure("method not supported")
    }
    

}
