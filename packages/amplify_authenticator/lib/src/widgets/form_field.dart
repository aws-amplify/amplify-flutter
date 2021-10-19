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

library authenticator.form_field;

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/enums/confirm_signin_types.dart';
import 'package:amplify_authenticator/src/enums/confirm_signup_types.dart';
import 'package:amplify_authenticator/src/enums/signin_types.dart';
import 'package:amplify_authenticator/src/enums/signup_types.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';
import 'package:amplify_authenticator/src/widgets/button.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/input_types/authenticator_date_input.dart';
import 'package:amplify_authenticator/src/widgets/input_types/authenticator_phone_input.dart';
import 'package:amplify_authenticator/src/widgets/input_types/authenticator_text_input.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

part 'form_fields/sign_in_form_field.dart';
part 'form_fields/sign_up_form_field.dart';
part 'form_fields/confirm_sign_up_form_field.dart';
part 'form_fields/confirm_sign_in_form_field.dart';
part 'form_fields/verify_user_form_field.dart';
part 'form_fields/confirm_verify_user_form_field.dart';

/// {@template authenticator.authenticator_form_field}
/// Base class for form field components.
///
/// See also:
/// - [SignInFormField]
/// - [SignUpFormField]
/// - [ConfirmSignInFormField]
/// - [ConfirmSignUpFormField]
/// - [VerifyUserFormField]
/// - [ConfirmVerifyUserFormField]
/// {@endtemplate}
abstract class AuthenticatorFormField<FieldType,
        T extends AuthenticatorFormField<FieldType, T>>
    extends AuthenticatorComponent<T> {
  /// {@macro authenticator.authenticator_form_field}
  const AuthenticatorFormField._({
    Key? key,
    required this.field,
    this.titleKey,
    this.hintTextKey,
    this.title,
    this.hintText,
    this.inputType = InputType.text,
    FormFieldValidator<String>? validator,
  })  : assert(
          titleKey != null || title != null,
          'Either title or titleKey must be provided',
        ),
        _validatorOverride = validator,
        super(key: key);

  /// Resolver key for the title
  final InputResolverKey? titleKey;

  /// Custom title
  final String? title;

  /// Resolver key for the hint text
  final InputResolverKey? hintTextKey;

  /// Custom hint text
  final String? hintText;

  /// The field this form field controls.
  final FieldType field;

  /// The type of input field, defaults to [InputType.text]
  final InputType inputType;

  /// Override of default validator.
  final FormFieldValidator<String>? _validatorOverride;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('field', field));
    properties.add(EnumProperty('titleKey', titleKey));
    properties.add(EnumProperty('hintTextKey', hintTextKey));
    properties.add(StringProperty('title', title));
    properties.add(StringProperty('hintText', hintText));
    properties.add(EnumProperty<InputType?>('inputType', inputType));
  }
}

