import 'package:amplify_authenticator/src/enums/alias.dart';
import 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:amplify_authenticator/src/widgets/form_fields.dart';
import 'package:flutter/widgets.dart';

/// These default forms will be used as long as there are no
/// arguments being passed from the main Authenticator wrapper.
// The initial auth flow will be setup based on an username alias
// that comes from the main Authenticator widget.
class DefaultForms {
  late BuildContext _context;
  void set context(BuildContext context) {
    _context = context;
  }

  SignInForm signInForm(Alias alias, AuthStringResolver resolver) {
    late String _title;
    late String _hintText;
    switch (alias) {
      case Alias.username:
        _title = resolver.inputs.username_title(_context);
        _hintText = resolver.inputs.username_hint(_context);
        break;
      case Alias.phone_number:
        _title = resolver.inputs.phone_number_title(_context);
        _hintText = resolver.inputs.phone_number_hint(_context);
        break;
      case Alias.email:
        _title = resolver.inputs.email_title(_context);
        _hintText = resolver.inputs.email_hint(_context);
        break;
      case Alias.email_phone_number:
        _title = resolver.inputs.email_phone_number_title(_context);
        _hintText = resolver.inputs.email_phone_number_hint(_context);
        break;
    }
    return SignInForm(
      formFields: FormFields(
        children: [
          SignInFormField(title: _title, hintText: _hintText, type: 'username'),
          SignInFormField(
              title: resolver.inputs.password_title(_context),
              hintText: resolver.inputs.password_hint(_context),
              type: 'password')
        ],
      ),
    );
  }

  SignUpForm signUpForm(Alias alias, AuthStringResolver resolver) {
    late List<SignUpFormField> _signUpFormFields;
    switch (alias) {
      case Alias.username:
        _signUpFormFields = [
          SignUpFormField(
              title: resolver.inputs.username_title(_context),
              hintText: resolver.inputs.username_hint(_context),
              type: 'username'),
          SignUpFormField(
              title: resolver.inputs.password_title(_context),
              hintText: resolver.inputs.password_hint(_context),
              type: 'password'),
          SignUpFormField(
              title: resolver.inputs.email_title(_context),
              hintText: resolver.inputs.email_hint(_context),
              type: 'email'),
          SignUpFormField(
              title: resolver.inputs.phone_number_title(_context),
              hintText: resolver.inputs.phone_number_hint(_context),
              type: 'phone_number')
        ];
        break;
      case Alias.email:
        _signUpFormFields = [
          SignUpFormField(
              title: resolver.inputs.email_title(_context),
              hintText: resolver.inputs.email_hint(_context),
              type: 'username'),
          SignUpFormField(
              title: resolver.inputs.password_title(_context),
              hintText: resolver.inputs.password_hint(_context),
              type: 'password'),
          SignUpFormField(
              title: resolver.inputs.phone_number_title(_context),
              hintText: resolver.inputs.phone_number_hint(_context),
              type: 'phone_number')
        ];
        break;
      default:
        _signUpFormFields = [
          SignUpFormField(
              title: resolver.inputs.phone_number_title(_context),
              hintText: resolver.inputs.phone_number_hint(_context),
              type: 'username'),
          SignUpFormField(
              title: resolver.inputs.password_title(_context),
              hintText: resolver.inputs.password_hint(_context),
              type: 'password'),
          SignUpFormField(
              title: resolver.inputs.email_title(_context),
              hintText: resolver.inputs.email_hint(_context),
              type: 'email')
        ];
        break;
    }
    return SignUpForm(
      formFields: FormFields(
        children: _signUpFormFields,
      ),
    );
  }

  ConfirmSignUpForm confirmSignUpForm(
      Alias alias, AuthStringResolver resolver) {
    String? _title;
    String? _hintText;
    switch (alias) {
      case Alias.username:
        _title = resolver.inputs.username_title(_context);

        break;
      case Alias.phone_number:
        _title = resolver.inputs.phone_number_title(_context);

        break;
      case Alias.email:
        _title = resolver.inputs.email_title(_context);

        break;
      case Alias.email_phone_number:
        _title = resolver.inputs.email_phone_number_title(_context);
        _hintText = resolver.inputs.email_phone_number_hint(_context);
        break;
    }

    return ConfirmSignUpForm(
      formFields: FormFields(
        children: [
          ConfirmSignUpFormField(
              title: _title, hintText: _hintText, type: 'username'),
          ConfirmSignUpFormField(
              title: resolver.inputs.verification_code_title(_context),
              hintText: resolver.inputs.verification_code_hint(_context),
              type: 'code'),
        ],
      ),
    );
  }

  ConfirmSignInMFAForm confirmSignInForm(AuthStringResolver resolver) {
    return ConfirmSignInMFAForm(
      formFields: FormFields(
        children: [
          ConfirmSignInFormField(
              title: resolver.inputs.verification_code_title(_context),
              hintText: resolver.inputs.verification_code_hint(_context),
              type: 'code'),
        ],
      ),
    );
  }

  SendCodeForm sendCodeForm(Alias alias, AuthStringResolver resolver) {
    late String _title;
    late String _hintText;
    switch (alias) {
      case Alias.username:
        _title = resolver.inputs.username_title(_context);
        _hintText = resolver.inputs.username_hint(_context);
        break;
      case Alias.phone_number:
        _title = resolver.inputs.phone_number_title(_context);
        _hintText = resolver.inputs.phone_number_hint(_context);
        break;
      case Alias.email:
        _title = resolver.inputs.email_title(_context);
        _hintText = resolver.inputs.email_hint(_context);
        break;
      case Alias.email_phone_number:
        _title = resolver.inputs.email_phone_number_title(_context);
        _hintText = resolver.inputs.email_phone_number_hint(_context);
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

  ResetPasswordForm resetPasswordForm(AuthStringResolver resolver) {
    return ResetPasswordForm(
      formFields: FormFields(
        children: [
          SignInFormField(
              title: resolver.inputs.verification_code_title(_context),
              hintText: resolver.inputs.verification_code_hint(_context),
              type: 'verification_code'),
          SignInFormField(
              title: resolver.inputs.password_title(_context),
              hintText: resolver.inputs.password_hint(_context),
              type: 'new_password'),
        ],
      ),
    );
  }

//This form will be displayed when result.nextStep!.signInStep ==
//'CONFIRM_SIGN_IN_WITH_NEW_PASSWORD'
  ConfirmSignInNewPasswordForm confirmSignInNewPasswordForm(
      AuthStringResolver resolver) {
    return ConfirmSignInNewPasswordForm(
      formFields: FormFields(
        children: [
          ConfirmSignInFormField(
              title: resolver.inputs.password_title(_context),
              hintText: resolver.inputs.password_title(_context),
              type: 'password'),
        ],
      ),
    );
  }
}
