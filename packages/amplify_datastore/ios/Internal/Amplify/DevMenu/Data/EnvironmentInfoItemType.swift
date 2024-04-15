//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation

/// Item types for each row displaying Developer Environment Information
enum EnvironmentInfoItemType {
    case nodejsVersion(String?)
    case npmVersion(String?)
    case amplifyCLIVersion(String?)
    case podVersion(String?)
    case xcodeVersion(String?)
    case osVersion(String?)
}
#endif
