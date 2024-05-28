//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify

extension ReconcileAndLocalSaveOperation {

    /// Actions are declarative, they say what I just did
    enum Action {
        /// Operation has been started by the queue
        case started([RemoteModel])

        /// Operation completed reconcilliation
        case reconciled

        /// Operation has been cancelled by the queue
        case cancelled

        /// Operation has encountered an error
        case errored(AmplifyError)
    }

}
