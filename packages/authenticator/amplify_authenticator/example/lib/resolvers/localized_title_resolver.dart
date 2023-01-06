// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizedTitleResolver extends TitleResolver {
  const LocalizedTitleResolver();

  @override
  String confirmSignInCustomAuth(BuildContext context) {
    return AppLocalizations.of(context).confirmSignInCustomAuth;
  }
}
