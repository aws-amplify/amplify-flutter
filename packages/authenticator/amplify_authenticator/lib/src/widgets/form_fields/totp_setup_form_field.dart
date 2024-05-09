// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: use_build_context_synchronously

part of '../form_field.dart';

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.instruction_form_field}
/// Prebuilt form field widgets for setting up TOTP.
///
///
/// {@endtemplate}
abstract class TotpSetupFormField<FieldValue extends Object>
    extends AuthenticatorFormField<TotpSetupField, FieldValue> {
  /// {@macro amplify_authenticator.instruction_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const TotpSetupFormField._({
    super.key,
    required super.field,
  }) : super._();

  /// Creates a TOTP QR code component.
  static TotpSetupFormField totpQrCode({
    Key? key,
  }) =>
      _InstructionTotpQrCodeField(
        key: key ?? keyQrCodeTotpSetupFormField,
        field: TotpSetupField.totpQrCode,
      );

  /// Creates a TOTP Copy Key component.
  static TotpSetupFormField totpCopyKey({
    Key? key,
  }) =>
      _InstructionTotpCopyKeyField(
        key: key ?? keyCopyKeyTotpSetupFormField,
        field: TotpSetupField.totpCopyKey,
      );

  /// Creates a TOTP setup component.
  static TotpSetupFormField totpSetup({
    Key? key,
  }) =>
      _TotpSetupField(
        key: key ?? keyTotpSetupFormField,
        field: TotpSetupField.totpSetup,
      );
}

abstract class _InstructionFormFieldState<FieldValue extends Object>
    extends AuthenticatorFormFieldState<TotpSetupField, FieldValue,
        TotpSetupFormField<FieldValue>> {}

class _TotpSetupField extends TotpSetupFormField<String> {
  const _TotpSetupField({
    super.key,
    required super.field,
  }) : super._();

  @override
  _InstructionTotpSetupFieldState createState() =>
      _InstructionTotpSetupFieldState();
}

class _InstructionTotpSetupFieldState
    extends _InstructionFormFieldState<String> {
  static const _spacingBox = SizedBox(height: 10);

  String resolveInstruction(InstructionsKeyType type) =>
      stringResolver.instruction.resolve(
        context,
        type,
      );

  @override
  Widget buildFormField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          resolveInstruction(InstructionsKeyType.totpStep1Title),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          resolveInstruction(InstructionsKeyType.totpStep1Body),
        ),
        _spacingBox,
        Text(
          resolveInstruction(InstructionsKeyType.totpStep2Title),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          resolveInstruction(InstructionsKeyType.totpStep2Body),
        ),
        TotpSetupFormField.totpQrCode(),
        TotpSetupFormField.totpCopyKey(),
        Text(
          resolveInstruction(InstructionsKeyType.totpStep3Title),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          resolveInstruction(InstructionsKeyType.totpStep3Body),
        ),
        ConfirmSignInFormField.verificationCode(),
      ],
    );
  }
}

class _InstructionTotpCopyKeyField extends TotpSetupFormField<String> {
  const _InstructionTotpCopyKeyField({
    super.key,
    required super.field,
  }) : super._();

  @override
  _InstructionTotpCopyKeyFieldState createState() =>
      _InstructionTotpCopyKeyFieldState();
}

class _InstructionTotpCopyKeyFieldState
    extends _InstructionFormFieldState<String> {
  /// Copies the TOTP key to the clipboard
  Future<void> _copyKey() async {
    try {
      await Clipboard.setData(
        ClipboardData(text: state.totpSetupDetails!.sharedSecret),
      );
      // There is a bug in the analysis that causes this line to fail linting
      // This check resolves lint error in beta, thus the lint error can be
      // ignored using use_build_context_synchronously
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          content: Text(
            stringResolver.messages.copySucceeded(
              context,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    } on Exception {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).colorScheme.onError,
          content: Text(
            stringResolver.messages.copyFailed(
              context,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
  }

  @override
  Widget buildFormField(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: _copyKey,
        child: Text(
          stringResolver.buttons.resolve(
            context,
            ButtonResolverKey.copyKey,
          ),
        ),
      ),
    );
  }
}

class _InstructionTotpQrCodeField extends TotpSetupFormField<String> {
  const _InstructionTotpQrCodeField({
    super.key,
    required super.field,
  }) : super._();

  @override
  _InstructionTotpQrCodeFieldState createState() =>
      _InstructionTotpQrCodeFieldState();
}

class _InstructionTotpQrCodeFieldState
    extends _InstructionFormFieldState<String> {
  /// Retrieves the TOTP setup uri from the state
  Uri get _totpUri => state.expectTotpUri();

  @override
  double? get marginBottom => 0;

  @override
  Widget buildFormField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: QrImageView(
            size: 200,
            padding: EdgeInsets.zero,
            eyeStyle: QrEyeStyle(
              color: Theme.of(context).textTheme.bodyMedium!.color,
            ),
            dataModuleStyle: QrDataModuleStyle(
              color: Theme.of(context).textTheme.bodyMedium!.color,
            ),
            data: _totpUri.toString(),
            version: QrVersions.auto,
          ),
        ),
      ],
    );
  }
}
