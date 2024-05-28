//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify

extension ReconcileAndLocalSaveOperation {

    /// States are descriptive, they say what is happening in the system right now
    enum State {
        /// Waiting to be started by the queue
        case waiting

        /// Reconciling remote models with local data
        case reconciling([RemoteModel])

        /// Operation has successfully completed
        case finished

        /// Operation completed with an unexpected error
        case inError(AmplifyError)
    }
}
