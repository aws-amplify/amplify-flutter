//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify

public extension AnyModel {
    var schema: ModelSchema {
        instance.schema
    }
}
