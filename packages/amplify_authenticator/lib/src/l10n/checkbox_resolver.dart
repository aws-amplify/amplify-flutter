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

import 'package:flutter/material.dart';

import 'authenticator_localizations.dart';
import 'resolver.dart';

enum CheckboxResolverKeyType {
  rememberDevice,
}

class CheckboxResolverKey {
  const CheckboxResolverKey._(this.type);

  final CheckboxResolverKeyType type;

  static const rememberDevice =
      CheckboxResolverKey._(CheckboxResolverKeyType.rememberDevice);
}

/// The resolver class for shared button Widgets
class CheckboxResolver extends Resolver<CheckboxResolverKey> {
  const CheckboxResolver();

  /// Label of signin form button
  String rememberDevice(BuildContext context) {
    return AuthenticatorLocalizations.checkboxesOf(context).rememberDevice;
  }

  @override
  String resolve(BuildContext context, CheckboxResolverKey key) {
    switch (key.type) {
      case CheckboxResolverKey.rememberDevice:
        return rememberDevice(context);
    }
  }
}
