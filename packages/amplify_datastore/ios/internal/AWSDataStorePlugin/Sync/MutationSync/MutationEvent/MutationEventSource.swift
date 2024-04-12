//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify

protocol MutationEventSource: AnyObject {
    /// Gets the next available mutation event, marking it as "inProcess" before delivery
    func getNextMutationEvent(completion: @escaping DataStoreCallback<MutationEvent>)
}
