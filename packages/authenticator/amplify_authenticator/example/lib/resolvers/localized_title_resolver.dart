// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_example/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class LocalizedTitleResolver extends TitleResolver {
  const LocalizedTitleResolver();

  @override
  String confirmSignInCustomAuth(BuildContext context) {
    return AppLocalizations.of(context).confirmSignInCustomAuth;
  }
}
