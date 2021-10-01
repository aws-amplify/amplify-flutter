part of authenticator.form_field;

class ConfirmVerifyUserFormField
    extends AuthenticatorFormField<void, ConfirmVerifyUserFormField> {
  const ConfirmVerifyUserFormField({
    Key? key,
  }) : super._(
          key: key ?? keyCodeConfirmSignInFormfield,
          field: null,
          titleKey: InputResolverKey.verificationCodeTitle,
          hintTextKey: InputResolverKey.verificationCodeHint,
        );

  @override
  _ConfirmVerifyUserFormFieldState createState() =>
      _ConfirmVerifyUserFormFieldState();
}

class _ConfirmVerifyUserFormFieldState
    extends _AuthenticatorFormFieldState<void, ConfirmVerifyUserFormField> {
  @override
  void Function(String) get callback => viewModel.setConfirmationCode;

  @override
  TextInputType get keyboardType => TextInputType.text;

  @override
  bool get obscureText => false;

  @override
  FormFieldValidator<String>? get validator =>
      widget._validatorOverride ?? validateCode;
}
