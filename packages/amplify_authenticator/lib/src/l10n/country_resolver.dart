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

import 'package:amplify_authenticator/src/enums/auth_screen.dart';
import 'package:flutter/material.dart';

import 'authenticator_localizations.dart';
import 'resolver.dart';

enum CountryResolverKey { unitedStates, unitedKingdom }

/// The resolver class for country data
class CountryResolver extends Resolver<CountryResolverKey> {
  const CountryResolver();

  /// The label for the United States.
  String unitedStates(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).unitedStates;
  }

  /// The title for the sign up Widget.
  String unitedKingdom(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).unitedKingdom;
  }

  @override
  String resolve(BuildContext context, CountryResolverKey key) {
    switch (key) {
      case CountryResolverKey.unitedStates:
        return unitedStates(context);
      case CountryResolverKey.unitedKingdom:
        return unitedKingdom(context);
    }
  }
}
