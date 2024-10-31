// mfa_setup_selection_form_field.dart

// Copyright Amazon.com, Inc. or its affiliates.
// All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../form_field.dart';

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.mfa_setup_selection_form_field}
/// A prebuilt form widget for use on the MFA setup selection step.
/// {@endtemplate}
class _MfaSetupMethodRadioField extends ConfirmSignInFormField<MfaType> {
  const _MfaSetupMethodRadioField({
    super.key,
    required super.field,
  }) : super._();

  @override
  _MfaSetupSelectionFieldState createState() => _MfaSetupSelectionFieldState();
}

class _MfaSetupSelectionFieldState extends _ConfirmSignInFormFieldState<MfaType>
    with AuthenticatorRadioField {
  Set<MfaType> get _allowedMfaTypes {
    final state = InheritedAuthBloc.of(context).currentState;
    assert(
      state is ContinueSignInWithMfaSetupSelection,
      'Expected ContinueSignInWithMfaSetupSelection for current screen',
    );
    return (state as ContinueSignInWithMfaSetupSelection).allowedMfaTypes;
  }

  @override
  List<InputSelection<InputResolverKey, MfaType>> get selections => [
        if (_allowedMfaTypes.contains(MfaType.totp))
          const InputSelection<InputResolverKey, MfaType>(
            label: InputResolverKey.selectTotp,
            value: MfaType.totp,
          ),
        if (_allowedMfaTypes.contains(MfaType.email))
          const InputSelection<InputResolverKey, MfaType>(
            label: InputResolverKey.selectEmail,
            value: MfaType.email,
          ),
      ];

  @override
  MfaType get initialValue => selections.first.value;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state.selectedMfaMethod = initialValue;
    });
  }

  @override
  ValueChanged<MfaType> get onChanged {
    return (MfaType method) => state.selectedMfaMethod = method;
  }
}
