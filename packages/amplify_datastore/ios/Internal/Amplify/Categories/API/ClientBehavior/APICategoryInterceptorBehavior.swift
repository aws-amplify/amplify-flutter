//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// A URLRequestInterceptor accepts a request and returns a request. It is invoked
/// during the "prepare" phase of an API operation.
///
/// A URLRequestInterceptor may use the request as a data source for some other
/// operation (e.g., metrics or logging), or use it as the source for preparing a
/// new request that will be used to fulfill the operation. For example, a
/// URLRequestInterceptor may add custom headers to the request for authorization.
///
/// URLRequestInterceptors are invoked in the order in which they are added to the
/// plugin.
public protocol APICategoryInterceptorBehavior {

    /// Adds a URLRequestInterceptor to the chain of interceptors invoked during the
    /// "prepare" phase of an API operation. The Operation's URLRequest will be passed
    /// to each interceptor in turn, and each interceptor will have the option to
    /// return a modified request to the next member of the chain.
    /// - Parameter inteceptor: The `URLRequestInterceptor`
    func add(interceptor: URLRequestInterceptor, for apiName: String) throws
}
