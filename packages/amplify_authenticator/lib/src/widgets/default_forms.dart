import 'package:amplify_authenticator/src/enums/alias.dart';
import 'package:amplify_authenticator/src/enums/confirm_signin_types.dart';
import 'package:amplify_authenticator/src/enums/confirm_signup_types.dart';
import 'package:amplify_authenticator/src/enums/signin_types.dart';
import 'package:amplify_authenticator/src/enums/signup_types.dart';
import 'package:amplify_authenticator/src/widgets/form_fields.dart';
import 'package:amplify_authenticator/src/widgets/forms.dart';

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
      fields: [
        SignInFormField(
          title: _title,
          hintText: _hintText,
          type: SignInType.username,
        ),
        const SignInFormField(
          title: 'Password*',
          hintText: 'Enter your password',
          type: SignInType.password,
        ),
      ],
    );
  }

  static SignUpForm signUpForm(Alias alias) {
    late List<SignUpFormField> _signUpFormFields;
    switch (alias) {
      case Alias.username:
        _signUpFormFields = const [
          SignUpFormField(
            type: SignUpType.username,
            title: 'Username*',
            hintText: 'Enter your username',
          ),
          SignUpFormField(
            type: SignUpType.password,
            title: 'Password*',
            hintText: 'Enter your password',
          ),
          SignUpFormField(
            type: SignUpType.email,
            title: 'Email*',
            hintText: 'Enter your email',
          ),
          SignUpFormField(
            type: SignUpType.phone_number,
            title: 'Phone Number*',
            hintText: 'Enter your phone number',
          )
        ];
        break;
      case Alias.email:
        _signUpFormFields = const [
          SignUpFormField(
            type: SignUpType.username,
            title: 'Email*',
            hintText: 'Enter your email',
          ),
          SignUpFormField(
            type: SignUpType.password,
            title: 'Password*',
            hintText: 'Enter your password',
          ),
          SignUpFormField(
            type: SignUpType.phone_number,
            title: 'Phone Number*',
            hintText: 'Enter your phone number',
          )
        ];
        break;
      default:
        _signUpFormFields = const [
          SignUpFormField(
            type: SignUpType.username,
            title: 'Phone Number*',
            hintText: 'Enter your phone number',
          ),
          SignUpFormField(
            type: SignUpType.password,
            title: 'Password*',
            hintText: 'Enter your password',
          ),
          SignUpFormField(
            type: SignUpType.email,
            title: 'Email*',
            hintText: 'Enter your email',
          )
        ];
        break;
    }
    return SignUpForm(
      fields: _signUpFormFields,
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
      fields: [
        ConfirmSignUpFormField(
          type: ConfirmSignUpType.username,
          title: _title,
          hintText: _hintText,
        ),
        const ConfirmSignUpFormField(
          type: ConfirmSignUpType.code,
          title: 'Verification Code*',
          hintText: 'Enter your verification code',
        ),
      ],
    );
  }

  static const ConfirmSignInMFAForm confirmSignInForm = ConfirmSignInMFAForm(
    fields: [
      ConfirmSignInFormField(
        type: ConfirmSignInType.code,
        title: 'Code*',
        hintText: 'Enter your confirmation code',
      ),
    ],
  );

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
      fields: [
        SignInFormField(
          type: SignInType.new_username,
          title: _title,
          hintText: _hintText,
        ),
      ],
    );
  }

  static const ResetPasswordForm resetPasswordForm = ResetPasswordForm(
    fields: [
      SignInFormField(
        type: SignInType.verification_code,
        title: 'Verification code*',
        hintText: 'Enter code',
      ),
      SignInFormField(
        type: SignInType.new_password,
        title: 'New password*',
        hintText: 'Enter your new password',
      ),
    ],
  );

//This form will be displayed when result.nextStep!.signInStep ==
//'CONFIRM_SIGN_IN_WITH_NEW_PASSWORD'
  static const ConfirmSignInNewPasswordForm confirmSignInNewPasswordForm =
      ConfirmSignInNewPasswordForm(
    fields: [
      ConfirmSignInFormField(
        type: ConfirmSignInType.password,
        title: 'New password*',
        hintText: 'Enter your new password',
      ),
    ],
  );
}