abstract class _AuthenticatorFormFieldState<FieldType,
        T extends AuthenticatorFormField<FieldType, T>>
    extends AuthenticatorComponentState<T> {
  @nonVirtual
  Widget get visibilityToggle => context
      .findAncestorStateOfType<AuthenticatorFormState>()!
      .obscureTextToggle;

  @nonVirtual
  TextInputType get usernameKeyboardTypeForAlias {
    switch (config.usernameAlias) {
      case Alias.username:
        return TextInputType.text;
      case Alias.email:
        return TextInputType.emailAddress;
      case Alias.phoneNumber:
        return TextInputType.phone;
      case Alias.emailPhoneNumber:
        // TODO: can we improve on just a text field
        // maybe include an icon/toggle to alert user.
        return TextInputType.text;
    }
  }

  @nonVirtual
  void Function(String) get usernameOnChangedForAlias {
    switch (config.usernameAlias) {
      case Alias.username:
        return viewModel.setUsername;
      case Alias.email:
        return (String value) {
          viewModel.setUsername(value);
          viewModel.setEmail(value);
        };
      case Alias.phoneNumber:
        return (String value) {
          viewModel.setUsername(value);
          viewModel.setPhoneNumber(value);
        };
      case Alias.emailPhoneNumber:
        return (String value) {
          viewModel.setUsername(value);
          if (emailRegex.hasMatch(value)) {
            viewModel.setEmail(value);
          } else if (phoneNumberRegex.hasMatch(value)) {
            viewModel.setPhoneNumber(value);
          }
        };
    }
  }

  /// Callback for when `onChanged` is triggered on the [FormField].
  void Function(String) get onChanged => (_) {};

  /// Validates inputs of this form field.
  FormFieldValidator<String>? get validator => null;

  /// Whether to hide input.
  bool get obscureText => false;

  /// The keyboard type to use when this field is focused.
  TextInputType get keyboardType => TextInputType.text;

  /// The initial value to show in the field.
  String? get initialValue => null;

  /// Whether the form field accepts input.
  bool get enabled => true;

  /// Widget to show at trailing end.
  Widget? get suffixIcon => null;

  /// Widget to show directly below this field.
  Widget? get companionWidget => null;

  /// Maximum number of lines to use for error text.
  int get errorMaxLines => 1;

  @override
  Widget build(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = widget.hintText == null
        ? inputResolver.resolve(context, widget.hintTextKey!)
        : widget.hintText!;
    final title = widget.title == null
        ? inputResolver.resolve(context, widget.titleKey!)
        : widget.title!;
    return Container(
      margin: FormFieldConstants.marginBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title),
          const Padding(padding: FormFieldConstants.gap),
          ValueListenableBuilder<bool?>(
              valueListenable: context
                  .findAncestorStateOfType<AuthenticatorFormState>()!
                  .obscureTextToggleValue,
              builder:
                  (BuildContext context, bool? toggleObscureText, Widget? _) {
                var obscureText =
                    this.obscureText && (toggleObscureText ?? true);
                switch (widget.inputType) {
                  case InputType.text:
                    return AuthenticatorTextInput(
                        key: widget.key!,
                        onChanged: onChanged,
                        enabled: enabled,
                        keyboardType: keyboardType,
                        initialValue: initialValue,
                        suffixIcon: suffixIcon,
                        hintText: hintText,
                        companionWidget: companionWidget,
                        errorMaxLines: errorMaxLines,
                        obscureText: obscureText,
                        validator: widget._validatorOverride ?? validator);
                  case InputType.phone:
                    return AuthenticatorPhoneInput(
                        key: widget.key!,
                        enabled: enabled,
                        onChanged: onChanged,
                        keyboardType: keyboardType,
                        initialValue: initialValue,
                        suffixIcon: suffixIcon,
                        companionWidget: companionWidget,
                        errorMaxLines: errorMaxLines,
                        obscureText: obscureText,
                        hintText: hintText,
                        validator: widget._validatorOverride ?? validator);
                  case InputType.datePicker:
                    return AuthenticatorDateInput(
                        key: widget.key!,
                        enabled: enabled,
                        onChanged: onChanged,
                        keyboardType: keyboardType,
                        initialValue: initialValue,
                        suffixIcon: suffixIcon,
                        companionWidget: companionWidget,
                        errorMaxLines: errorMaxLines,
                        obscureText: obscureText,
                        hintText: hintText,
                        validator: widget._validatorOverride ?? validator);
                }
              }),
          if (companionWidget != null) companionWidget!,
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        ObjectFlagProperty<void Function(String)>.has('callback', onChanged));
    properties.add(ObjectFlagProperty<FormFieldValidator<String>?>.has(
        'validator', validator));
    properties.add(StringProperty('initialValue', initialValue));
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText));
    properties.add(DiagnosticsProperty<bool?>('enabled', enabled));
    properties
        .add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType));
    properties.add(IntProperty('errorMaxLines', errorMaxLines));
    properties.add(DiagnosticsProperty<TextInputType>(
        'keyboardTypeForAlias', usernameKeyboardTypeForAlias));
  }
}
