import 'package:amplify_authenticator/src/strings/auth_strings.dart';
import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:amplify_authenticator/src/widgets/form_fields.dart';
import 'package:flutter/material.dart';

///These default forms will be used as long as the customer doesn't pass any custom forms.

class DefaultForms {
  static SignInForm signInForm(AuthStrings authStrings) {
    return SignInForm(
      formFields: FormFields(
        children: [
          AuthFormField(
              title: authStrings.inputs.username_title,
              hintText: authStrings.inputs.username_hint,
              type: 'username'),
          AuthFormField(
              title: authStrings.inputs.password_title,
              hintText: authStrings.inputs.password_hint,
              type: 'password')
        ],
      ),
    );
  }

  static SignUpForm signUpForm() {
    return const SignUpForm(
      formFields: FormFields(
        children: [
          SignUpFormField(
              title: 'Username*',
              hintText: "Enter your username",
              type: 'username'),
          SignUpFormField(
              title: 'Password*',
              hintText: "Enter your password",
              type: 'password'),
          SignUpFormField(
              title: 'Email*', hintText: "Enter your email", type: 'email'),
          SignUpFormField(
              title: 'Phone Number*',
              hintText: "Enter your phone number",
              type: 'phone_number')
        ],
      ),
    );
  }

  static ConfirmSignUpForm confirmSignUpForm() {
    return const ConfirmSignUpForm(
      formFields: FormFields(
        children: [
          ConfirmSignUpFormField(
              title: 'Username*',
              hintText: "Enter your username",
              type: 'username'),
          ConfirmSignUpFormField(
              title: 'Verification Code*',
              hintText: "Enter your verification code",
              type: 'code'),
        ],
      ),
    );
  }

  static ConfirmSignInForm confirmSignInForm() {
    return const ConfirmSignInForm(
      formFields: FormFields(
        children: [
          ConfirmSignInFormField(
              title: 'Code*',
              hintText: "Enter your confirmation code",
              type: 'code'),
        ],
      ),
    );
  }
}
