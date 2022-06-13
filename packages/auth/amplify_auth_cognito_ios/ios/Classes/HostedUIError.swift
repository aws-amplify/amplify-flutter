// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
