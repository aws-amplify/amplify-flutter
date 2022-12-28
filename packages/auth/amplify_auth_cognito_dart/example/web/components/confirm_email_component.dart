// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

import 'confirm_attribute_component.dart';

class ConfirmEmailComponent extends ConfirmAttributeComponent {
  ConfirmEmailComponent({required super.onNavigate});

  @override
  CognitoUserAttributeKey key = CognitoUserAttributeKey.email;
}
