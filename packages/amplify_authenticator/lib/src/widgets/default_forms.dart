import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:amplify_authenticator/src/widgets/form_fields.dart';

///These default forms will be used as long as the customer doesn't pass any custom forms.

class DefaultForms {
  static SignInForm signInForm() {
    return const SignInForm(
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

  static SignUpForm signUpForm() {
    return const SignUpForm(
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

  static ConfirmSignUpForm confirmSignUpForm() {
    return const ConfirmSignUpForm(
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

  static ConfirmSignInForm confirmSignInForm() {
    return const ConfirmSignInForm(
      formFields: FormFields(
        children: [
          ConfirmSignInFormField(
              title: 'Code*',
              hintText: "Enter you confirmation code",
              type: 'code'),
        ],
      ),
    );
  }
}
