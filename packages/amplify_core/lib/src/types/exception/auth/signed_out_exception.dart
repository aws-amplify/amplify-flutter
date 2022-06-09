/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.signed_out_exception}
/// Exception thrown when the requested operation can't be performed due to the
/// user being signed out.
/// {@endtemplate}
class SignedOutException extends AuthException {
  /// {@macro amplify_core.auth.signed_out_exception}
  const SignedOutException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });
}
