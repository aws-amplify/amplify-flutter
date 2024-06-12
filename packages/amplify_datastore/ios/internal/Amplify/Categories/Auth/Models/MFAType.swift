//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

public enum MFAType: String {

    /// Short Messaging Service linked with a phone number
    case sms

    /// Time-based One Time Password linked with an authenticator app
    case totp
}
