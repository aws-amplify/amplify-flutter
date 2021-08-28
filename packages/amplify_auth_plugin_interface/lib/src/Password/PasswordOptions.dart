/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'ConfirmResetPasswordOptions.dart';
import 'ResetPasswordOptions.dart';
import 'UpdatePasswordOptions.dart';

/// Previously used as the shared password options for [updatePassword],
/// [resetPassword], and [confirmResetPassword]
@Deprecated(
    "Please use 'UpdatePasswordOptions', 'ResetPasswordOptions', or 'ConfirmResetPasswordOptions' instead")
abstract class PasswordOptions
    with
        UpdatePasswordOptions,
        ResetPasswordOptions,
        ConfirmResetPasswordOptions {
  const PasswordOptions();
  @override
  Map<String, dynamic> serializeAsMap() {
    throw UnimplementedError(
        'serializeAsMap() has not been implemented on PasswordOptions.');
  }
}
