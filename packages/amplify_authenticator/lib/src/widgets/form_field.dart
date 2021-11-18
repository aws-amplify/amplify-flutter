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
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/enums/authenticator_form_field_type.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/models/username_input.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/utils/country_code.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';
import 'package:amplify_authenticator/src/widgets/authenticator_input_config.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

part 'form_fields/confirm_sign_in_form_field.dart';
part 'form_fields/confirm_sign_up_form_field.dart';
part 'form_fields/confirm_verify_user_form_field.dart';
part 'form_fields/reset_password_form_field.dart';
part 'form_fields/sign_in_form_field.dart';
part 'form_fields/sign_up_form_field.dart';
part 'form_fields/verify_user_form_field.dart';

/// {@template authenticator.authenticator_form_field}
/// Base class for form field components.
///
/// See also:
/// - [SignInFormField]
/// - [SignUpFormField]
/// - [ConfirmSignInFormField]
/// - [ConfirmSignUpFormField]
/// - [VerifyUserFormField]
/// {@endtemplate}
abstract class AuthenticatorFormField extends AuthenticatorComponent {
  /// {@macro authenticator.authenticator_form_field}
  const AuthenticatorFormField._({
    Key? key,
    required this.field,
    this.titleKey,
    this.hintTextKey,
    this.title,
    this.hintText,
    FormFieldValidator<String>? validator,
    this.required,
  })  : validatorOverride = validator,
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
  final AuthenticatorFormFieldType field;

  /// Override of default validator.
  final FormFieldValidator<String>? validatorOverride;

  /// The priority to show this field when ordering fields visually in a form.
  /// Larger numbers take higher precedence.
  int get displayPriority => 1;

  /// User override of default [required] value.
  final bool? required;

  /// The username attribute corresponding to this field, if any. This is used
  /// to properly address situations where custom fields are added which conflict
  /// with username fields.
  UsernameType? get usernameType => null;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('field', field));
    properties.add(EnumProperty('titleKey', titleKey));
    properties.add(EnumProperty('hintTextKey', hintTextKey));
    properties.add(StringProperty('title', title));
    properties.add(StringProperty('hintText', hintText));
    properties.add(ObjectFlagProperty<FormFieldValidator<String>?>.has(
        'validatorOverride', validatorOverride));
    properties.add(IntProperty('priority', displayPriority));
    properties.add(DiagnosticsProperty<bool?>('required', required));
    properties.add(EnumProperty<UsernameType?>('usernameType', usernameType));
  }
}

