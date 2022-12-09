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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template amplify_authenticator.authenticator_checkbox}
/// An Authenticator checkbox component with default layout and styling.
/// {@endtemplate}
class AuthenticatorCheckbox<T extends AuthenticatorCheckbox<T>>
    extends AuthenticatorComponent<T> {
  /// {@macro amplify_authenticator.authenticator_button}
  const AuthenticatorCheckbox({Key? key, required this.labelKey})
      : super(key: key);

  /// The checkbox's label key.
  final InputResolverKey labelKey;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('labelKey', labelKey));
  }

  @override
  AuthenticatorComponentState<T> createState() =>
      _AuthenticatorCheckBoxState<T>();
}

class _AuthenticatorCheckBoxState<T extends AuthenticatorCheckbox<T>>
    extends AuthenticatorComponentState<T> {
  _AuthenticatorCheckBoxState();

  var _isChecked = false;

  /// Callback for when `onChanged` is triggered on the [AuthenticatorCheckbox].
  ValueChanged<bool> get onChanged => (_) {};

  @override
  Widget build(BuildContext context) {
    final checkboxResolver = stringResolver.inputs;
    return CheckboxListTile(
      title: Text(checkboxResolver.resolve(context, widget.labelKey)),
      value: _isChecked,
      tristate: false,
      onChanged: (value) {
        // Checkbox value can only be true/false since tristate is false.
        final boolValue = value!;
        setState(() {
          _isChecked = boolValue;
        });
        onChanged(boolValue);
      },
      controlAffinity: ListTileControlAffinity.leading,
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
      : super(key: key, labelKey: InputResolverKey.rememberDevice);

  @override
  AuthenticatorComponentState<RememberDeviceCheckbox> createState() =>
      _RememberDeviceCheckboxState<RememberDeviceCheckbox>();
}

class _RememberDeviceCheckboxState<T extends AuthenticatorCheckbox<T>>
    extends _AuthenticatorCheckBoxState<T> {
  @override
  ValueChanged<bool> get onChanged {
    return (v) => state.rememberDevice = v;
  }
}
