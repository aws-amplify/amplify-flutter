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

import 'package:amplify_authenticator/src/text_customization/checkbox_resolver.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template authenticator.authenticator_checkbox}
/// An Authenticator checkbox component with default layout and styling.
/// {@endtemplate}
class AuthenticatorCheckbox<T extends AuthenticatorCheckbox<T>>
    extends AuthenticatorComponent<T> {
  /// {@macro authenticator.authenticator_button}
  const AuthenticatorCheckbox({Key? key, required this.labelKey})
      : super(key: key);

  /// The checkbox's label key.
  final CheckboxResolverKey labelKey;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('labelKey', labelKey));
  }

  @override
  AuthenticatorCheckBoxState<T> createState() =>
      AuthenticatorCheckBoxState<T>();
}

class AuthenticatorCheckBoxState<T extends AuthenticatorCheckbox<T>>
    extends AuthenticatorComponentState<T> {
  AuthenticatorCheckBoxState();

  var _isChecked = false;

  /// Callback for when `onChanged` is triggered on the [AuthenticatorCheckbox].
  void Function(bool) get onChanged => (_) {};

  @override
  Widget build(BuildContext context) {
    final checkboxResolver = stringResolver.checkboxes;
    return CheckboxListTile(
      title: Text(checkboxResolver.resolve(context, widget.labelKey)),
      value: _isChecked,
      onChanged: (value) {
        setState(() {
          _isChecked = value!;
        });
        onChanged(value!);
      },
      controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('onChanged', onChanged));
  }
}

class RememberDeviceCheckbox
    extends AuthenticatorCheckbox<RememberDeviceCheckbox> {
  const RememberDeviceCheckbox({Key? key})
      : super(key: key, labelKey: CheckboxResolverKey.rememberDevice);

  @override
  RememberDeviceCheckboxState<RememberDeviceCheckbox> createState() =>
      RememberDeviceCheckboxState<RememberDeviceCheckbox>();
}

class RememberDeviceCheckboxState<T extends AuthenticatorCheckbox<T>>
    extends AuthenticatorCheckBoxState<T> {
  @override
  void Function(bool) get onChanged {
    return viewModel.setRememberDevice;
  }

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }
}