abstract class AuthenticatorFormFieldState
    extends AuthenticatorComponentState<AuthenticatorFormField> {
  @nonVirtual
  Widget get visibilityToggle => context
      .findAncestorStateOfType<AuthenticatorFormState>()!
      .obscureTextToggle;

  @nonVirtual
  UsernameConfigType get usernameType =>
      context.findAncestorStateOfType<AuthenticatorFormState>()!.usernameType;

  @nonVirtual
  UsernameType get selectedUsernameType => context
      .findAncestorStateOfType<AuthenticatorFormState>()!
      .selectedUsernameType;

  @nonVirtual
  ValueNotifier<bool> get useEmail =>
      context.findAncestorStateOfType<AuthenticatorFormState>()!.useEmail;

  /// Callback for when `onChanged` is triggered on the [FormField].
  ValueChanged<String> get onChanged => (input) {};

  /// Whether the field is required in the form.
  bool get requiredDefault {
    switch (widget.field) {
      case AuthenticatorFormFieldType.verificationCode:
      case AuthenticatorFormFieldType.password:
      case AuthenticatorFormFieldType.newPassword:
      case AuthenticatorFormFieldType.username:
      case AuthenticatorFormFieldType.passwordConfirmation:
      case AuthenticatorFormFieldType.verify:
      case AuthenticatorFormFieldType.confirmVerify:
        return true;
      case AuthenticatorFormFieldType.address:
      case AuthenticatorFormFieldType.birthdate:
      case AuthenticatorFormFieldType.email:
      case AuthenticatorFormFieldType.familyName:
      case AuthenticatorFormFieldType.gender:
      case AuthenticatorFormFieldType.givenName:
      case AuthenticatorFormFieldType.middleName:
      case AuthenticatorFormFieldType.name:
      case AuthenticatorFormFieldType.nickname:
      case AuthenticatorFormFieldType.phoneNumber:
      case AuthenticatorFormFieldType.preferredUsername:
      case AuthenticatorFormFieldType.custom:
        return false;
    }
  }

  /// Validates inputs of this form field.
  ///
  /// By default, this validates all inputs.
  FormFieldValidator<String> get validator {
    switch (widget.field) {
      case AuthenticatorFormFieldType.username:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.usernameEmpty,
          ),
          isOptional: isOptional,
        );
      case AuthenticatorFormFieldType.password:
        return validateNewPassword(
          amplifyConfig: config.amplifyConfig,
          inputResolver: stringResolver.inputs,
        )(context);
      case AuthenticatorFormFieldType.passwordConfirmation:
        return validatePasswordConfirmation(() => viewModel.password);
      case AuthenticatorFormFieldType.email:
        return (email) => validateEmail(email, isOptional: isOptional);
      case AuthenticatorFormFieldType.address:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.addressEmpty,
          ),
          isOptional: isOptional,
        );
      case AuthenticatorFormFieldType.birthdate:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.birthdateEmpty,
          ),
          isOptional: isOptional,
        );
      case AuthenticatorFormFieldType.familyName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.familyNameEmpty,
          ),
          isOptional: isOptional,
        );
      case AuthenticatorFormFieldType.gender:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.genderEmpty,
          ),
          isOptional: isOptional,
        );
      case AuthenticatorFormFieldType.givenName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.givenNameEmpty,
          ),
          isOptional: isOptional,
        );
      case AuthenticatorFormFieldType.middleName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.middleNameEmpty,
          ),
          isOptional: isOptional,
        );
      case AuthenticatorFormFieldType.name:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.nameEmpty,
          ),
          isOptional: isOptional,
        );
      case AuthenticatorFormFieldType.nickname:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.nicknameEmpty,
          ),
          isOptional: isOptional,
        );
      case AuthenticatorFormFieldType.preferredUsername:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.preferredUsernameEmpty,
          ),
          isOptional: isOptional,
        );
      default:
        return (String? _) => null;
    }
  }

  /// Whether to hide input.
  bool get obscureText {
    switch (widget.field) {
      case AuthenticatorFormFieldType.password:
      case AuthenticatorFormFieldType.newPassword:
      case AuthenticatorFormFieldType.passwordConfirmation:
        return true;
      default:
        return false;
    }
  }

  /// The keyboard type to use when this field is focused.
  TextInputType get keyboardType {
    switch (widget.field) {
      case AuthenticatorFormFieldType.verificationCode:
        return TextInputType.number;
      case AuthenticatorFormFieldType.password:
      case AuthenticatorFormFieldType.newPassword:
      case AuthenticatorFormFieldType.passwordConfirmation:
        return TextInputType.visiblePassword;
      case AuthenticatorFormFieldType.address:
        return TextInputType.streetAddress;
      case AuthenticatorFormFieldType.email:
        return TextInputType.emailAddress;
      case AuthenticatorFormFieldType.name:
        return TextInputType.name;
      case AuthenticatorFormFieldType.phoneNumber:
        return TextInputType.phone;
      case AuthenticatorFormFieldType.birthdate:
        return TextInputType.datetime;
      case AuthenticatorFormFieldType.username:
      case AuthenticatorFormFieldType.familyName:
      case AuthenticatorFormFieldType.gender:
      case AuthenticatorFormFieldType.givenName:
      case AuthenticatorFormFieldType.middleName:
      case AuthenticatorFormFieldType.nickname:
      case AuthenticatorFormFieldType.preferredUsername:
      case AuthenticatorFormFieldType.confirmVerify:
      case AuthenticatorFormFieldType.custom:
        return TextInputType.text;
      case AuthenticatorFormFieldType.verify:
        return TextInputType.none;
    }
  }

  String? get initialValue {
    switch (widget.field) {
      case AuthenticatorFormFieldType.verificationCode:
        return viewModel.confirmationCode;
      case AuthenticatorFormFieldType.password:
        return viewModel.password;
      case AuthenticatorFormFieldType.newPassword:
        return viewModel.newPassword;
      case AuthenticatorFormFieldType.passwordConfirmation:
        return viewModel.passwordConfirmation;
      case AuthenticatorFormFieldType.username:
        return viewModel.username;
      case AuthenticatorFormFieldType.address:
      case AuthenticatorFormFieldType.birthdate:
      case AuthenticatorFormFieldType.email:
      case AuthenticatorFormFieldType.familyName:
      case AuthenticatorFormFieldType.gender:
      case AuthenticatorFormFieldType.givenName:
      case AuthenticatorFormFieldType.middleName:
      case AuthenticatorFormFieldType.name:
      case AuthenticatorFormFieldType.nickname:
      case AuthenticatorFormFieldType.phoneNumber:
      case AuthenticatorFormFieldType.preferredUsername:
        return viewModel.getAttribute(widget.field.toCognitoAttribute());
      case AuthenticatorFormFieldType.custom:
      // TODO: handle custom attributes
      // return viewModel.getAttribute(widget._customAttributeKey!);
      case AuthenticatorFormFieldType.verify:
        // TODO: Handle this case.
        break;
      case AuthenticatorFormFieldType.confirmVerify:
        // TODO: Handle this case.
        break;
    }
  }

  /// Whether the form field accepts input.
  bool get enabled => true;

  /// Widget to show at leading end, typically an [Icon].
  Widget? get prefix => null;

  /// Widget to show at trailing end, typically an [Icon].
  Widget? get suffix {
    switch (widget.field) {
      case AuthenticatorFormFieldType.password:
      case AuthenticatorFormFieldType.newPassword:
      case AuthenticatorFormFieldType.passwordConfirmation:
        return visibilityToggle;
      default:
        return null;
    }
  }

  /// Widget to show directly below this field.
  Widget? get companionWidget => null;

  /// Maximum number of lines to use for error text.
  int get errorMaxLines => 1;

  /// The maximum length of the input.
  int? get maxLength {
    switch (widget.field) {
      case AuthenticatorFormFieldType.verificationCode:
        return 6;
      default:
        return null;
    }
  }

  /// Title widget to use above form field.
  ///
  /// Defaults to a [Text] object with the form field's title.
  Widget? get title => null;

  /// Whether the field is optional, i.e. does not require user input. This is
  /// used to correctly label fields to the user.
  bool get isOptional {
    final isRequired = (widget.required ?? false) || requiredDefault;
    return !isRequired;
  }

  Widget buildFormField(BuildContext context) => Container();

  @override
  Widget build(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    Widget? title = this.title;
    if (title == null) {
      final titleString =
          widget.title ?? widget.titleKey?.resolve(context, inputResolver);
      if (titleString != null) {
        title = Text(
          isOptional
              ? inputResolver.optional(context, titleString)
              : titleString,
        );
      }
    }
    final titleStyle = Theme.of(context).inputDecorationTheme.labelStyle ??
        Theme.of(context).textTheme.subtitle1 ??
        const TextStyle(fontSize: 16);

    return Container(
      margin: title == null ? EdgeInsets.zero : FormFieldConstants.marginBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (title != null)
            DefaultTextStyle(
              style: titleStyle,
              child: title,
            ),
          const SizedBox(height: FormFieldConstants.gap),
          buildFormField(context),
          if (companionWidget != null) companionWidget!,
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType));
    properties.add(DiagnosticsProperty<bool>('enabled', enabled));
    properties.add(IntProperty('errorMaxLines', errorMaxLines));
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText));
    properties.add(
        ObjectFlagProperty<ValueChanged<String>?>.has('onChanged', onChanged));
    properties.add(ObjectFlagProperty<FormFieldValidator<String>?>.has(
        'validator', validator));
    properties.add(DiagnosticsProperty<String?>('initialValue', initialValue));
    properties
        .add(EnumProperty<UsernameConfigType>('usernameType', usernameType));
    properties.add(EnumProperty<UsernameType>(
        'selectedUsernameType', selectedUsernameType));
    properties
        .add(DiagnosticsProperty<ValueNotifier<bool>>('useEmail', useEmail));
    properties.add(IntProperty('maxLength', maxLength));
    properties.add(DiagnosticsProperty<bool>('isOptional', isOptional));
    properties
        .add(DiagnosticsProperty<bool>('requiredDefault', requiredDefault));
  }
}

