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

/// {@template amplify_core.confirm_reset_password_options}
/// The shared confirm reset password options among all Auth plugins.
/// {@endtemplate}
abstract class ConfirmResetPasswordOptions
    with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.confirm_reset_password_options}
  const ConfirmResetPasswordOptions();

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();
}
