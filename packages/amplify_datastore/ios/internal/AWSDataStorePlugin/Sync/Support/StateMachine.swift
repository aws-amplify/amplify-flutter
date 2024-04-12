//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine
import Foundation

class StateMachine<State, Action> {
    typealias Reducer = (State, Action) -> State

    private let queue = DispatchQueue(label: "com.amazonaws.Amplify.StateMachine<\(State.self), \(Action.self)>",
                                      target: DispatchQueue.global())

    private var reducer: Reducer
    @Published var state: State

    /// Creates a new state machine that resolves state transition with the specified reducer. Interested parties can
    /// monitor state transitions with the `$state` published property.
    ///
    /// Resolvers should exit quickly, and not perform unnecessary work. Side effects should be initated as a result of
    /// receiving the new state published by `state`.
    ///
    /// - Parameter initialState: The state in which the StateMachine should begin.
    /// - Parameter reducer: A pure function that evaluates incoming state, the action, and returns a new state.
    init(initialState: State, resolver: @escaping Reducer) {
        self.state = initialState
        self.reducer = resolver
    }

    /// Notifies the StateMachine of an action that should be evaluated. The action is resolved serially, and the new
    /// state will be published to `state`, before the `notify` action returns.
    func notify(action: Action) {
        queue.sync {
            log.verbose("Notifying: \(action)")
            let newState = self.resolve(currentState: self.state, action: action)
            self.state = newState
        }
    }

    /// Resolves `action` via `reducer`, updates `currentState` with the resolved State value.
    private func resolve(currentState: State, action: Action) -> State {
        let newState = reducer(currentState, action)
        log.verbose("resolve(\(currentState), \(action)) -> \(newState)")
        return newState
    }

}

extension StateMachine: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
