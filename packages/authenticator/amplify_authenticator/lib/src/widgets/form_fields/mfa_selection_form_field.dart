// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of authenticator.form_field;

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.mfa_selection_form_field}
/// A prebuilt [Radio] widget for use on the MFA selection step.
/// {@endtemplate}

class _MfaSelectionRadioField extends ConfirmSignInFormField<MfaType> {
  const _MfaSelectionRadioField({
    super.key,
    required super.field,
  }) : super._();

  @override
  _MfaSelectionFieldState createState() => _MfaSelectionFieldState();
}

class _MfaSelectionFieldState extends _ConfirmSignInFormFieldState<MfaType>
    with AuthenticatorRadioField {
  Set<MfaType> get _allowedMfaTypes {
    final state = InheritedAuthBloc.of(context).currentState;
    assert(
      state is ContinueSignInWithMfaSelection,
      'Expected ContinueSignInWithMfaSelection for current screen',
    );
    return (state as ContinueSignInWithMfaSelection).allowedMfaTypes;
  }

  @override
  List<InputSelection<InputResolverKey, MfaType>> get selections => [
        if (_allowedMfaTypes.contains(MfaType.totp))
          const InputSelection<InputResolverKey, MfaType>(
            label: InputResolverKey.mfaTotpMethodTitle,
            value: MfaType.totp,
          ),
        if (_allowedMfaTypes.contains(MfaType.sms))
          const InputSelection<InputResolverKey, MfaType>(
            label: InputResolverKey.mfaSmsMethodTitle,
            value: MfaType.sms,
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
    return (MfaType key) => state.selectedMfaMethod = key;
  }
}
