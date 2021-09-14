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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:flutter/widgets.dart';

class DefaultResetPasswordForm extends ResetPasswordForm {
  DefaultResetPasswordForm()
      : super(formFields: FormFields(children: const []));

  @override
  ResetPasswordForm build(BuildContext context) {
    final _authStrings = InheritedStrings.of(context)!.resolver;
    return ResetPasswordForm(
      formFields: FormFields(
        children: [
          SignInFormField(
              title: _authStrings.inputs.verification_code_title(context),
              hintText: _authStrings.inputs.verification_code_hint(context),
              type: 'verification_code'),
          SignInFormField(
              title: _authStrings.inputs.password_title(context),
              hintText: _authStrings.inputs.password_hint(context),
              type: 'new_password'),
        ],
      ),
    );
  }
}
