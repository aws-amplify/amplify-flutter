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

/// {@template authenticator.authenticator_switch}
/// An Authenticator switch component with default layout and styling.
/// {@endtemplate}
class AuthenticatorSwitch<T extends AuthenticatorSwitch<T>>
    extends AuthenticatorComponent<T> {
  /// {@macro authenticator.authenticator_button}
  const AuthenticatorSwitch({Key? key, required this.labelKey})
      : super(key: key);

  /// The switch's label key.
  final InputResolverKey labelKey;

  



  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('labelKey', labelKey));
  }

  @override
  _AuthenticatorSwitchState<T> createState() => _AuthenticatorSwitchState<T>();
}

class _AuthenticatorSwitchState<T extends AuthenticatorSwitch<T>>
    extends AuthenticatorComponentState<T> {
  _AuthenticatorSwitchState();

  var _isChecked = false;

  /// Callback for when `onChanged` is triggered on the [_AuthenticatorSwitch].
  ValueChanged<bool> get onChanged => (_) {};

  @override
  Widget build(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    return Row(children: [
      if (widget.leftText)
      IconButton(
        icon: const Icon(Icons.calendar_today),
        tooltip: 'Select birthdate',
        onPressed: _pickTime,
      ),
      Expanded(
          child: TextFormField(
        inputFormatters: [LengthLimitingTextInputFormatter(10)],
        style: parentState.enabled
            ? null
            : const TextStyle(
                color: AmplifyColors.black20,
              ),
        enabled: parentState.enabled,
        readOnly: true,
        validator: parentState.validator,
        decoration: InputDecoration(
          suffixIcon: parentState.suffixIcon,
          errorMaxLines: parentState.errorMaxLines,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
        keyboardType: TextInputType.datetime,
        obscureText: parentState.obscureText,
        controller: _controller,
      ))
    ]);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('onChanged', onChanged));
  }
}

class SwitchSelection {
  String label;
  String value;
  SwitchSelection(this.label, this.value)
}

class UsernameSwitch extends AuthenticatorSwitch<UsernameSwitch> {
  const UsernameSwitch({Key? key})
      : super(key: key, labelKey: InputResolverKey.rememberDevice);

  @override
  _UsernameSwitchState<UsernameSwitch> createState() =>
      _UsernameSwitchState<UsernameSwitch>();
}

class _UsernameSwitchState<T extends AuthenticatorSwitch<T>>
    extends _AuthenticatorSwitchState<T> {
  @override
  void Function(bool) get onChanged {
    return viewModel.setRememberDevice;
  }
}
