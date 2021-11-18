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

part of authenticator.form_field;

/// {@template authenticator.verify_user_form_field}
/// A [Radio] form field component on the Verify User screen.
///
/// Must be a descendant of a [VerifyUserFormFieldGroup] widget.
/// {@endtemplate}
class VerifyUserFormField extends AuthenticatorFormField {
  /// {@macro authenticator.verify_user_form_field}
  const VerifyUserFormField._({
    Key? key,
    required AuthenticatorFormFieldType field,
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

  static VerifyUserFormField verifyAttribute({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      VerifyUserFormField._(
        key: keyUnverifiedAttributes,
        field: AuthenticatorFormFieldType.verify,
        validator: validator,
      );

  @override
  bool get required => true;

  @override
  VerifyUserFormFieldState createState() => VerifyUserFormFieldState();
}

class VerifyUserFormFieldState extends AuthenticatorFormFieldState {
  @override
  Widget build(BuildContext context) {
    switch (widget.field) {
      case AuthenticatorFormFieldType.verify:
        return AuthenticatorRadioFormField.verify(
          required: widget.required,
          key: widget.key,
          validator: validator,
        );
      default:
        throw StateError(
            '${widget.field} is not supported as a verify user field');
    }
  }
}
