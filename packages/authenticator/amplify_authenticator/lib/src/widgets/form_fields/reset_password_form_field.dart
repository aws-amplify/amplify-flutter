// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of authenticator.form_field;

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.confirm_sign_up_form_field}
/// A prebuild form field widget for use on the Reset Password Step.
/// {@endtemplate}
class ResetPasswordFormField
    extends AuthenticatorFormField<ResetPasswordField, String> {
  /// {@macro amplify_authenticator.sign_up_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const ResetPasswordFormField._({
    Key? key,
    required ResetPasswordField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    FormFieldValidator<String>? validator,
    Iterable<String>? autofillHints,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          validator: validator,
          autofillHints: autofillHints,
        );

  const ResetPasswordFormField.verificationCode({
    Key? key,
    Iterable<String>? autofillHints,
  }) : this._(
          key: key ?? keyVerificationCodeResetPasswordFormField,
          field: ResetPasswordField.verificationCode,
          titleKey: InputResolverKey.verificationCodeTitle,
          hintTextKey: InputResolverKey.verificationCodeHint,
          autofillHints: autofillHints,
        );

  const ResetPasswordFormField.newPassword({
    Key? key,
    FormFieldValidator<String>? validator,
    Iterable<String>? autofillHints,
  }) : this._(
          key: key ?? keyPasswordResetPasswordFormField,
          field: ResetPasswordField.newPassword,
          titleKey: InputResolverKey.newPasswordTitle,
          hintTextKey: InputResolverKey.newPasswordHint,
          validator: validator,
          autofillHints: autofillHints,
        );

  const ResetPasswordFormField.passwordConfirmation({
    Key? key,
    Iterable<String>? autofillHints,
  }) : this._(
          key: key ?? keyPasswordConfirmationResetPasswordFormField,
          field: ResetPasswordField.passwordConfirmation,
          titleKey: InputResolverKey.passwordConfirmationTitle,
          hintTextKey: InputResolverKey.passwordConfirmationHint,
          autofillHints: autofillHints,
        );

  @override
  bool get required => true;

  @override
  AuthenticatorFormFieldState<ResetPasswordField, String,
      ResetPasswordFormField> createState() => _ResetPasswordFormFieldState();
}

class _ResetPasswordFormFieldState extends AuthenticatorFormFieldState<
    ResetPasswordField,
    String,
    ResetPasswordFormField> with AuthenticatorTextField {
  @override
  bool get obscureText {
    switch (widget.field) {
      case ResetPasswordField.newPassword:
      case ResetPasswordField.passwordConfirmation:
        return true;
      case ResetPasswordField.verificationCode:
        return false;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case ResetPasswordField.newPassword:
      case ResetPasswordField.passwordConfirmation:
        return TextInputType.visiblePassword;
      case ResetPasswordField.verificationCode:
        return TextInputType.number;
    }
  }

  @override
  Widget? get suffix {
    switch (widget.field) {
      case ResetPasswordField.newPassword:
      case ResetPasswordField.passwordConfirmation:
        return visibilityToggle;
      default:
        return null;
    }
  }

  @override
  int get errorMaxLines {
    switch (widget.field) {
      case ResetPasswordField.newPassword:
        return 6;
      default:
        return super.errorMaxLines;
    }
  }

  @override
  String? get initialValue {
    switch (widget.field) {
      case ResetPasswordField.newPassword:
        return state.newPassword;
      case ResetPasswordField.verificationCode:
        return state.confirmationCode;
      case ResetPasswordField.passwordConfirmation:
        return super.initialValue;
    }
  }

  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case ResetPasswordField.newPassword:
        return (v) => state.newPassword = v;
      case ResetPasswordField.verificationCode:
        return (v) => state.confirmationCode = v;
      case ResetPasswordField.passwordConfirmation:
        return super.onChanged;
    }
  }

  @override
  FormFieldValidator<String> get validator {
    switch (widget.field) {
      case ResetPasswordField.newPassword:
        return validateNewPassword(
          amplifyConfig: config.amplifyConfig,
          inputResolver: stringResolver.inputs,
        )(context);
      case ResetPasswordField.passwordConfirmation:
        return validatePasswordConfirmation(
          () => state.newPassword,
          context: context,
          inputResolver: stringResolver.inputs,
        );
      case ResetPasswordField.verificationCode:
        return validateCode(
          isOptional: isOptional,
          context: context,
          inputResolver: stringResolver.inputs,
        );
    }
  }

  @override
  Iterable<String>? get autofillHints {
    if (widget.autofillHints != null) return widget.autofillHints;
    switch (widget.field) {
      case ResetPasswordField.verificationCode:
        return const [
          AutofillHints.oneTimeCode,
        ];
      case ResetPasswordField.newPassword:
      case ResetPasswordField.passwordConfirmation:
        return const [
          AutofillHints.newPassword,
        ];
    }
  }
}
