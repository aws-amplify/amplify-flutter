// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';

/// {@template amplify_authenticator.dial_code_options}
/// The options for displaying dial codes in popup modals.
///
/// Phone number fields in the Authenticator allow the user to select a dial code
/// via a popup modal different than the default. By default, the US dial code (+1)
/// is chosen and a list of all available dial codes is shown in the popup.
///
/// Use these options to select which dial code is selected by default and, optionally,
/// limit which options are shown in the modal.
/// {@endtemplate}
class DialCodeOptions {
  const DialCodeOptions({
    this.defaultDialCode = DialCode.us,
  });

  final DialCode defaultDialCode;
}
