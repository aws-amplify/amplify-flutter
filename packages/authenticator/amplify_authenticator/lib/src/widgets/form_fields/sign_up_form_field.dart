// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../form_field.dart';

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.sign_up_form_field}
/// A prebuilt form field widget for use on the Sign Up step.
/// {@endtemplate}
abstract class SignUpFormField<FieldValue extends Object>
    extends AuthenticatorFormField<SignUpField, FieldValue> {
  /// {@macro amplify_authenticator.sign_up_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const SignUpFormField._({
    super.key,
    required super.field,
    super.titleKey,
    super.hintTextKey,
    super.title,
    super.hintText,
    super.validator,
    CognitoUserAttributeKey? customAttributeKey,
    bool? required,
    super.autofillHints,
    bool? enabled,
    super.visible,
  }) : _customAttributeKey = customAttributeKey,
       super._(requiredOverride: required, enabledOverride: enabled);

  /// {@template amplify_authenticator.username_form_field}
  /// Creates a username component based on your app's configuration.
  ///
  /// The look and behavior of this widget will depend on your app's auth configuration.
  /// The `usernameAttributes` will be used to determine if the field is a standard
  /// username field, an email field, or a phone number field.
  /// {@endtemplate}
  ///
  /// If your app is configured to use email or phone, the value provided for this widget
  /// will be saved as the user's email or phone number in addition to their username.
  static SignUpFormField<UsernameInput> username({
    Key? key,
    FormFieldValidator<UsernameInput>? validator,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` to lock the field when its value should come from
    /// background work or autocomplete instead of manual edits.
    bool? enabled,

    /// Set to `false` to keep the field hidden while still allowing the app to
    /// supply data programmatically (e.g., legacy or system-managed fields).
    bool visible = true,
  }) => _SignUpUsernameField(
    key: key ?? keyUsernameSignUpFormField,
    validator: validator,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Creates a password component.
  static SignUpFormField<String> password({
    Key? key,
    FormFieldValidator<String>? validator,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` to lock the field while values are supplied
    /// automatically (e.g., when generating passwords in the background).
    bool? enabled,

    /// Set to `false` to hide the field when credentials are handled outside
    /// of the UI but still need to sync with the form state.
    bool visible = true,
  }) => _SignUpTextField(
    key: key ?? keyPasswordSignUpFormField,
    titleKey: InputResolverKey.passwordTitle,
    hintTextKey: InputResolverKey.passwordHint,
    field: SignUpField.password,
    validator: validator,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Creates a passwordConfirmation component.
  static SignUpFormField<String> passwordConfirmation({
    Key? key,
    FormFieldValidator<String>? validator,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` to keep the confirmation read-only while values are
    /// synced from elsewhere (e.g., mirror updates from a generated password).
    bool? enabled,

    /// Set to `false` to hide the confirmation when credentials are managed
    /// outside of the UI but still need validation.
    bool visible = true,
  }) => _SignUpTextField(
    key: key ?? keyPasswordConfirmationSignUpFormField,
    titleKey: InputResolverKey.passwordConfirmationTitle,
    hintTextKey: InputResolverKey.passwordConfirmationHint,
    field: SignUpField.passwordConfirmation,
    validator: validator,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Creates an address component.
  static SignUpFormField<String> address({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` when the address is auto-derived (e.g., GPS lookup)
    /// and should stay read-only for the user.
    bool? enabled,

    /// Set to `false` to keep the field hidden while still syncing backend-only
    /// attributes such as generated addresses.
    bool visible = true,
  }) => _SignUpTextField(
    key: key ?? keyAddressSignUpFormField,
    titleKey: InputResolverKey.addressTitle,
    hintTextKey: InputResolverKey.addressHint,
    field: SignUpField.address,
    validator: validator,
    required: required,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Creates a birthdate component.
  static SignUpFormField<String> birthdate({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,

    /// Provide `false` to prevent edits when birthdates are sourced from a
    /// trusted system record instead of the user.
    bool? enabled,

    /// Set to `false` to quietly retain legacy birthdate attributes that are
    /// no longer presented to the user.
    bool visible = true,
  }) => _SignUpDateField(
    key: key ?? keyBirthdateSignUpFormField,
    titleKey: InputResolverKey.birthdateTitle,
    hintTextKey: InputResolverKey.birthdateHint,
    field: SignUpField.birthdate,
    validator: validator,
    required: required,
    autofillHints: autofillHints,
    enabled: enabled,
    visible: visible,
  );

  /// Creates an email component.
  static SignUpFormField<String> email({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` when emails are pre-filled or synced from identity
    /// providers and should remain read-only.
    bool? enabled,

    /// Set to `false` to hide the field while continuing to supply values for
    /// federated or system-managed email attributes.
    bool visible = true,
  }) => _SignUpTextField(
    key: key ?? keyEmailSignUpFormField,
    titleKey: InputResolverKey.emailTitle,
    hintTextKey: InputResolverKey.emailHint,
    field: SignUpField.email,
    validator: validator,
    required: required,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Creates a familyName component.
  static SignUpFormField<String> familyName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` when last names are sourced from another system and
    /// should not be edited by the user.
    bool? enabled,

    /// Set to `false` to hide the field while the app populates the value for
    /// legacy or backend-only requirements.
    bool visible = true,
  }) => _SignUpTextField(
    key: key ?? keyFamilyNameSignUpFormField,
    titleKey: InputResolverKey.familyNameTitle,
    hintTextKey: InputResolverKey.familyNameHint,
    field: SignUpField.familyName,
    validator: validator,
    required: required,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Creates a gender component.
  static SignUpFormField<String> gender({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` when gender is pulled from an external profile and
    /// should stay read-only in the form.
    bool? enabled,

    /// Set to `false` to hide the field while continuing to update backend
    /// attributes without user interaction.
    bool visible = true,
  }) => _SignUpTextField(
    key: key ?? keyGenderSignUpFormField,
    titleKey: InputResolverKey.genderTitle,
    hintTextKey: InputResolverKey.genderHint,
    field: SignUpField.gender,
    validator: validator,
    required: required,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Creates a givenName component.
  static SignUpFormField<String> givenName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` when first names are sourced from a profile service and
    /// should stay read-only.
    bool? enabled,

    /// Set to `false` to hide the field while still syncing attributes that
    /// are set elsewhere.
    bool visible = true,
  }) => _SignUpTextField(
    key: key ?? keyGivenNameSignUpFormField,
    titleKey: InputResolverKey.givenNameTitle,
    hintTextKey: InputResolverKey.givenNameHint,
    field: SignUpField.givenName,
    validator: validator,
    required: required,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Creates a middleName component.
  static SignUpFormField<String> middleName({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` when middle names should reflect external records and
    /// must remain read-only.
    bool? enabled,

    /// Set to `false` to hide the field while keeping system-provided values
    /// in sync.
    bool visible = true,
  }) => _SignUpTextField(
    key: key ?? keyMiddleNameSignUpFormField,
    titleKey: InputResolverKey.middleNameTitle,
    hintTextKey: InputResolverKey.middleNameHint,
    field: SignUpField.middleName,
    validator: validator,
    required: required,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Creates a name component.
  static SignUpFormField<String> name({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` when display names are computed or imported and should
    /// not be edited manually.
    bool? enabled,

    /// Set to `false` to hide the field while still satisfying backend
    /// requirements for a name attribute.
    bool visible = true,
  }) => _SignUpTextField(
    key: key ?? keyNameSignUpFormField,
    titleKey: InputResolverKey.nameTitle,
    hintTextKey: InputResolverKey.nameHint,
    field: SignUpField.name,
    validator: validator,
    required: required,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Creates a nickname component.
  static SignUpFormField<String> nickname({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` when nicknames are generated automatically and the user
    /// should not edit them.
    bool? enabled,

    /// Set to `false` to hide nickname inputs while still populating values
    /// behind the scenes.
    bool visible = true,
  }) => _SignUpTextField(
    key: key ?? keyNicknameSignUpFormField,
    titleKey: InputResolverKey.nicknameTitle,
    hintTextKey: InputResolverKey.nicknameHint,
    field: SignUpField.nickname,
    validator: validator,
    required: required,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Creates a phoneNumber component.
  static SignUpFormField<String> phoneNumber({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` to keep the phone field read-only when values are
    /// imported (e.g., from contacts or device settings).
    bool? enabled,

    /// Set to `false` to hide the phone field while still syncing values for
    /// legacy Cognito setups that require it.
    bool visible = true,
  }) => _SignUpPhoneField(
    key: key ?? keyPhoneNumberSignUpFormField,
    titleKey: InputResolverKey.phoneNumberTitle,
    hintTextKey: InputResolverKey.phoneNumberHint,
    field: SignUpField.phoneNumber,
    validator: validator,
    required: required,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Creates a preferredUsername component.
  static SignUpFormField<String> preferredUsername({
    Key? key,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` when preferred usernames are handled automatically and
    /// should not be altered by the user.
    bool? enabled,

    /// Set to `false` to hide the preferred username input while keeping the
    /// backing attribute synchronized.
    bool visible = true,
  }) => _SignUpTextField(
    key: key ?? keyPreferredUsernameSignUpFormField,
    titleKey: InputResolverKey.preferredUsernameTitle,
    hintTextKey: InputResolverKey.preferredUsernameHint,
    field: SignUpField.preferredUsername,
    validator: validator,
    required: required,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Creates a custom attribute component.
  static SignUpFormField<String> custom({
    Key? key,
    required String title,
    required CognitoUserAttributeKey attributeKey,
    String? hintText,
    FormFieldValidator<String>? validator,
    bool? required,
    Iterable<String>? autofillHints,
    TextEditingController? controller,

    /// Provide `false` when the custom attribute should be supplied by the app
    /// rather than the end user (e.g., tokens or IDs).
    bool? enabled,

    /// Set to `false` to hide the field while still letting the app populate
    /// Cognito attributes that users should not see.
    bool visible = true,
  }) => _SignUpTextField(
    key: key,
    title: title,
    hintText: hintText,
    field: SignUpField.custom,
    validator: validator,
    attributeKey: attributeKey,
    required: required,
    autofillHints: autofillHints,
    controller: controller,
    enabled: enabled,
    visible: visible,
  );

  /// Custom Cognito attribute key.
  final CognitoUserAttributeKey? _customAttributeKey;

  @override
  int get displayPriority {
    switch (field) {
      case SignUpField.username:
        return 1000;
      case SignUpField.password:
        return 101;
      case SignUpField.passwordConfirmation:
        return 100;
      case SignUpField.address:
      case SignUpField.birthdate:
      case SignUpField.email:
      case SignUpField.familyName:
      case SignUpField.gender:
      case SignUpField.givenName:
      case SignUpField.middleName:
      case SignUpField.name:
      case SignUpField.nickname:
      case SignUpField.phoneNumber:
      case SignUpField.preferredUsername:
      case SignUpField.custom:
        return 1;
    }
  }

  @override
  bool get required {
    switch (field) {
      case SignUpField.username:
      case SignUpField.password:
      case SignUpField.passwordConfirmation:
        return true;
      case SignUpField.address:
      case SignUpField.birthdate:
      case SignUpField.email:
      case SignUpField.familyName:
      case SignUpField.gender:
      case SignUpField.givenName:
      case SignUpField.middleName:
      case SignUpField.name:
      case SignUpField.nickname:
      case SignUpField.phoneNumber:
      case SignUpField.preferredUsername:
      case SignUpField.custom:
        return false;
    }
  }

  @override
  UsernameType? get usernameType {
    switch (field) {
      case SignUpField.email:
        return UsernameType.email;
      case SignUpField.phoneNumber:
        return UsernameType.phoneNumber;
      case SignUpField.preferredUsername:
        return UsernameType.username;
      case SignUpField.username:
      case SignUpField.password:
      case SignUpField.passwordConfirmation:
      case SignUpField.address:
      case SignUpField.birthdate:
      case SignUpField.familyName:
      case SignUpField.gender:
      case SignUpField.givenName:
      case SignUpField.middleName:
      case SignUpField.name:
      case SignUpField.nickname:
      case SignUpField.custom:
        return null;
    }
  }
}

abstract class _SignUpFormFieldState<FieldValue extends Object>
    extends
        AuthenticatorFormFieldState<
          SignUpField,
          FieldValue,
          SignUpFormField<FieldValue>
        > {
  @override
  bool get obscureText {
    switch (widget.field) {
      case SignUpField.password:
      case SignUpField.passwordConfirmation:
        return true;
      default:
        return false;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case SignUpField.password:
      case SignUpField.passwordConfirmation:
        return TextInputType.visiblePassword;
      case SignUpField.address:
        return TextInputType.streetAddress;
      case SignUpField.email:
        return TextInputType.emailAddress;
      case SignUpField.name:
        return TextInputType.name;
      case SignUpField.phoneNumber:
        return TextInputType.phone;
      default:
        return TextInputType.text;
    }
  }

  @override
  Widget? get suffix {
    switch (widget.field) {
      case SignUpField.password:
      case SignUpField.passwordConfirmation:
        return visibilityToggle;
      default:
        return null;
    }
  }

  @override
  int get errorMaxLines {
    switch (widget.field) {
      case SignUpField.password:
        return 6;
      default:
        return super.errorMaxLines;
    }
  }

  @override
  Iterable<String>? get autofillHints {
    if (widget.autofillHints != null) return widget.autofillHints;
    switch (widget.field) {
      case SignUpField.password:
      case SignUpField.passwordConfirmation:
        return const [AutofillHints.newPassword];
      case SignUpField.address:
        return const [AutofillHints.fullStreetAddress];
      case SignUpField.email:
        return const [AutofillHints.email];
      case SignUpField.name:
        return const [AutofillHints.name];
      case SignUpField.phoneNumber:
        return const [AutofillHints.telephoneNumber];
      case SignUpField.username:
        return const [AutofillHints.newUsername];
      case SignUpField.birthdate:
        return const [AutofillHints.birthday];
      case SignUpField.familyName:
        return const [AutofillHints.familyName];
      case SignUpField.gender:
        return const [AutofillHints.gender];
      case SignUpField.givenName:
        return const [AutofillHints.givenName];
      case SignUpField.middleName:
        return const [AutofillHints.middleName];
      case SignUpField.nickname:
        return const [AutofillHints.nickname];
      case SignUpField.preferredUsername:
        return const [AutofillHints.newUsername];
      case SignUpField.custom:
        return null;
    }
  }
}

class _SignUpTextField extends SignUpFormField<String> {
  const _SignUpTextField({
    super.key,
    required super.field,
    super.titleKey,
    super.hintTextKey,
    super.title,
    super.hintText,
    CognitoUserAttributeKey? attributeKey,
    super.validator,
    super.required,
    super.autofillHints,
    super.enabled,
    super.visible,
    this.controller,
  }) : super._(customAttributeKey: attributeKey);

  @override
  final TextEditingController? controller;

  @override
  _SignUpTextFieldState createState() => _SignUpTextFieldState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<TextEditingController?>('controller', controller),
    );
  }
}

class _SignUpTextFieldState extends _SignUpFormFieldState<String>
    with AuthenticatorTextField {
  @override
  TextEditingController? get textController => widget.controller;

  @override
  String? get initialValue {
    switch (widget.field) {
      case SignUpField.username:
        return state.username;
      case SignUpField.password:
        return state.password;
      case SignUpField.passwordConfirmation:
        return state.passwordConfirmation;
      case SignUpField.address:
      case SignUpField.birthdate:
      case SignUpField.email:
      case SignUpField.familyName:
      case SignUpField.gender:
      case SignUpField.givenName:
      case SignUpField.middleName:
      case SignUpField.name:
      case SignUpField.nickname:
      case SignUpField.preferredUsername:
        return state.getAttribute(widget.field.toCognitoAttribute());
      case SignUpField.custom:
        return state.getAttribute(widget._customAttributeKey!);
      default:
        return null;
    }
  }

  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case SignUpField.username:
        return (v) => state.username = v;
      case SignUpField.password:
        return (v) => state.password = v;
      case SignUpField.passwordConfirmation:
        return (v) => state.passwordConfirmation = v;
      case SignUpField.address:
        return (v) => state.address = v;
      case SignUpField.email:
        if (selectedUsernameType == UsernameType.email) {
          return (email) {
            state
              ..email = email
              ..username = email;
          };
        }
        return (v) => state.email = v;
      case SignUpField.familyName:
        return (v) => state.familyName = v;
      case SignUpField.gender:
        return (v) => state.gender = v;
      case SignUpField.givenName:
        return (v) => state.givenName = v;
      case SignUpField.middleName:
        return (v) => state.middleName = v;
      case SignUpField.name:
        return (v) => state.name = v;
      case SignUpField.nickname:
        return (v) => state.nickname = v;
      case SignUpField.preferredUsername:
        return (v) => state.preferredUsername = v;
      case SignUpField.custom:
        return (String value) =>
            state.setCustomAttribute(widget._customAttributeKey!, value);
      default:
        return super.onChanged;
    }
  }

  @override
  FormFieldValidator<String> get validator {
    switch (widget.field) {
      case SignUpField.username:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.usernameEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.password:
        return validateNewPassword(
          amplifyOutputs: config.amplifyOutputs,
          inputResolver: stringResolver.inputs,
        )(context);
      case SignUpField.passwordConfirmation:
        return validatePasswordConfirmation(
          () => state.password,
          context: context,
          inputResolver: stringResolver.inputs,
        );
      case SignUpField.email:
        return validateEmail(
          inputResolver: stringResolver.inputs,
          context: context,
          isOptional: isOptional,
        );
      case SignUpField.address:
        return simpleValidator(
          stringResolver.inputs.resolve(context, InputResolverKey.addressEmpty),
          isOptional: isOptional,
        );
      case SignUpField.birthdate:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.birthdateEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.familyName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.familyNameEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.gender:
        return simpleValidator(
          stringResolver.inputs.resolve(context, InputResolverKey.genderEmpty),
          isOptional: isOptional,
        );
      case SignUpField.givenName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.givenNameEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.middleName:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.middleNameEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.name:
        return simpleValidator(
          stringResolver.inputs.resolve(context, InputResolverKey.nameEmpty),
          isOptional: isOptional,
        );
      case SignUpField.nickname:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.nicknameEmpty,
          ),
          isOptional: isOptional,
        );
      case SignUpField.preferredUsername:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.preferredUsernameEmpty,
          ),
          isOptional: isOptional,
        );
      default:
        return super.validator;
    }
  }
}

class _SignUpUsernameField extends SignUpFormField<UsernameInput> {
  const _SignUpUsernameField({
    super.key,
    super.validator,
    super.autofillHints,
    super.enabled,
    super.visible,
    this.controller,
  }) : super._(
         field: SignUpField.username,
         titleKey: InputResolverKey.usernameTitle,
         hintTextKey: InputResolverKey.usernameHint,
       );

  @override
  final TextEditingController? controller;

  @override
  _SignUpUsernameFieldState createState() => _SignUpUsernameFieldState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<TextEditingController?>('controller', controller),
    );
  }
}

class _SignUpUsernameFieldState extends _SignUpFormFieldState<UsernameInput>
    with AuthenticatorUsernameField {
  @override
  TextEditingController? get textController => widget.controller;
}

class _SignUpPhoneField extends SignUpFormField<String> {
  const _SignUpPhoneField({
    super.key,
    required super.field,
    super.titleKey,
    super.hintTextKey,
    CognitoUserAttributeKey? attributeKey,
    super.validator,
    super.required,
    super.autofillHints,
    super.enabled,
    super.visible,
    this.controller,
  }) : super._(customAttributeKey: attributeKey);

  @override
  final TextEditingController? controller;

  @override
  _SignUpPhoneFieldState createState() => _SignUpPhoneFieldState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<TextEditingController?>('controller', controller),
    );
  }
}

class _SignUpPhoneFieldState extends _SignUpTextFieldState
    with AuthenticatorPhoneFieldMixin {
  @override
  String? get initialValue {
    var initialValue = state.getAttribute(CognitoUserAttributeKey.phoneNumber);
    if (initialValue != null) {
      initialValue = displayPhoneNumber(initialValue);
    }
    return initialValue;
  }

  @override
  ValueChanged<String> get onChanged {
    return (phoneNumber) {
      phoneNumber = formatPhoneNumber(phoneNumber)!;
      state.phoneNumber = phoneNumber;
    };
  }

  @override
  FormFieldValidator<String> get validator {
    return (phoneNumber) {
      phoneNumber = formatPhoneNumber(phoneNumber);
      return validatePhoneNumber(
        inputResolver: stringResolver.inputs,
        context: context,
        isOptional: isOptional,
      )(phoneNumber);
    };
  }
}

class _SignUpDateField extends SignUpFormField<String> {
  const _SignUpDateField({
    super.key,
    required super.field,
    super.titleKey,
    super.hintTextKey,
    CognitoUserAttributeKey? attributeKey,
    super.validator,
    super.required,
    super.autofillHints,
    super.enabled,
    super.visible,
  }) : super._(customAttributeKey: attributeKey);

  @override
  _SignUpDateFieldState createState() => _SignUpDateFieldState();
}

class _SignUpDateFieldState extends _SignUpFormFieldState<String>
    with AuthenticatorDateField {
  @override
  String? get initialValue {
    return state.getAttribute(widget.field.toCognitoAttribute());
  }

  @override
  ValueChanged<String> get onChanged {
    return (v) => state.birthdate = v;
  }

  @override
  FormFieldValidator<String> get validator {
    if (widget.validatorOverride != null) {
      return widget.validatorOverride!;
    }
    return simpleValidator(
      stringResolver.inputs.resolve(context, InputResolverKey.birthdateEmpty),
      isOptional: isOptional,
    );
  }
}
