// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/widgets.dart';

/// Controller for text driven Authenticator form fields.
///
/// Wraps Flutter's [TextEditingController] so developers can opt in to
/// programmatic control over prebuilt Authenticator fields while keeping
/// identical semantics to a regular controller.
class AuthenticatorTextFieldController extends TextEditingController {
  AuthenticatorTextFieldController({super.text});

  AuthenticatorTextFieldController.fromValue(TextEditingValue value)
      : super.fromValue(value);
}
