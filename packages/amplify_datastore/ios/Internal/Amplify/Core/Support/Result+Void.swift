//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Result where Success == Void {
    public static var successfulVoid: Result<Void, Failure> { .success(()) }
}
