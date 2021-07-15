import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:amplify_authenticator/src/widgets/form_fields.dart';

class DefaultForms {
  static SignInForm signInForm() {
    return SignInForm(
      formFields: FormFields(
        children: [
          AuthFormField(
              title: 'Username*',
              hintText: "Enter you username",
              type: 'username'),
          AuthFormField(
              title: 'Password*',
              hintText: "Enter you password",
              type: 'password')
        ],
      ),
    );
  }

  static SignUpForm signUpForm() {
    return SignUpForm(
      formFields: FormFields(
        children: [
          AuthFormField(
              title: 'Username*',
              hintText: "Enter you username",
              type: 'username'),
          AuthFormField(
              title: 'Password*',
              hintText: "Enter you password",
              type: 'password'),
          AuthFormField(
              title: 'Email*', hintText: "Enter you email", type: 'email'),
          AuthFormField(
              title: 'Phone Number*',
              hintText: "Enter you phone number",
              type: 'phone_number')
        ],
      ),
    );
  }

  static ConfirmSignUpForm confirmSignUpForm() {
    return ConfirmSignUpForm(
      formFields: FormFields(
        children: [
          AuthFormField(
              title: 'Username*',
              hintText: "Enter you username",
              type: 'username'),
          AuthFormField(
              title: 'Verification Code*',
              hintText: "Enter you verification code",
              type: 'code'),
        ],
      ),
    );
  }
}
