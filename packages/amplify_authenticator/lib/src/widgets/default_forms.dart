import 'package:amplify_authenticator/src/strings/auth_strings.dart';
import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:amplify_authenticator/src/widgets/form_fields.dart';

///These default forms will be used as long as the customer doesn't pass any custom forms.
class DefaultForms {
  static SignInForm signInForm(AuthStrings authStrings) {
    return SignInForm(
      formFields: FormFields(
        children: [
          SignInFormField(
              title: authStrings.inputs.username_title,
              hintText: authStrings.inputs.username_hint,
              type: 'username'),
          SignInFormField(
              title: authStrings.inputs.password_title,
              hintText: authStrings.inputs.password_hint,
              type: 'password')
        ],
      ),
    );
  }

  static SignUpForm signUpForm(AuthStrings authStrings) {
    return SignUpForm(
      formFields: FormFields(
        children: [
          SignUpFormField(
              title: authStrings.inputs.username_title,
              hintText: authStrings.inputs.username_hint,
              type: 'username'),
          SignUpFormField(
              title: authStrings.inputs.password_title,
              hintText: authStrings.inputs.password_hint,
              type: 'password'),
          SignUpFormField(
              title: authStrings.inputs.email_title,
              hintText: authStrings.inputs.email_hint,
              type: 'email'),
          SignUpFormField(
              title: authStrings.inputs.phone_number_title,
              hintText: authStrings.inputs.phone_number_hint,
              type: 'phone_number')
        ],
      ),
    );
  }

  static ConfirmSignUpForm confirmSignUpForm(AuthStrings authStrings) {
    return ConfirmSignUpForm(
      formFields: FormFields(
        children: [
          ConfirmSignUpFormField(
              title: authStrings.inputs.username_title,
              hintText: authStrings.inputs.username_hint,
              type: 'username'),
          ConfirmSignUpFormField(
              title: authStrings.inputs.verification_code_title,
              hintText: authStrings.inputs.verification_code_hint,
              type: 'code'),
        ],
      ),
    );
  }

  static ConfirmSignInForm confirmSignInForm(AuthStrings authStrings) {
    return ConfirmSignInForm(
      formFields: FormFields(
        children: [
          ConfirmSignInFormField(
              title: authStrings.inputs.verification_code_title,
              hintText: authStrings.inputs.verification_code_hint,
              type: 'code'),
        ],
      ),
    );
  }
}
