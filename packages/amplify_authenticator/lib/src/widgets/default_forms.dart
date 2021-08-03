import 'package:amplify_authenticator/src/enums/alias.dart';
import 'package:amplify_authenticator/src/enums/signin_step.dart';
import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:amplify_authenticator/src/widgets/form_fields.dart';
import 'package:flutter/material.dart';

/// These default forms will be used as long as there are no
/// arguments being passed from the main Authenticator wrapper.

// The initial auth flow will be setup based on an username alias
// that comes from the main Authenticator widget.
class DefaultForms {
  static SignInForm signInForm(Alias alias) {
    late String _title;
    late String _hintText;
    switch (alias) {
      case Alias.username:
        _title = 'Username*';
        _hintText = 'Enter your username';
        break;
      case Alias.phone_number:
        _title = 'Phone Number*';
        _hintText = 'Enter your phone number';
        break;
      case Alias.email:
        _title = 'Email*';
        _hintText = 'Enter your email';
        break;
      case Alias.email_phone_number:
        _title = 'Email or Phone Number*';
        _hintText = 'Enter your email or phone number';
        break;
    }
    return SignInForm(
      formFields: FormFields(
        children: [
          SignInFormField(title: _title, hintText: _hintText, type: 'username'),
          const SignInFormField(
              title: 'Password*',
              hintText: "Enter your password",
              type: 'password')
        ],
      ),
    );
  }

  static SignUpForm signUpForm(Alias alias) {
    late List<SignUpFormField> _signUpFormFields;
    switch (alias) {
      case Alias.username:
        _signUpFormFields = [
          const SignUpFormField(
              title: 'Username*',
              hintText: "Enter your username",
              type: 'username'),
          const SignUpFormField(
              title: 'Password*',
              hintText: "Enter your password",
              type: 'password'),
          const SignUpFormField(
              title: 'Email*', hintText: "Enter your email", type: 'email'),
          const SignUpFormField(
              title: 'Phone Number*',
              hintText: "Enter your phone number",
              type: 'phone_number')
        ];
        break;
      case Alias.email:
        _signUpFormFields = [
          const SignUpFormField(
              title: 'Email*', hintText: "Enter your email", type: 'username'),
          const SignUpFormField(
              title: 'Password*',
              hintText: "Enter your password",
              type: 'password'),
          const SignUpFormField(
              title: 'Phone Number*',
              hintText: "Enter your phone number",
              type: 'phone_number')
        ];
        break;
      default:
        _signUpFormFields = [
          const SignUpFormField(
              title: 'Phone Number*',
              hintText: "Enter your phone number",
              type: 'username'),
          const SignUpFormField(
              title: 'Password*',
              hintText: "Enter your password",
              type: 'password'),
          const SignUpFormField(
              title: 'Email*', hintText: "Enter your email", type: 'email')
        ];
        break;
    }
    return SignUpForm(
      formFields: FormFields(
        children: _signUpFormFields,
      ),
    );
  }

  static ConfirmSignUpForm confirmSignUpForm(Alias alias) {
    String? _title;
    String? _hintText;
    switch (alias) {
      case Alias.username:
        _title = 'Username*';

        break;
      case Alias.phone_number:
        _title = 'Phone Number*';

        break;
      case Alias.email:
        _title = 'Email*';

        break;
      case Alias.email_phone_number:
        _title = 'Email or Phone Number*';
        _hintText = 'Enter your email or phone number';
        break;
    }

    return ConfirmSignUpForm(
      formFields: FormFields(
        children: [
          ConfirmSignUpFormField(
              title: _title, hintText: _hintText, type: 'username'),
          const ConfirmSignUpFormField(
              title: 'Verification Code*',
              hintText: "Enter your verification code",
              type: 'code'),
        ],
      ),
    );
  }

  static ConfirmSignInForm confirmSignInForm() {
    return const ConfirmSignInForm(
      signInStep: SignInStep.CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE,
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

  static SendCodeForm sendCodeForm(Alias alias) {
    late String _title;
    late String _hintText;
    switch (alias) {
      case Alias.username:
        _title = 'Username*';
        _hintText = 'Enter your username';
        break;
      case Alias.phone_number:
        _title = 'Phone Number*';
        _hintText = 'Enter your phone number';
        break;
      case Alias.email:
        _title = 'Email*';
        _hintText = 'Enter your email';
        break;
      case Alias.email_phone_number:
        _title = 'Email or Phone Number*';
        _hintText = 'Enter your email or phone number';
        break;
    }
    return SendCodeForm(
      formFields: FormFields(
        children: [
          SignInFormField(
              title: _title, hintText: _hintText, type: 'new_username'),
        ],
      ),
    );
  }

  static ResetPasswordForm resetPasswordForm() {
    return const ResetPasswordForm(
      formFields: FormFields(
        children: [
          SignInFormField(
              title: 'Verification code*',
              hintText: 'Enter code',
              type: 'verification_code'),
          SignInFormField(
              title: 'New password*',
              hintText: 'Enter your new password',
              type: 'new_password'),
        ],
      ),
    );
  }

//This form will be displayed when result.nextStep!.signInStep ==
//'CONFIRM_SIGN_IN_WITH_NEW_PASSWORD'
  static ChangePasswordForm changePasswordForm(Alias alias) {
    return const ChangePasswordForm(
      formFields: FormFields(
        children: [
          ConfirmSignInFormField(
              title: 'New password*',
              hintText: 'Enter your new password',
              type: 'password'),
        ],
      ),
    );
  }
}
