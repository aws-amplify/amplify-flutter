//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import AWSPluginsCore
import Combine

final class MutationRetryNotifier {
    private var lock: NSLock
    private var nextSyncTimer: DispatchSourceTimer?
    private var handlerQueue = DispatchQueue.global(qos: .default)
    var retryMutationCallback: () -> Void
    private var reachabilitySubscription: Subscription?

    init(advice: RequestRetryAdvice,
         networkReachabilityPublisher: AnyPublisher<ReachabilityUpdate, Never>?,
         retryMutationCallback: @escaping BasicClosure) {
        self.lock = NSLock()

        self.retryMutationCallback = retryMutationCallback

        let deadline = DispatchTime.now() + advice.retryInterval
        scheduleTimer(at: deadline)

        networkReachabilityPublisher?.dropFirst().subscribe(self)
    }

    deinit {
        cancel()
    }

    private func scheduleTimer(at deadline: DispatchTime) {
        lock.execute {
            nextSyncTimer = DispatchSource.makeOneOffDispatchSourceTimer(deadline: deadline, queue: handlerQueue) {
                self.notifyCallback()
            }
            nextSyncTimer?.resume()
        }
    }

    func cancel() {
        lock.execute {
            reachabilitySubscription?.cancel()
            nextSyncTimer?.cancel()
        }
    }

    func notifyCallback() {
        // Call the cancel routine as the purpose of retry is fulfilled
        cancel()
        retryMutationCallback()
    }
}

extension MutationRetryNotifier: Subscriber {
    func receive(subscription: Subscription) {
        log.verbose(#function)
        lock.execute {
            reachabilitySubscription = subscription
        }
        subscription.request(.unlimited)
    }

    func receive(_ reachabilityUpdate: ReachabilityUpdate) -> Subscribers.Demand {
        if reachabilityUpdate.isOnline {
            notifyCallback()
            return .none
        }
        return .unlimited
    }

    func receive(completion: Subscribers.Completion<Never>) {
        log.verbose(#function)
        lock.execute {
            reachabilitySubscription?.cancel()
        }
    }
}

extension MutationRetryNotifier: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
