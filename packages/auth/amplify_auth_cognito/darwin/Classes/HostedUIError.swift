// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import AuthenticationServices

/// An error which occurs during the Hosted UI sign in/sign out process.
public enum HostedUIError: Error {
    case cancelled
    case unknown(_ details: String? = nil)
    
    static func fromError(_ error: Error)
    -> HostedUIError {
        if let error = error as? ASWebAuthenticationSessionError {
            switch error.code {
            case .canceledLogin:
                return .cancelled
            case .presentationContextNotProvided:
                break
            case .presentationContextInvalid:
                break
            @unknown default:
                break
            }
        }
        return .unknown(error.localizedDescription)
    }
    
    var code: String {
        switch self {
        case .cancelled:
            return "CANCELLED"
        case .unknown:
            return "UNKNOWN"
        }
    }
    
    var message: String? {
        switch self {
        case .cancelled:
            return nil
        case .unknown(let details):
            return details
        }
    }
}
