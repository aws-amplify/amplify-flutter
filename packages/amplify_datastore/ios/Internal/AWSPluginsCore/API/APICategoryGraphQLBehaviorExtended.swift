//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

/// Extending the existing `APICategoryGraphQLBehavior` to include callback based APIs.
///
/// This exists to allow DataStore to continue to use the `APICategoryGraphQLCallbackBehavior` APIs without exposing
/// them publicly from Amplify in `APICategoryGraphQLBehavior`. Eventually, the goal is for DataStore to use the
/// Async APIs, at which point, this protocol can be completely removed. Introducing this protocol allows Amplify to
/// to fully deprecate the callback based APIs, while allowing DataStore a gradual migration path forward in moving
/// away from APIPlugin's callback APIs to the Async APIs.
/// See https://github.com/aws-amplify/amplify-ios/issues/2252 for more details
///
/// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
///   by host applications. The behavior of this may change without warning.
public protocol APICategoryGraphQLBehaviorExtended:
    APICategoryGraphQLCallbackBehavior, APICategoryGraphQLBehavior, AnyObject { }

/// Listener callback based APIs
///
/// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
///   by host applications. The behavior of this may change without warning.
public protocol APICategoryGraphQLCallbackBehavior {
    @discardableResult
    func query<R: Decodable>(request: GraphQLRequest<R>,
                             listener: GraphQLOperation<R>.ResultListener?) -> GraphQLOperation<R>
    @discardableResult
    func mutate<R: Decodable>(request: GraphQLRequest<R>,
                              listener: GraphQLOperation<R>.ResultListener?) -> GraphQLOperation<R>

    func subscribe<R: Decodable>(request: GraphQLRequest<R>,
                                 valueListener: GraphQLSubscriptionOperation<R>.InProcessListener?,
                                 completionListener: GraphQLSubscriptionOperation<R>.ResultListener?)
        -> GraphQLSubscriptionOperation<R>
}
