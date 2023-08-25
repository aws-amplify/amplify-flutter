// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of authenticator.form_field;

enum InstructionField {
  totpSetup,
  totpQrCode,
  totpCopyKey,
  totpCodeInstruction,
}

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.instruction_form_field}
/// Prebuilt form field widgets for instructional use.
/// {@endtemplate}
abstract class InstructionFormField<FieldValue extends Object>
    extends AuthenticatorFormField<InstructionField, FieldValue> {
  /// {@macro amplify_authenticator.instruction_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const InstructionFormField._({
    super.key,
    required super.field,
  }) : super._();

  /// Creates a TOTP QR code component.
  static InstructionFormField<String> totpQrCode({
    Key? key,
  }) =>
      _InstructionTotpQrCodeField(
        key: key ?? keyTotpQrCodeInstructionFormField,
        field: InstructionField.totpQrCode,
      );

  /// Creates a TOTP QR code component.
  static InstructionFormField<String> totpCopyKey({
    Key? key,
  }) =>
      _InstructionTotpCopyKeyField(
        key: key ?? keyTotpCopyKeyInstructionFormField,
        field: InstructionField.totpCopyKey,
      );

  /// Creates a TOTP setup component.
  static InstructionFormField<String> totpSetup({
    Key? key,
  }) =>
      _InstructionTotpSetupField(
        key: key ?? keyTotpSetupInstructionFormField,
        field: InstructionField.totpSetup,
      );

  /// Creates a instruction field for totp code verification.
  static InstructionFormField<String> totpCodeInstruction({
    Key? key,
  }) =>
      _InstructionInstructionField(
        key: key ?? keyTotpSetupInstructionFormField,
        field: InstructionField.totpCodeInstruction,
      );
}

abstract class _InstructionFormFieldState<FieldValue extends Object>
    extends AuthenticatorFormFieldState<InstructionField, FieldValue,
        InstructionFormField<FieldValue>> {
  @override
  Iterable<String>? get autofillHints {
    if (widget.autofillHints != null) return widget.autofillHints;
    switch (widget.field) {
      case InstructionField.totpCodeInstruction:
      case InstructionField.totpCopyKey:
      case InstructionField.totpQrCode:
      case InstructionField.totpSetup:
        return null;
    }
  }
}

class _InstructionTotpSetupField extends InstructionFormField<String> {
  const _InstructionTotpSetupField({
    super.key,
    required super.field,
  }) : super._();

  @override
  _InstructionTotpSetupFieldState createState() =>
      _InstructionTotpSetupFieldState();
}

class _InstructionTotpSetupFieldState extends _InstructionFormFieldState<String>
    with TotpSetupFields {}

class _InstructionInstructionField extends InstructionFormField<String> {
  const _InstructionInstructionField({
    super.key,
    required super.field,
  }) : super._();

  @override
  _InstructionInstructionFieldState createState() =>
      _InstructionInstructionFieldState();
}

class _InstructionInstructionFieldState
    extends _InstructionFormFieldState<String> with InstructionTextField {
  @override
  String get text => switch (widget.field) {
        InstructionField.totpCodeInstruction =>
          stringResolver.instruction.resolve(
            context,
            InstructionResolverKey.totpPassCodeInstruction,
          ),
        _ => super.text
      };
}

class _InstructionTotpCopyKeyField extends InstructionFormField<String> {
  const _InstructionTotpCopyKeyField({
    super.key,
    required super.field,
  }) : super._();

  @override
  _InstructionTotpCopyKeyFieldState createState() =>
      _InstructionTotpCopyKeyFieldState();
}

class _InstructionTotpCopyKeyFieldState
    extends _InstructionFormFieldState<String> with TotpCopyKey {}

class _InstructionTotpQrCodeField extends InstructionFormField<String> {
  const _InstructionTotpQrCodeField({
    super.key,
    required super.field,
  }) : super._();

  @override
  _InstructionTotpQrCodeFieldState createState() =>
      _InstructionTotpQrCodeFieldState();
}

class _InstructionTotpQrCodeFieldState
    extends _InstructionFormFieldState<String> with TotpQrCode {}
