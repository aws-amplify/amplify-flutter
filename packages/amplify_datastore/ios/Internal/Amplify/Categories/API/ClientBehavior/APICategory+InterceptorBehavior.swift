//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension APICategory: APICategoryInterceptorBehavior {

    public func add(interceptor: URLRequestInterceptor, for apiName: String) throws {
        try plugin.add(interceptor: interceptor, for: apiName)
    }

}
