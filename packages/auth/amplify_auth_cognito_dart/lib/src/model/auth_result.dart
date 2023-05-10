// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// The result of an Auth operation.
typedef AuthResult<T extends Object?> = AWSResult<T, AuthException>;

/// A successful result to an Auth operation.
typedef AuthSuccessResult<T extends Object?>
    = AWSSuccessResult<T, AuthException>;

/// A failed result to an Auth operation.
typedef AuthErrorResult<T extends Object?> = AWSErrorResult<T, AuthException>;
