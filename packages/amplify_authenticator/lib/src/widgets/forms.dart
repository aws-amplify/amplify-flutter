import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/widgets/buttons.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';
import 'package:flutter/material.dart';

class AuthenticatorFormComponent extends AuthenticatorComponent {
  const AuthenticatorFormComponent({
    Key? key,
    required this.fields,
    required this.buttons,
  }) : super(key: key);

  const factory AuthenticatorFormComponent.signIn({
    required List<SignInFormField> fields,
  }) = SignInForm;

  const factory AuthenticatorFormComponent.signUp({
    required List<SignUpFormField> fields,
  }) = SignUpForm;

  const factory AuthenticatorFormComponent.confirmSignUp({
    required List<ConfirmSignUpFormField> fields,
  }) = ConfirmSignUpForm;

  const factory AuthenticatorFormComponent.confirmSignInMFA({
    required List<ConfirmSignInFormField> fields,
  }) = ConfirmSignInMFAForm;

  const factory AuthenticatorFormComponent.sendCode({
    required List<AuthenticatorFormField> fields,
  }) = SendCodeForm;

  const factory AuthenticatorFormComponent.resetPassword({
    required List<AuthenticatorFormField> fields,
  }) = ResetPasswordForm;

  const factory AuthenticatorFormComponent.confirmSignInWithNewPassword({
    required List<ConfirmSignInFormField> fields,
  }) = ConfirmSignInNewPasswordForm;

  final List<AuthenticatorFormField> fields;
  final List<Widget> buttons;

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel) {
    return FormContainer(
      formKey: viewModel.formKey,
      fields: fields,
      buttonsContainer: ButtonsContainer(
        children: buttons,
      ),
    );
  }
}

class SignInForm extends AuthenticatorFormComponent {
  /// Requires a list of sign in form fields.
  const SignInForm({
    Key? key,
    required List<SignInFormField> fields,
  }) : super(
          key: key,
          fields: fields,
          buttons: const [
            SignInButton(),
            GoToSignUpButton(),
          ],
        );
}

class SignUpForm extends AuthenticatorFormComponent {
  /// Requires a list of sign up  form fields.
  const SignUpForm({
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

class ConfirmSignUpForm extends AuthenticatorFormComponent {
  /// Requires a list of confirm sign up  form fields.
  const ConfirmSignUpForm({
    Key? key,
    required List<ConfirmSignUpFormField> fields,
    this.resendCodeButton,
  }) : super(
          key: key,
          fields: fields,
          buttons: const [
            BackToSignInButton(),
            ConfirmButton(),
          ],
        );

  /// TODO: This button will be used for resend a verification code.
  final Widget? resendCodeButton;
}

class ConfirmSignInMFAForm extends AuthenticatorFormComponent {
  /// Requires a list of confirm sign in form fields.
  const ConfirmSignInMFAForm({
    Key? key,
    required List<ConfirmSignInFormField> fields,
  }) : super(
          key: key,
          fields: fields,
          buttons: const [
            BackToSignInButton(),
            ConfirmSignInMFAButton(),
          ],
        );
}

class SendCodeForm extends AuthenticatorFormComponent {
  ///
  const SendCodeForm({
    Key? key,
    required List<AuthenticatorFormField> fields,
  }) : super(
          key: key,
          fields: fields,
          buttons: const [
            BackToSignInButton(),
            SendCodeButton(),
          ],
        );
}

class ResetPasswordForm extends AuthenticatorFormComponent {
  ///
  const ResetPasswordForm({
    Key? key,
    required List<AuthenticatorFormField> fields,
  }) : super(
          key: key,
          fields: fields,
          buttons: const [
            BackToSignInButton(),
            SubmitButton(),
          ],
        );
}

class ConfirmSignInNewPasswordForm extends AuthenticatorFormComponent {
  ///
  const ConfirmSignInNewPasswordForm({
    Key? key,
    required List<ConfirmSignInFormField> fields,
  }) : super(
          key: key,
          fields: fields,
          buttons: const [
            BackToSignInButton(),
            ConfirmSignInNewPasswordButton(),
          ],
        );
}
