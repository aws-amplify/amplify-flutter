import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/enums/signup_types.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/widgets/buttons.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:amplify_authenticator/src/widgets/form_fields.dart';
import 'package:amplify_flutter/src/config/auth/auth_block_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthenticatorForm extends StatelessAuthenticatorComponent {
  const AuthenticatorForm({
    Key? key,
    required this.fields,
    required this.buttons,
  }) : super(key: key);

  factory AuthenticatorForm.signIn({
    List<SignInFormField>? fields,
  }) =>
      fields == null || fields.isEmpty
          ? const SignInForm()
          : SignInForm.custom(fields: fields);

  factory AuthenticatorForm.signUp({
    List<SignUpFormField>? fields,
  }) =>
      fields == null || fields.isEmpty
          ? const SignUpForm()
          : SignUpForm.custom(fields: fields);

  factory AuthenticatorForm.confirmSignUp({
    List<ConfirmSignUpFormField>? fields,
  }) =>
      fields == null || fields.isEmpty
          ? const ConfirmSignUpForm()
          : ConfirmSignUpForm.custom(fields: fields);

  factory AuthenticatorForm.confirmSignInMFA({
    List<ConfirmSignInFormField>? fields,
  }) =>
      fields == null || fields.isEmpty
          ? const ConfirmSignInMFAForm()
          : ConfirmSignInMFAForm.custom(fields: fields);

  factory AuthenticatorForm.sendCode({
    List<SignInFormField>? fields,
  }) =>
      fields == null || fields.isEmpty
          ? const SendCodeForm()
          : SendCodeForm.custom(fields: fields);

  factory AuthenticatorForm.resetPassword({
    List<SignInFormField>? fields,
  }) =>
      fields == null || fields.isEmpty
          ? const ResetPasswordForm()
          : ResetPasswordForm.custom(fields: fields);

  factory AuthenticatorForm.confirmSignInWithNewPassword({
    List<ConfirmSignInFormField>? fields,
  }) =>
      fields == null || fields.isEmpty
          ? const ConfirmSignInNewPasswordForm()
          : ConfirmSignInNewPasswordForm.custom(fields: fields);

  final List<AuthenticatorFormField> fields;
  final List<Widget> buttons;

  /// Additional fields defined at runtime.
  List<AuthenticatorFormField> additionalFields(BuildContext context) =>
      const [];

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return FormContainer(
      fields: <AuthenticatorFormField>[
        ...fields,
        ...additionalFields(context),
      ],
      buttonsContainer: ButtonsContainer(
        children: buttons,
      ),
    );
  }
}

class SignInForm extends AuthenticatorForm {
  const SignInForm({
    Key? key,
    bool includeDefaultAttributes = true,
  }) : this.custom(
          key: key,
          fields: const [
            SignInFormField.username(),
            SignInFormField.password(),
          ],
          includeDefaultAttributes: includeDefaultAttributes,
        );

  /// Requires a list of sign in form fields.
  const SignInForm.custom({
    Key? key,
    required List<SignInFormField> fields,
    this.includeDefaultAttributes = false,
  }) : super(
          key: key,
          fields: fields,
          buttons: const [
            SignInButton(),
            GoToSignUpButton(),
          ],
        );

  final bool includeDefaultAttributes;

