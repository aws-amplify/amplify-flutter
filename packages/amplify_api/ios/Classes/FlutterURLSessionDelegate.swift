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

import Foundation
import Amplify
import AmplifyPlugins

class FlutterURLSessionBehaviorFactory: URLSessionBehaviorFactory {
    func makeSession(withDelegate delegate: URLSessionBehaviorDelegate?) -> URLSessionBehavior {
        let flutterSessionDelegate = FlutterURLSessionBehaviorDelegate(delegate)
        return FlutterURLSession(delegate: flutterSessionDelegate)
    }
}

class FlutterURLSession: URLSessionBehavior {
    let session: URLSession
    weak var sessionBehaviorDelegate: URLSessionBehaviorDelegate?

    init(delegate: FlutterURLSessionBehaviorDelegate) {
        self.sessionBehaviorDelegate = delegate
        self.session = URLSession(configuration: URLSessionConfiguration.default,
                                  delegate: delegate,
                                  delegateQueue: nil)
    }

    func reset(onComplete: BasicClosure?) {
        session.reset(onComplete: onComplete)
    }

    func dataTaskBehavior(with request: URLRequest) -> URLSessionDataTaskBehavior {
        var request = request
        let cancelToken = request.allHTTPHeaderFields?[FlutterApiRequest.cancelTokenHeader]
        request.allHTTPHeaderFields?.removeValue(forKey: FlutterApiRequest.cancelTokenHeader)
        let dataTask = session.dataTaskBehavior(with: request)
        if let cancelToken = cancelToken {
            OperationsManager.setTaskId(for: cancelToken, taskId: dataTask.taskBehaviorIdentifier)
        }
        return dataTask
    }
}

class FlutterURLSessionBehaviorDelegate: NSObject, URLSessionBehaviorDelegate {
    weak var wrappedDelegate: URLSessionBehaviorDelegate?

    init(_ wrappedDelegate: URLSessionBehaviorDelegate?) {
        self.wrappedDelegate = wrappedDelegate
    }

    private func updateProgress(for dataTaskBehavior: URLSessionDataTaskBehavior) {
        if let urlResponse = dataTaskBehavior.taskBehaviorResponse as? HTTPURLResponse {
            OperationsManager.updateProgress(for: dataTaskBehavior.taskBehaviorIdentifier, urlResponse: urlResponse)
        }
    }

    func urlSessionBehavior(
        _ session: URLSessionBehavior,
        dataTaskBehavior: URLSessionDataTaskBehavior,
        didCompleteWithError error: Error?
    ) {
        updateProgress(for: dataTaskBehavior)
        wrappedDelegate?.urlSessionBehavior(session, dataTaskBehavior: dataTaskBehavior, didCompleteWithError: error)
    }

    func urlSessionBehavior(
        _ session: URLSessionBehavior,
        dataTaskBehavior: URLSessionDataTaskBehavior,
        didReceive data: Data
    ) {
        updateProgress(for: dataTaskBehavior)
        wrappedDelegate?.urlSessionBehavior(session, dataTaskBehavior: dataTaskBehavior, didReceive: data)
    }
}

extension FlutterURLSessionBehaviorDelegate: URLSessionDelegate {
    @objc public func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping AuthChallengeDispositionHandler
    ) {
        completionHandler(.performDefaultHandling, nil)
    }
}

extension FlutterURLSessionBehaviorDelegate: URLSessionTaskDelegate {
    @objc public func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping AuthChallengeDispositionHandler
    ) {
        completionHandler(.performDefaultHandling, nil)
    }

    @objc public func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didCompleteWithError error: Error?
    ) {
        urlSessionBehavior(session,
                           dataTaskBehavior: task,
                           didCompleteWithError: error)
    }
}

extension FlutterURLSessionBehaviorDelegate: URLSessionDataDelegate {
    @objc public func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive data: Data
    ) {
        urlSessionBehavior(session,
                           dataTaskBehavior: dataTask,
                           didReceive: data)
    }
}
