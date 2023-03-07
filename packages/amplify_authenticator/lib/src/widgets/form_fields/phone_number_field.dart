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

part of '../form_field.dart';

class AuthenticatorPhoneField<FieldType> extends AuthenticatorFormField<
    FieldType, String, AuthenticatorPhoneField<FieldType>> {
  const AuthenticatorPhoneField({
    Key? key,
    required FieldType field,
    bool? requiredOverride,
    this.onChanged,
    this.validator,
    this.enabled,
    this.initialValue,
    this.errorMaxLines,
    Iterable<String>? autofillHints,
  }) : super._(
          key: key,
          field: field,
          titleKey: InputResolverKey.phoneNumberTitle,
          hintTextKey: InputResolverKey.phoneNumberHint,
          requiredOverride: requiredOverride,
          autofillHints: autofillHints,
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
    properties.add(
        ObjectFlagProperty<ValueChanged<String>>.has('onChanged', onChanged));
    properties.add(DiagnosticsProperty<bool?>('enabled', enabled));
    properties.add(StringProperty('initialValue', initialValue));
    properties.add(IntProperty('errorMaxLines', errorMaxLines));
    properties.add(ObjectFlagProperty<FormFieldValidator<String?>?>.has(
        'validator', validator));
  }
}

class _AuthenticatorPhoneFieldState<FieldType>
    extends AuthenticatorFormFieldState<FieldType, String,
        AuthenticatorPhoneField<FieldType>>
    with AuthenticatorPhoneFieldMixin, AuthenticatorTextField {
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
      var validator = widget.validator;
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
        .add(IterableProperty<Country>('filteredCountries', filteredCountries));
    properties.add(
        ObjectFlagProperty<ValueChanged<String>>.has('onChanged', onChanged));
  }
}