class AuthenticatorTextFormField extends AuthenticatorFormField {
  const AuthenticatorTextFormField._({
    Key? key,
    required AuthenticatorFormFieldType field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    String? Function(String?)? validator,
    bool? required,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
          required: required,
        );

  /// Creates a username component
  static AuthenticatorTextFormField username({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.usernameTitle,
        hintTextKey: InputResolverKey.usernameHint,
        field: AuthenticatorFormFieldType.username,
      );

  /// Creates a email component
  static AuthenticatorTextFormField email({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.emailTitle,
        hintTextKey: InputResolverKey.emailHint,
        field: AuthenticatorFormFieldType.email,
      );

  static AuthenticatorTextFormField _emailNoLabel({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: null,
        hintTextKey: InputResolverKey.emailHint,
        field: AuthenticatorFormFieldType.email,
      );

  /// Creates a password component
  static AuthenticatorTextFormField password({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.passwordTitle,
        hintTextKey: InputResolverKey.passwordHint,
        field: AuthenticatorFormFieldType.password,
      );

  /// Creates a new password component
  static AuthenticatorTextFormField newPassword({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.passwordTitle,
        hintTextKey: InputResolverKey.newPasswordHint,
        field: AuthenticatorFormFieldType.newPassword,
      );

  /// Creates a password confirmation component
  static AuthenticatorTextFormField passwordConfirmation({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.passwordConfirmationTitle,
        hintTextKey: InputResolverKey.passwordConfirmationHint,
        field: AuthenticatorFormFieldType.passwordConfirmation,
      );

  static AuthenticatorTextFormField verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.verificationCodeTitle,
        hintTextKey: InputResolverKey.verificationCodeHint,
        field: AuthenticatorFormFieldType.verificationCode,
      );

  static AuthenticatorTextFormField address({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.addressTitle,
        hintTextKey: InputResolverKey.addressHint,
        field: AuthenticatorFormFieldType.address,
      );

  static AuthenticatorTextFormField birthdate({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.birthdateTitle,
        hintTextKey: InputResolverKey.birthdateHint,
        field: AuthenticatorFormFieldType.birthdate,
      );

  static AuthenticatorTextFormField familyName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.familyNameTitle,
        hintTextKey: InputResolverKey.familyNameHint,
        field: AuthenticatorFormFieldType.familyName,
      );

  static AuthenticatorTextFormField gender({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.genderTitle,
        hintTextKey: InputResolverKey.genderHint,
        field: AuthenticatorFormFieldType.gender,
      );

  static AuthenticatorTextFormField givenName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.givenNameTitle,
        hintTextKey: InputResolverKey.givenNameHint,
        field: AuthenticatorFormFieldType.givenName,
      );

  static AuthenticatorTextFormField middleName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.middleNameTitle,
        hintTextKey: InputResolverKey.middleNameHint,
        field: AuthenticatorFormFieldType.givenName,
      );

  static AuthenticatorTextFormField name({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.nameTitle,
        hintTextKey: InputResolverKey.nameHint,
        field: AuthenticatorFormFieldType.name,
      );

  static AuthenticatorTextFormField nickname({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.nicknameTitle,
        hintTextKey: InputResolverKey.nicknameHint,
        field: AuthenticatorFormFieldType.nickname,
      );

  static AuthenticatorTextFormField phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.phoneNumberTitle,
        hintTextKey: InputResolverKey.phoneNumberHint,
        field: AuthenticatorFormFieldType.phoneNumber,
      );

  static AuthenticatorTextFormField preferredUsername({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.preferredUsernameTitle,
        hintTextKey: InputResolverKey.preferredUsernameHint,
        field: AuthenticatorFormFieldType.preferredUsername,
      );

  static AuthenticatorTextFormField custom({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
  }) =>
      AuthenticatorTextFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: titleKey,
        hintTextKey: hintTextKey,
        field: AuthenticatorFormFieldType.custom,
      );

  @override
  AuthenticatorTextFormFieldState createState() =>
      AuthenticatorTextFormFieldState();
}

class AuthenticatorTextFormFieldState extends AuthenticatorFormFieldState {
  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case AuthenticatorFormFieldType.username:
        return viewModel.setUsername;
      case AuthenticatorFormFieldType.verificationCode:
        return viewModel.setConfirmationCode;
      case AuthenticatorFormFieldType.password:
        return viewModel.setPassword;
      case AuthenticatorFormFieldType.newPassword:
        return viewModel.setNewPassword;
      case AuthenticatorFormFieldType.passwordConfirmation:
        return viewModel.setPasswordConfirmation;
      case AuthenticatorFormFieldType.address:
        return viewModel.setAddress;
      case AuthenticatorFormFieldType.email:
        return viewModel.setEmail;
      case AuthenticatorFormFieldType.familyName:
        return viewModel.setFamilyName;
      case AuthenticatorFormFieldType.gender:
        return viewModel.setGender;
      case AuthenticatorFormFieldType.givenName:
        return viewModel.setGivenName;
      case AuthenticatorFormFieldType.middleName:
        return viewModel.setMiddleName;
      case AuthenticatorFormFieldType.name:
        return viewModel.setName;
      case AuthenticatorFormFieldType.nickname:
        return viewModel.setNickname;
      case AuthenticatorFormFieldType.preferredUsername:
        return viewModel.setPreferredUsername;
      case AuthenticatorFormFieldType.custom:
        // TODO: handle custom attributes
        return viewModel.setPreferredUsername;
      // return (String value) => viewModel.setCustom(
      //       widget._customAttributeKey!,
      //       value,
      //     );
      case AuthenticatorFormFieldType.confirmVerify:
        return viewModel.setPreferredUsername;
      default:
        throw StateError(
            '${widget.field} is not supported as a AuthenticatorTextFormField}');
    }
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = widget.hintText == null
        ? widget.hintTextKey?.resolve(context, inputResolver)
        : widget.hintText!;
    return ValueListenableBuilder<bool>(
      valueListenable: context
          .findAncestorStateOfType<AuthenticatorFormState>()!
          .obscureTextToggleValue,
      builder: (BuildContext context, bool toggleObscureText, Widget? _) {
        var obscureText = this.obscureText && toggleObscureText;
        return TextFormField(
          style: enabled
              ? null
              : TextStyle(color: AmplifyTheme.of(context).fontDisabled),
          initialValue: initialValue,
          enabled: enabled,
          validator: widget.validatorOverride ?? validator,
          onChanged: onChanged,
          autocorrect: false,
          decoration: InputDecoration(
            prefixIcon: prefix,
            prefixIconConstraints: const BoxConstraints(
              minWidth: 40,
              maxWidth: 70,
            ),
            suffixIcon: suffix,
            errorMaxLines: errorMaxLines,
            hintText: hintText,
            isDense: true,
          ),
          maxLength: maxLength,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          keyboardType: keyboardType,
          obscureText: obscureText,
          textAlignVertical: TextAlignVertical.center,
        );
      },
    );
  }
}

class AuthenticatorDateFormField extends AuthenticatorFormField {
  const AuthenticatorDateFormField._({
    Key? key,
    required AuthenticatorFormFieldType field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    String? Function(String?)? validator,
    bool? required,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
          required: required,
        );

  static AuthenticatorDateFormField birthdate({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorDateFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.birthdateTitle,
        hintTextKey: InputResolverKey.birthdateHint,
        field: AuthenticatorFormFieldType.birthdate,
      );

  @override
  AuthenticatorDateFormFieldState createState() =>
      AuthenticatorDateFormFieldState();
}

class AuthenticatorDateFormFieldState extends AuthenticatorFormFieldState {
  static final DateFormat _formatter = DateFormat('yyyy-MM-dd');
  String _convertToDateString(DateTime dt) {
    return _formatter.format(dt);
  }

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case AuthenticatorFormFieldType.birthdate:
        return viewModel.setBirthdate;
      default:
        throw StateError(
            '${widget.field} is not supported as a AuthenticatorDateFormField}');
    }
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = widget.hintText == null
        ? inputResolver.resolve(context, widget.hintTextKey!)
        : widget.hintText!;

    DateTime now = DateTime.now();
    Future<void> _pickTime() async {
      final date = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: DateTime(DateTime.now().year - 110),
        lastDate: now,
        initialEntryMode: DatePickerEntryMode.input,
      );
      if (date != null) {
        _controller.text = _convertToDateString(date);
        onChanged.call(_controller.text);
      }
    }

    return TextFormField(
      style: enabled
          ? null
          : TextStyle(
              color: AmplifyTheme.of(context).fontDisabled,
            ),
      enabled: enabled,
      readOnly: true,
      onTap: _pickTime,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_today),
          tooltip: 'Select birthdate',
          onPressed: _pickTime,
        ),
        errorMaxLines: errorMaxLines,
        hintText: hintText,
      ),
      keyboardType: TextInputType.datetime,
      controller: _controller,
    );
  }
}

class AuthenticatorUsernameFormField extends AuthenticatorFormField {
  const AuthenticatorUsernameFormField._({
    Key? key,
    required AuthenticatorFormFieldType field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    String? Function(String?)? validator,
    bool? required,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
          required: required,
        );

  static AuthenticatorUsernameFormField username({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorUsernameFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.usernameTitle,
        hintTextKey: InputResolverKey.usernameHint,
        field: AuthenticatorFormFieldType.username,
      );

  @override
  AuthenticatorUsernameFormFieldState createState() =>
      AuthenticatorUsernameFormFieldState();
}

class AuthenticatorUsernameFormFieldState extends AuthenticatorFormFieldState {
  InputResolverKey get titleKey {
    switch (selectedUsernameType) {
      case UsernameType.username:
        return InputResolverKey.usernameTitle;
      case UsernameType.email:
        return InputResolverKey.emailTitle;
      case UsernameType.phoneNumber:
        return InputResolverKey.phoneNumberTitle;
    }
  }

  @override
  Widget get title {
    final inputResolver = stringResolver.inputs;
    final titleString = inputResolver.resolve(context, titleKey);
    final labelText = Text(
      isOptional ? inputResolver.optional(context, titleString) : titleString,
    );
    // Mirrors internal impl. to create an "always active" Switch theme.
    final thumbColor = Theme.of(context).toggleableActiveColor;
    final trackColor = thumbColor.withOpacity(0.5);

    switch (usernameType) {
      case UsernameConfigType.username:
      case UsernameConfigType.email:
      case UsernameConfigType.phoneNumber:
        return labelText;
      case UsernameConfigType.emailOrPhoneNumber:
      default:
        return SizedBox(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              labelText,
              IconTheme.merge(
                data: const IconThemeData(size: 16.0),
                child: Row(
                  children: [
                    const Icon(Icons.phone),
                    Switch(
                      thumbColor: MaterialStateProperty.all(thumbColor),
                      trackColor: MaterialStateProperty.all(trackColor),
                      value: useEmail.value,
                      onChanged: (val) {
                        setState(() {
                          useEmail.value = val;
                        });

                        // Reset current username value to align with the current switch state.
                        String newUsername = val
                            ? viewModel.getAttribute(
                                    CognitoUserAttributeKey.email) ??
                                ''
                            : viewModel.getAttribute(
                                    CognitoUserAttributeKey.phoneNumber) ??
                                '';
                        viewModel.setUsername(newUsername);
                      },
                    ),
                    const Icon(Icons.email),
                  ],
                ),
              ),
            ],
          ),
        );
    }
  }

