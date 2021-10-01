part of authenticator.form_field;

/// {@template authenticator.confirm_sign_up_form_field}
/// A form field component on the Confirm Sign Up screen.
/// {@endtemplate}
class ConfirmSignUpFormField
    extends AuthenticatorFormField<ConfirmSignUpField, ConfirmSignUpFormField> {
  /// {@macro authenticator.confirm_sign_up_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const ConfirmSignUpFormField._({
    Key? key,
    required ConfirmSignUpField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    FormFieldValidator<String>? validator,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
        );

  /// Creates a username component.
  const ConfirmSignUpFormField.username({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key,
          titleKey: InputResolverKey.usernameTitle,
          hintTextKey: InputResolverKey.usernameHint,
          field: ConfirmSignUpField.username,
          validator: validator,
        );

  /// Creates a password component.
  const ConfirmSignUpFormField.password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyPasswordConfirmSignUpFormfield,
          titleKey: InputResolverKey.passwordTitle,
          hintTextKey: InputResolverKey.passwordHint,
          field: ConfirmSignUpField.password,
          validator: validator,
        );

  /// Creates an email component.
  const ConfirmSignUpFormField.email({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyEmailConfirmSignUpFormfield,
          titleKey: InputResolverKey.emailTitle,
          hintTextKey: InputResolverKey.emailHint,
          field: ConfirmSignUpField.email,
          validator: validator,
        );

  /// Creates a phoneNumber component.
  const ConfirmSignUpFormField.phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyPhoneNumberConfirmSignUpFormfield,
          titleKey: InputResolverKey.phoneNumberTitle,
          hintTextKey: InputResolverKey.phoneNumberHint,
          field: ConfirmSignUpField.phoneNumber,
          validator: validator,
        );

  /// Creates a verificationCode component.
  const ConfirmSignUpFormField.verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? keyCodeConfirmSignUpFormfield,
          titleKey: InputResolverKey.verificationCodeTitle,
          hintTextKey: InputResolverKey.verificationCodeHint,
          field: ConfirmSignUpField.code,
          validator: validator,
        );

  @override
  _ConfirmSignUpFormFieldState createState() => _ConfirmSignUpFormFieldState();
}

class _ConfirmSignUpFormFieldState extends _AuthenticatorFormFieldState<
    ConfirmSignUpField, ConfirmSignUpFormField> {
  @override
  FormFieldValidator<String>? get validator {
    if (widget._validatorOverride != null) {
      return widget._validatorOverride;
    }
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.usernameEmpty,
          ),
        );
      case ConfirmSignUpField.password:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.passwordEmpty,
          ),
        );
      case ConfirmSignUpField.email:
        return validateEmail;
      case ConfirmSignUpField.phoneNumber:
        return validatePhoneNumber;
      case ConfirmSignUpField.code:
        return validateCode;
    }
  }

  @override
  bool get obscureText {
    switch (widget.field) {
      case ConfirmSignUpField.password:
        return true;
      default:
        return false;
    }
  }

  @override
  void Function(String) get callback {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return viewModel.setUsername;
      case ConfirmSignUpField.password:
        return viewModel.setPassword;
      case ConfirmSignUpField.email:
        return viewModel.setEmail;
      case ConfirmSignUpField.phoneNumber:
        return viewModel.setPhoneNumber;
      case ConfirmSignUpField.code:
        return viewModel.setConfirmationCode;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case ConfirmSignUpField.username:
        return TextInputType.text;
      case ConfirmSignUpField.password:
        return TextInputType.visiblePassword;
      case ConfirmSignUpField.email:
        return TextInputType.emailAddress;
      case ConfirmSignUpField.phoneNumber:
        return TextInputType.phone;
      case ConfirmSignUpField.code:
        return TextInputType.number;
    }
  }

  @override
  bool get enabled {
    switch (widget.field) {
      case ConfirmSignUpField.code:
        return true;
      default:
        return false;
    }
  }

  @override
  String? get initialValue {
    switch (widget.field) {
      case ConfirmSignUpField.username:
      case ConfirmSignUpField.email:
      case ConfirmSignUpField.phoneNumber:
        return viewModel.username;
      default:
        return null;
    }
  }

  @override
  Widget? get companionWidget {
    switch (widget.field) {
      case ConfirmSignUpField.code:
        var resendCodeButton =
            InheritedForms.of(context).confirmSignUpForm.resendCodeButton;
        return resendCodeButton ?? const LostCodeButton(key: keyLostCodeButton);
      default:
        return null;
    }
  }
}