  @override
  List<AuthenticatorFormField> additionalFields(BuildContext context) {
    if (!includeDefaultAttributes) {
      return const [];
    }
    final signUpAttributes = InheritedConfig.of(context)
        ?.auth
        ?.awsCognitoAuthPlugin
        ?.auth?['Default']
        ?.signupAttributes;
    if (signUpAttributes == null) {
      return const [];
    }
    return signUpAttributes
        .map((attr) {
          switch (attr) {
            case 'ADDRESS':
              return const SignUpFormField.address();
            case 'BIRTHDATE':
              return const SignUpFormField.birthdate();
            case 'EMAIL':
              return const SignUpFormField.email();
            case 'FAMILY_NAME':
              return const SignUpFormField.familyName();
            case 'MIDDLE_NAME':
              return const SignUpFormField.middleName();
            case 'GENDER':
              return const SignUpFormField.gender();

            /// TODO: Potentially remove locale and add to api call based on phone locale
            case 'LOCALE':
              return const SignUpFormField.locale();
            case 'GIVEN_NAME':
              return const SignUpFormField.givenName();
            case 'NAME':
              return const SignUpFormField.name();
            case 'NICKNAME':
              return const SignUpFormField.nickname();
            case 'PHONE_NUMBER':
              return const SignUpFormField.phoneNumber();
            case 'PREFERRED_USERNAME':
              return const SignUpFormField.preferredUsername();
            case 'PICTURE':
              return const SignUpFormField.picture();
            case 'PROFILE':
              return const SignUpFormField.profile();

            /// TODO: Potentially remove updated_at and add to api call based on device datetime
            case 'UPDATED_AT':
              return const SignUpFormField.updatedAt();
            case 'WEBSITE':
              return const SignUpFormField.website();

            /// TODO: Potentially remove zoneinfo and add to api call based on device timezone
            case 'ZONEINFO':
              return const SignUpFormField.zoneinfo();
          }
        })
        .whereType<SignUpFormField>()
        .toList();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>(
        'includeDefaultAttributes', includeDefaultAttributes));
  }
}

class SignUpForm extends AuthenticatorForm {
  const SignUpForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: const [
            SignUpFormField.username(),
            SignUpFormField.password(),
            SignUpFormField.passwordConfirmation(),
          ],
        );

  /// Requires a list of sign up  form fields.
  const SignUpForm.custom({
    Key? key,
    required List<SignUpFormField> fields,
  }) : super(
          key: key,
          fields: fields,
          buttons: const [
            SignUpButton(),
            GoToSignInButton(),
          ],
        );
}

class ConfirmSignUpForm extends AuthenticatorForm {
  const ConfirmSignUpForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: const [
            ConfirmSignUpFormField.username(),
            ConfirmSignUpFormField.verificationCode(),
          ],
        );

  /// Requires a list of confirm sign up  form fields.
  const ConfirmSignUpForm.custom({
    Key? key,
    required List<ConfirmSignUpFormField> fields,
    this.resendCodeButton,
  }) : super(
          key: key,
          fields: fields,
          buttons: const [
            ConfirmSignUpButton(),
            BackToSignInButton(),
          ],
        );

  /// TODO: This button will be used for resend a verification code.
  final Widget? resendCodeButton;
}

class ConfirmSignInMFAForm extends AuthenticatorForm {
  const ConfirmSignInMFAForm({Key? key})
      : this.custom(
          key: key,
          fields: const [
            ConfirmSignInFormField.verificationCode(),
          ],
        );

  const ConfirmSignInMFAForm.custom({
    Key? key,
    required List<ConfirmSignInFormField> fields,
  }) : super(
          key: key,
          fields: fields,
          buttons: const [
            ConfirmSignInMFAButton(),
            BackToSignInButton(),
          ],
        );
}

class SendCodeForm extends AuthenticatorForm {
  const SendCodeForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: const [
            SignInFormField.verifyUsername(),
          ],
        );

  const SendCodeForm.custom({
    Key? key,
    required List<SignInFormField> fields,
  }) : super(
          key: key,
          fields: fields,
          buttons: const [
            BackToSignInButton(),
            SendCodeButton(),
          ],
        );
}

class ResetPasswordForm extends AuthenticatorForm {
  const ResetPasswordForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: const [
            SignInFormField.verificationCode(),
            SignInFormField.newPassword(),
          ],
        );

  const ResetPasswordForm.custom({
    Key? key,
    required List<SignInFormField> fields,
  }) : super(
          key: key,
          fields: fields,
          buttons: const [
            SubmitButton(),
            BackToSignInButton(),
          ],
        );
}

class ConfirmSignInNewPasswordForm extends AuthenticatorForm {
  const ConfirmSignInNewPasswordForm({
    Key? key,
  }) : this.custom(
          key: key,
          fields: const [
            ConfirmSignInFormField.password(),
          ],
        );

  const ConfirmSignInNewPasswordForm.custom({
    Key? key,
    required List<ConfirmSignInFormField> fields,
  }) : super(
          key: key,
          fields: fields,
          buttons: const [
            ConfirmSignInNewPasswordButton(),
            BackToSignInButton(),
          ],
        );
}
