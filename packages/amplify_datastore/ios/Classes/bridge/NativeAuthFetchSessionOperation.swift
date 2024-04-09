// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify

// TODO: Mirgrate to Async Swift v2
public protocol AuthFetchSessionOperation: AmplifyOperation<AuthFetchSessionRequest, AuthSession, AuthError> {}

class NativeAuthFetchSessionOperation: AmplifyOperation<AuthFetchSessionRequest,
                                                        AuthSession,
                                                        AuthError>,
                                       AuthFetchSessionOperation {}