  @override
  Widget buildFormField(BuildContext context) {
    switch (selectedUsernameType) {
      case UsernameType.username:
        return AuthenticatorTextFormField.username(
          required: widget.required,
          key: widget.key,
          validator: widget.validatorOverride,
        );
      case UsernameType.email:
        if (usernameType == UsernameConfigType.emailOrPhoneNumber) {
          return AuthenticatorTextFormField._emailNoLabel(
            required: widget.required,
            key: widget.key,
            validator: widget.validatorOverride,
          );
        } else {
          return AuthenticatorTextFormField.email(
            required: widget.required,
            key: widget.key,
            validator: widget.validatorOverride,
          );
        }
      case UsernameType.phoneNumber:
        if (usernameType == UsernameConfigType.emailOrPhoneNumber) {
          return AuthenticatorPhoneFormField._phoneNumberNoLabel(
            required: widget.required,
            key: widget.key,
            validator: widget.validatorOverride,
          );
        } else {
          return AuthenticatorPhoneFormField.phoneNumber(
            required: widget.required,
            key: widget.key,
            validator: widget.validatorOverride,
          );
        }
    }
  }
}

class AuthenticatorPhoneFormField extends AuthenticatorFormField {
  const AuthenticatorPhoneFormField._({
    Key? key,
    required AuthenticatorFormFieldType field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    String? Function(String?)? validator,
    bool? required,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
          required: required,
        );

  static AuthenticatorPhoneFormField phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorPhoneFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: InputResolverKey.phoneNumberTitle,
        hintTextKey: InputResolverKey.phoneNumberHint,
        field: AuthenticatorFormFieldType.phoneNumber,
      );

