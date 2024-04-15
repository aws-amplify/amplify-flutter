//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// DefaultNetworkPolicy of the operation
public enum DefaultNetworkPolicy {
    /// `offline` operations do not make network calls.
    ///
    /// Specificy `offline` if you only want to leverage CoreML local procession.
    /// - Important: Some functionality isn't available in CoreML. Invoking `offline`
    /// in these cases will result in an error.
    case offline

    /// `online` operations only invoke network requests to the applicable services.
    case online

    /// `auto` operations make use of online and offline calls.
    case auto
}
