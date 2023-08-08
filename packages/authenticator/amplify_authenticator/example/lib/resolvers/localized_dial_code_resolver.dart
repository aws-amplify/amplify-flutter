// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Our custom country string resolver which calls into our localizations class.

class LocalizedDialResolver extends DialCodeResolver {
  const LocalizedDialResolver();

  @override
  String us(BuildContext context) {
    return AppLocalizations.of(context).us;
  }

  @override
  String selectDialCode(BuildContext context) {
    return AppLocalizations.of(context).selectDialCode;
  }
}