  static AuthenticatorPhoneFormField _phoneNumberNoLabel({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorPhoneFormField._(
        key: key,
        validator: validator,
        required: required,
        titleKey: null,
        hintTextKey: InputResolverKey.phoneNumberHint,
        field: AuthenticatorFormFieldType.phoneNumber,
      );

  @override
  AuthenticatorPhoneFormFieldState createState() =>
      AuthenticatorPhoneFormFieldState();
}

class AuthenticatorPhoneFormFieldState extends AuthenticatorTextFormFieldState
    implements SelectableConfig<CountryResolverKey, Country> {
  late final CountryResolver _countriesResolver = stringResolver.countries;

  @override
  Country get selectionValue => _selectedCountry;
  late Country _selectedCountry = selections.first.value;

  String _searchVal = '';

  @override
  late final List<InputSelection<CountryResolverKey, Country>> selections =
      countryCodes
          .map((Country country) => InputSelection(
                label: country.key,
                value: country,
              ))
          .toList();

  List<Country> get filteredCountries => countryCodes
      .where(
        (country) => _countriesResolver
            .resolve(context, country.key)
            .toLowerCase()
            .contains(_searchVal.toLowerCase()),
      )
      .toList();

  @override
  FormFieldValidator<String> get validator {
    return (String? phoneNumber) {
      phoneNumber = formatPhoneNumber(phoneNumber);
      return validatePhoneNumber(phoneNumber, isOptional: isOptional);
    };
  }

  String? formatPhoneNumber(String? phoneNumber) {
    return phoneNumber?.ensureStartsWith('+${_selectedCountry.value}');
  }

  String displayPhoneNumber(String phoneNumber) {
    var prefix = '+${_selectedCountry.value}';
    if (phoneNumber.startsWith(prefix)) {
      phoneNumber = phoneNumber.substring(prefix.length);
    }
    return phoneNumber;
  }

  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case AuthenticatorFormFieldType.phoneNumber:
        return (input) =>
            viewModel.setPhoneNumber(formatPhoneNumber(input) ?? '');
      default:
        throw StateError(
            '${widget.field} is not supported as a AuthenticatorPhoneFormField}');
    }
  }

