part of authenticator.form_field;

/// {@template authenticator.confirm_sign_in_form_field}
/// A form field component on the Confirm Sign In screens.
/// {@endtemplate}
class ConfirmSignInFormField
    extends AuthenticatorFormField<ConfirmSignInField, ConfirmSignInFormField> {
  /// {@macro authenticator.confirm_sign_in_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const ConfirmSignInFormField._({
    Key? key,
    required ConfirmSignInField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    FormFieldValidator<String>? validator,
    String? customAttributeKey,
  })  : _customAttributeKey = customAttributeKey,
        super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
        );

  /// Creates a password component.
  const ConfirmSignInFormField.password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? const Key(keyPasswordConfirmSignInFormField),
          titleKey: InputResolverKey.passwordTitle,
          hintTextKey: InputResolverKey.passwordTitle,
          field: ConfirmSignInField.password,
          validator: validator,
        );

  /// Creates a verificationCode component.
  const ConfirmSignInFormField.verificationCode({
    Key? key,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key ?? const Key(keyCodeConfirmSignInFormfield),
          titleKey: InputResolverKey.verificationCodeTitle,
          hintTextKey: InputResolverKey.verificationCodeHint,
          field: ConfirmSignInField.code,
          validator: validator,
        );

  /// Creates a custom attribute component.
  ///
  /// TODO: Document [attributeKey]
  const ConfirmSignInFormField.custom({
    Key? key,
    required String title,
    required String attributeKey,
    String? hintText,
    FormFieldValidator<String>? validator,
  }) : this._(
          key: key,
          title: title,
          hintText: hintText,
          field: ConfirmSignInField.custom,
          validator: validator,
          customAttributeKey: attributeKey,
        );

  /// Custom Cognito attribute key.
  final String? _customAttributeKey;

  @override
  _ConfirmSignInFormFieldState createState() => _ConfirmSignInFormFieldState();
}

class _ConfirmSignInFormFieldState extends _AuthenticatorFormFieldState<
    ConfirmSignInField, ConfirmSignInFormField> {
  @override
  FormFieldValidator<String>? get validator {
    if (widget._validatorOverride != null) {
      return widget._validatorOverride;
    }
    switch (widget.field) {
      case ConfirmSignInField.code:
        return validateCode;
      case ConfirmSignInField.password:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.passwordEmpty,
          ),
        );
      case ConfirmSignInField.email:
        return validateEmail;
      case ConfirmSignInField.phoneNumber:
        return validatePhoneNumber;
      default:
        return null;
    }
  }

  @override
  bool get obscureText {
    if (_obscureText != null) {
      return _obscureText!;
    }
    switch (widget.field) {
      case ConfirmSignInField.password:
        return true;
      default:
        return false;
    }
  }

  @override
  void Function(String) get callback {
    switch (widget.field) {
      case ConfirmSignInField.code:
        return viewModel.setConfirmationCode;
      case ConfirmSignInField.password:
        return viewModel.setConfirmationCode;
      case ConfirmSignInField.address:
        return viewModel.setAddress;
      case ConfirmSignInField.birthdate:
        return viewModel.setBirthdate;
      case ConfirmSignInField.email:
        return viewModel.setEmail;
      case ConfirmSignInField.familyName:
        return viewModel.setFamilyName;
      case ConfirmSignInField.gender:
        return viewModel.setGender;
      case ConfirmSignInField.givenName:
        return viewModel.setGivenName;
      case ConfirmSignInField.locale:
        return viewModel.setLocale;
      case ConfirmSignInField.middleName:
        return viewModel.setMiddleName;
      case ConfirmSignInField.name:
        return viewModel.setName;
      case ConfirmSignInField.nickname:
        return viewModel.setNickname;
      case ConfirmSignInField.phoneNumber:
        return viewModel.setPhoneNumber;
      case ConfirmSignInField.picture:
        return viewModel.setPicture;
      case ConfirmSignInField.preferredUsername:
        return viewModel.setPreferredUsername;
      case ConfirmSignInField.profile:
        return viewModel.setProfile;
      case ConfirmSignInField.zoneinfo:
        return viewModel.setZoneInfo;
      case ConfirmSignInField.updatedAt:
        return viewModel.setUpdatedAt;
      case ConfirmSignInField.website:
        return viewModel.setWebsite;
      case ConfirmSignInField.custom:
        return (String value) => viewModel.setCustom(
              widget._customAttributeKey!,
              value,
            );
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case ConfirmSignInField.code:
        return TextInputType.number;
      case ConfirmSignInField.address:
        return TextInputType.streetAddress;
      case ConfirmSignInField.email:
        return TextInputType.emailAddress;
      case ConfirmSignInField.name:
        return TextInputType.name;
      case ConfirmSignInField.password:
        return TextInputType.visiblePassword;
      case ConfirmSignInField.phoneNumber:
        return TextInputType.phone;
      case ConfirmSignInField.website:
        return TextInputType.url;
      case ConfirmSignInField.birthdate:
      case ConfirmSignInField.updatedAt:
        return TextInputType.datetime;
      case ConfirmSignInField.familyName:
      case ConfirmSignInField.gender:
      case ConfirmSignInField.givenName:
      case ConfirmSignInField.locale:
      case ConfirmSignInField.middleName:
      case ConfirmSignInField.nickname:
      case ConfirmSignInField.picture:
      case ConfirmSignInField.preferredUsername:
      case ConfirmSignInField.profile:
      case ConfirmSignInField.zoneinfo:
      case ConfirmSignInField.custom:
        return TextInputType.text;
    }
  }

  @override
  Widget? get suffix {
    switch (widget.field) {
      case ConfirmSignInField.password:
        return visibilityToggle;
      default:
        return null;
    }
  }
}
