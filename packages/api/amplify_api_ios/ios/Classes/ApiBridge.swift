/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import Amplify
import AmplifyPlugins
import Flutter

public class ApiBridge {
    func get(request: RESTRequest, listener: RESTOperation.ResultListener?) -> RESTOperation {
        return Amplify.API.get(request: request, listener: listener)
    }

    func put(request: RESTRequest, listener: RESTOperation.ResultListener?) -> RESTOperation {
        return Amplify.API.put(request: request, listener: listener)
    }

    func post(request: RESTRequest, listener: RESTOperation.ResultListener?) -> RESTOperation {
        return Amplify.API.post(request: request, listener: listener)
    }

    func delete(request: RESTRequest, listener: RESTOperation.ResultListener?) -> RESTOperation {
        return Amplify.API.delete(request: request, listener: listener)
    }

    func head(request: RESTRequest, listener: RESTOperation.ResultListener?) -> RESTOperation {
        return Amplify.API.head(request: request, listener: listener)
    }

    func patch(request: RESTRequest, listener: RESTOperation.ResultListener?) -> RESTOperation {
        return Amplify.API.patch(request: request, listener: listener)
    }

    public func query<R: Decodable>(
        request: GraphQLRequest<R>,
        listener: GraphQLOperation<R>.ResultListener?
    ) -> GraphQLOperation<R> {
        return Amplify.API.query(request: request, listener: listener)
    }

    public func mutate<R: Decodable>(
        request: GraphQLRequest<R>,
        listener: GraphQLOperation<R>.ResultListener?
    ) -> GraphQLOperation<R> {
        return Amplify.API.mutate(request: request, listener: listener)
    }

    public func subscribe<R>(
        request: GraphQLRequest<R>,
        valueListener: GraphQLSubscriptionOperation<R>.InProcessListener?,
        completionListener: GraphQLSubscriptionOperation<R>.ResultListener?
    ) -> GraphQLSubscriptionOperation<R> {
        return Amplify.API.subscribe(
            request: request,
            valueListener: valueListener,
            completionListener: completionListener)
    }
}
