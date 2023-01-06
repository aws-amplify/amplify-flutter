// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/state/authenticator_state.dart';
import 'package:flutter/widgets.dart';

/// A method that builds a custom authenticator widget
/// bases on the current AuthenticatorState and the prebuilt
/// authenticator screen
typedef AuthenticatorBuilder = Widget? Function(
  BuildContext,
  AuthenticatorState,
);
