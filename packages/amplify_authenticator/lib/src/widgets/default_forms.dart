import 'package:amplify_authenticator/src/state/inherited_resolver.dart';
import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:amplify_authenticator/src/widgets/form_fields.dart';
import 'package:flutter/widgets.dart';

///These default forms will be used as long as the customer doesn't pass any custom forms.
class DefaultForms {
  static SignInForm signInForm() {
    var resolver = InheritedStrings.of(context)!.resolver;
    return SignInForm(
      formFields: FormFields(
        children: [
          SignInFormField(
              title: resolver.inputs.username_title!(context),
              hintText: resolver.inputs.username_hint!(context),
              type: 'username'),
          SignInFormField(
              title: resolver.inputs.password_title!(context),
              hintText: resolver.inputs.password_hint!(context),
              type: 'password')
        ],
      ),
    );
  }

  SignUpForm signUpForm() {
    var resolver = InheritedStrings.of(context)!.resolver;
    return SignUpForm(
      formFields: FormFields(
        children: [
          SignUpFormField(
              title: resolver.inputs.username_title!(context),
              hintText: resolver.inputs.username_hint!(context),
              type: 'username'),
          SignUpFormField(
              title: resolver.inputs.password_title!(context),
              hintText: resolver.inputs.password_hint!(context),
              type: 'password'),
          SignUpFormField(
              title: resolver.inputs.email_title!(context),
              hintText: resolver.inputs.email_hint!(context),
              type: 'email'),
          SignUpFormField(
              title: resolver.inputs.phone_number_title!(context),
              hintText: resolver.inputs.phone_number_hint!(context),
              type: 'phone_number')
        ],
      ),
    );
  }

  ConfirmSignUpForm confirmSignUpForm() {
    var resolver = InheritedStrings.of(context)!.resolver;
    return ConfirmSignUpForm(
      formFields: FormFields(
        children: [
          ConfirmSignUpFormField(
              title: resolver.inputs.username_title!(context),
              hintText: resolver.inputs.username_hint!(context),
              type: 'username'),
          ConfirmSignUpFormField(
              title: resolver.inputs.verification_code_title!(context),
              hintText: resolver.inputs.verification_code_hint!(context),
              type: 'code'),
        ],
      ),
    );
  }

  ConfirmSignInForm confirmSignInForm() {
    var resolver = InheritedStrings.of(context)!.resolver;
    return ConfirmSignInForm(
      formFields: FormFields(
        children: [
          ConfirmSignInFormField(
              title: resolver.inputs.verification_code_title!(context),
              hintText: resolver.inputs.verification_code_hint!(context),
              type: 'code'),
        ],
      ),
    );
  }
}
