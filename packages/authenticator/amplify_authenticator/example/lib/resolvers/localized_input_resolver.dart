// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