  @override
  Widget get prefix => Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '+${_selectedCountry.value}',
                style: Theme.of(context).inputDecorationTheme.hintStyle ??
                    Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
              const Flexible(
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 15.0,
                ),
              ),
              const SizedBox(width: 5),
            ],
          ),
          onTap: showCountryDialog,
        ),
      );

  Future<void> showCountryDialog() async {
    // Reset search
    _searchVal = '';

    final selectedCountry = await showDialog<Country>(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      _countriesResolver.resolve(
                        context,
                        CountryResolverKey.selectDialCode,
                      ),
                      style: DialogTheme.of(context).titleTextStyle ??
                          Theme.of(context).textTheme.headline6!,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        isDense: true,
                      ),
                      onChanged: (String searchVal) {
                        setState(() {
                          _searchVal = searchVal;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        Country current = filteredCountries[index];
                        return SimpleDialogOption(
                          onPressed: () => Navigator.of(context).pop(current),
                          child: Text(
                            '${_countriesResolver.resolve(context, current.key)} '
                            '(+${current.value})',
                          ),
                        );
                      },
                      itemCount: filteredCountries.length,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            );
          },
        );
      },
    );

    if (selectedCountry != null) {
      setState(() {
        _selectedCountry = selectedCountry;
      });
    }
  }
}

