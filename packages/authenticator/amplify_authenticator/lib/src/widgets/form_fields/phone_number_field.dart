// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../form_field.dart';

class AuthenticatorPhoneField<FieldType extends Enum>
    extends AuthenticatorFormField<FieldType, String> {
  const AuthenticatorPhoneField({
    super.key,
    required super.field,
    super.requiredOverride,
    this.onChanged,
    this.validator,
    this.enabled,
    this.initialValue,
    this.errorMaxLines,
    super.autofillHints,
  }) : super._(
          titleKey: InputResolverKey.phoneNumberTitle,
          hintTextKey: InputResolverKey.phoneNumberHint,
        );

  final bool? enabled;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String?>? validator;
  final int? errorMaxLines;

  @override
  AuthenticatorComponentState<AuthenticatorPhoneField<FieldType>>
      createState() => _AuthenticatorPhoneFieldState<FieldType>();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        ObjectFlagProperty<ValueChanged<String>>.has('onChanged', onChanged),
      )
      ..add(DiagnosticsProperty<bool?>('enabled', enabled))
      ..add(StringProperty('initialValue', initialValue))
      ..add(IntProperty('errorMaxLines', errorMaxLines))
      ..add(
        ObjectFlagProperty<FormFieldValidator<String?>?>.has(
          'validator',
          validator,
        ),
      );
  }
}

class _AuthenticatorPhoneFieldState<FieldType extends Enum>
    extends AuthenticatorFormFieldState<FieldType, String,
        AuthenticatorPhoneField<FieldType>>
    with
        AuthenticatorPhoneFieldMixin<FieldType,
            AuthenticatorPhoneField<FieldType>>,
        AuthenticatorTextField<FieldType, AuthenticatorPhoneField<FieldType>> {
  @override
  String? get initialValue {
    var initialValue = widget.initialValue ?? super.initialValue;
    if (initialValue != null) {
      initialValue = displayPhoneNumber(initialValue);
    }
    return initialValue;
  }

  @override
  bool get enabled => widget.enabled ?? super.enabled;

  @override
  int get errorMaxLines => widget.errorMaxLines ?? super.errorMaxLines;

  @override
  double? get marginBottom => null;

  @override
  double? get labelGap => null;

  @override
  ValueChanged<String> get onChanged => (phoneNumber) {
        phoneNumber = formatPhoneNumber(phoneNumber)!;
        return (widget.onChanged ?? super.onChanged)(phoneNumber);
      };

  @override
  FormFieldValidator<String> get validator {
    return (String? phoneNumber) {
      phoneNumber = formatPhoneNumber(phoneNumber);
      final validator = widget.validator;
      if (validator != null) {
        return validator(phoneNumber);
      }
      return validatePhoneNumber(
        inputResolver: stringResolver.inputs,
        context: context,
        isOptional: isOptional,
      )(phoneNumber);
    };
  }

  @override
  Iterable<String>? get autofillHints =>
      widget.autofillHints ??
      const [
        AutofillHints.username,
      ];

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(IterableProperty<DialCode>('filteredCountries', filteredCountries))
      ..add(
        ObjectFlagProperty<ValueChanged<String>>.has('onChanged', onChanged),
      );
  }
}
