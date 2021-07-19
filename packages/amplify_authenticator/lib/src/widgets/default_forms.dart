import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:amplify_authenticator/src/widgets/form_fields.dart';

/// Default forms when there are no forms being passed inside the authenticator wrapper
class DefaultForms {
  /// Default Sign In Form
  static SignInForm signInForm() {
    return SignInForm(
      formFields: FormFields(
        children: [
          SignInFormField(
              title: 'Username*',
              hintText: "Enter you username",
              type: 'username'),
          SignInFormField(
              title: 'Password*',
              hintText: "Enter you password",
              type: 'password')
        ],
      ),
    );
  }

  /// Default Sign un Form
  static SignUpForm signUpForm() {
    return SignUpForm(
      formFields: FormFields(
        children: [
          SignUpFormField(
              title: 'Username*',
              hintText: "Enter you username",
              type: 'username'),
          SignUpFormField(
              title: 'Password*',
              hintText: "Enter you password",
              type: 'password'),
          SignUpFormField(
              title: 'Email*', hintText: "Enter you email", type: 'email'),
          SignUpFormField(
              title: 'Phone Number*',
              hintText: "Enter you phone number",
              type: 'phone_number')
        ],
      ),
    );
  }

  /// Default Confirm Sign Up Form
  static ConfirmSignUpForm confirmSignUpForm() {
    return ConfirmSignUpForm(
      formFields: FormFields(
        children: [
          ConfirmSignUpFormField(
              title: 'Username*',
              hintText: "Enter you username",
              type: 'username'),
          ConfirmSignUpFormField(
              title: 'Verification Code*',
              hintText: "Enter you verification code",
              type: 'code'),
        ],
      ),
    );
  }
}