class AuthenticatorRadioFormField extends AuthenticatorFormField {
  const AuthenticatorRadioFormField._({
    Key? key,
    required AuthenticatorFormFieldType field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    String? Function(String?)? validator,
    bool? required,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
          required: required,
        );

  static AuthenticatorRadioFormField verify({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
  }) =>
      AuthenticatorRadioFormField._(
        key: key,
        validator: validator,
        required: required,
        // titleKey: InputResolverKey.,
        // hintTextKey: InputResolverKey.birthdateHint,
        field: AuthenticatorFormFieldType.verify,
      );

  @override
  AuthenticatorRadioFormFieldState createState() =>
      AuthenticatorRadioFormFieldState();
}

class AuthenticatorRadioFormFieldState extends AuthenticatorFormFieldState
    implements SelectableConfig<InputResolverKey, String> {
  @override
  String get selectionValue => _selectionValue;
  late String _selectionValue = selections.first.value;

  @override
  late final List<InputSelection<InputResolverKey, String>> selections;

  @override
  late final String initialValue;

  @override
  void initState() {
    super.initState();

    final _authState =
        InheritedAuthBloc.of(context, listen: false).currentState;
    if (_authState is! VerifyUserFlow) {
      throw StateError('Invalid verify attribute state: $_authState');
    }
    final List<CognitoUserAttributeKey> _unverifiedKeys =
        _authState.unverifiedAttributeKeys;
    selections = [
      if (_unverifiedKeys.contains(CognitoUserAttributeKey.email))
        InputSelection<InputResolverKey, String>(
          label: InputResolverKey.emailTitle,
          value: CognitoUserAttributeKey.email.key,
        ),
      if (_unverifiedKeys.contains(CognitoUserAttributeKey.phoneNumber))
        InputSelection<InputResolverKey, String>(
          label: InputResolverKey.phoneNumberTitle,
          value: CognitoUserAttributeKey.phoneNumber.key,
        )
    ];
    initialValue = selections.first.value;
  }

  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case AuthenticatorFormFieldType.verify:
        return (input) => viewModel
            .setAttributeKeyToVerify(CognitoUserAttributeKey.parse(input));
      default:
        throw StateError(
            '${widget.field} is not supported as a AuthenticatorRadioFormField}');
    }
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    onChanged(selectionValue);
    return Column(
      children: <Widget>[
        for (var selection in selections)
          ListTile(
            key: Key('${selection.value}${widget.titleKey}'),
            horizontalTitleGap: 0,
            contentPadding: EdgeInsets.zero,
            title: Text(
              inputResolver.resolve(
                context,
                selection.label,
              ),
            ),
            leading: Radio<String>(
              value: selection.value,
              groupValue: selectionValue,
              onChanged: (String? value) {
                setState(() {
                  _selectionValue = value!;
                });
                onChanged(selectionValue);
              },
              activeColor: Theme.of(context).primaryColor,
            ),
          )
      ],
    );
  }
}

extension StringPrefix on String {
  String ensureStartsWith(String value) {
    if (!startsWith(value)) {
      return '$value$this';
    }
    return this;
  }
}
