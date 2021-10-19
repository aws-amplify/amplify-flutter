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
  String? get initialValue => viewModel.confirmationCode;

  @override
  void Function(String) get onChanged => viewModel.setConfirmationCode;

  @override
  TextInputType get keyboardType => TextInputType.text;

  @override
  bool get obscureText => false;

  @override
  FormFieldValidator<String>? get validator => validateCode;
}
