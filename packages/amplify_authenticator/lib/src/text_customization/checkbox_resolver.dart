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

import 'package:amplify_authenticator/src/text_customization/resolver.dart';
import 'package:flutter/material.dart';

enum CheckboxResolverKey { rememberDevice }

/// The resolver class for shared button Widgets
abstract class CheckboxResolver extends Resolver<CheckboxResolverKey> {
  const CheckboxResolver();

  /// Label of rememberDevice checkbox
  String rememberDevice(BuildContext context);

  @override
  String resolve(BuildContext context, CheckboxResolverKey key) {
    switch (key) {
      case CheckboxResolverKey.rememberDevice:
        return rememberDevice(context);
    }
  }
}

class DefaultCheckboxResolver extends CheckboxResolver {
  const DefaultCheckboxResolver();

  @override
  String rememberDevice(BuildContext context) => 'Remember Device?';
}
