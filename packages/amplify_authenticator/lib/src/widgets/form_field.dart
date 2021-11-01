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
import 'package:amplify_authenticator/src/enums/confirm_signin_types.dart';
import 'package:amplify_authenticator/src/enums/confirm_signup_types.dart';
import 'package:amplify_authenticator/src/enums/signin_types.dart';
import 'package:amplify_authenticator/src/enums/signup_types.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/mixins/authenticator_text_field.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';
import 'package:amplify_authenticator/src/widgets/button.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/input_types/field_options.dart';
import 'package:amplify_flutter/src/config/auth/aws_cognito_username_attributes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
abstract class AuthenticatorFormField<FieldType, FieldValue,
        T extends AuthenticatorFormField<FieldType, FieldValue, T>>
    extends AuthenticatorComponent<T> {
  /// {@macro authenticator.authenticator_form_field}
  const AuthenticatorFormField._({
    Key? key,
    required this.field,
    this.titleKey,
    this.hintTextKey,
    this.title,
    this.hintText,
    this.fieldConfig,
    FormFieldValidator<FieldValue>? validator,
  })  : assert(
          titleKey != null || title != null,
          'Either title or titleKey must be provided',
        ),
        validatorOverride = validator,
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

  /// The options for the input field
  final FieldConfig? fieldConfig;

  /// Override of default validator.
  final FormFieldValidator<FieldValue>? validatorOverride;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('field', field));
    properties.add(EnumProperty('titleKey', titleKey));
    properties.add(EnumProperty('hintTextKey', hintTextKey));
    properties.add(StringProperty('title', title));
    properties.add(StringProperty('hintText', hintText));
    properties
        .add(DiagnosticsProperty<FieldConfig?>('fieldConfig', fieldConfig));
  }
}

abstract class AuthenticatorFormFieldState<FieldType, FieldValue,
        T extends AuthenticatorFormField<FieldType, FieldValue, T>>
    extends AuthenticatorComponentState<T> {
  @nonVirtual
  Widget get visibilityToggle => context
      .findAncestorStateOfType<AuthenticatorFormState>()!
      .obscureTextToggle;

  late final List<AwsCognitoUsernameAttributes> _usernameAttributes = config
          .amplifyConfig
          ?.auth
          ?.awsCognitoAuthPlugin
          ?.auth?['Default']
          ?.awsCognitoUsernameAttributes ??
      const <AwsCognitoUsernameAttributes>[];

  @nonVirtual
  TextInputType get usernameKeyboardTypeForUsername {
    if (_usernameAttributes.contains(AwsCognitoUsernameAttributes.email) &&
        _usernameAttributes.length == 1) {
      return TextInputType.emailAddress;
    } else if (_usernameAttributes
            .contains(AwsCognitoUsernameAttributes.phoneNumber) &&
        _usernameAttributes.length == 1) {
      return TextInputType.phone;
    } else {
      // No assumptions made
      return TextInputType.text;
    }
  }

  // @nonVirtual
  // ValueChanged<String> get usernameOnChanged {
  //   final List<ValueChanged<String>> ops = [];

  //   if (_usernameAttributes.contains(LoginMechanisms.preferredUsername)) {
  //     ops.add(viewModel.setUsername);
  //   }
  //   if (_usernameAttributes.contains(LoginMechanisms.email)) {
  //     ops.add(viewModel.setEmail);
  //   } else if (_usernameAttributes.contains(LoginMechanisms.phoneNumber)) {
  //     ops.add(viewModel.setPhoneNumber);
  //   }
  //   return (String value) {
  //     for (var op in ops) {
  //       op(value);
  //     }
  //   };
  // }

  /// Callback for when `onChanged` is triggered on the [FormField].
  ValueChanged<FieldValue> get onChanged => (_) {};

  /// Validates inputs of this form field.
  FormFieldValidator<FieldValue>? get validator => null;

  /// Whether to hide input.
  bool get obscureText => false;

  /// The keyboard type to use when this field is focused.
  TextInputType? get keyboardType => TextInputType.text;

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

  Widget buildFormField(BuildContext context);

  @nonVirtual
  @override
  Widget build(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final String title = widget.title == null
        ? inputResolver.resolve(context, widget.titleKey!)
        : widget.title!;
    return Container(
      margin: FormFieldConstants.marginBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title),
          const Padding(padding: FormFieldConstants.gap),
          buildFormField(context),
          if (companionWidget != null) companionWidget!,
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<FormFieldValidator<String>?>.has(
        'validator', validator));
    properties
        .add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType));
    properties.add(StringProperty('initialValue', initialValue));
    properties.add(DiagnosticsProperty<bool>('enabled', enabled));
    properties.add(IntProperty('errorMaxLines', errorMaxLines));
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText));
  }
}
