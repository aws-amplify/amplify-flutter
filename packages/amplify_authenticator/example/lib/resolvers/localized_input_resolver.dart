/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';

class LocalizedInputResolver extends InputResolver {
  const LocalizedInputResolver();

  /// Override the title function
  /// Since this function handles the title for numerous fields,
  /// we recommend using a switch statement so that `super` can be called
  /// in the default case.
  @override
  String title(BuildContext context, InputField field) {
    switch (field) {
      case InputField.username:
        return 'Custom Username Title';
      case InputField.email:
        return 'Custom Email Title';
      case InputField.password:
        return 'Custom Password Title';
      case InputField.passwordConfirmation:
        return 'Custom Password Confirmation Title';
      case InputField.customAuthChallenge:
        return 'Custom Auth Challenge Title';
      default:
        return super.title(context, field);
    }
  }
}
