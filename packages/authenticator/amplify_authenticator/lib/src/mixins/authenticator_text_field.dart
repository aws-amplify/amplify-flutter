// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/widgets/form.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin AuthenticatorTextField<
  FieldType extends Enum,
  T extends AuthenticatorFormField<FieldType, String>
>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  TextEditingController? _effectiveController;
  bool _isApplyingControllerText = false;
  String? _lastSyncedControllerValue;

  @protected
  TextEditingController? get textController => null;

  void _maybeUpdateEffectiveController() {
    final controller = textController;
    if (identical(controller, _effectiveController)) {
      return;
    }
    _effectiveController?.removeListener(_handleControllerChanged);
    _effectiveController = controller;
    _lastSyncedControllerValue = null;
    if (_effectiveController != null) {
      _effectiveController!.addListener(_handleControllerChanged);
    }
  }

  void _handleControllerChanged() {
    final controller = _effectiveController;
    if (controller == null || _isApplyingControllerText) {
      return;
    }
    final text = controller.text;
    if (text == _lastSyncedControllerValue) {
      return;
    }
    _lastSyncedControllerValue = text;
    onChanged(text);
  }

  void _syncControllerText({bool force = false}) {
    final controller = _effectiveController;
    if (controller == null) {
      return;
    }
    final target = initialValue ?? '';
    if (!force && controller.text == target) {
      _lastSyncedControllerValue = controller.text;
      return;
    }
    _isApplyingControllerText = true;
    controller.value = controller.value.copyWith(
      text: target,
      selection: TextSelection.collapsed(offset: target.length),
      composing: TextRange.empty,
    );
    _lastSyncedControllerValue = target;
    _isApplyingControllerText = false;
  }

  @override
  void initState() {
    super.initState();
    _maybeUpdateEffectiveController();
    // Skip sync in initState since 'state' isn't available yet
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _maybeUpdateEffectiveController();
    // Schedule both syncs after build completes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        // First sync controller -> state if controller has initial text
        if (_effectiveController != null &&
            _lastSyncedControllerValue == null) {
          _handleControllerChanged();
        }
        // Then sync state -> controller to ensure they're in sync
        _syncControllerText();
      }
    });
  }

  @override
  void didUpdateWidget(covariant T oldWidget) {
    super.didUpdateWidget(oldWidget);
    _maybeUpdateEffectiveController();
    _syncControllerText(force: true);
  }

  @override
  void dispose() {
    _effectiveController?.removeListener(_handleControllerChanged);
    _effectiveController = null;
    super.dispose();
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = widget.hintText == null
        ? widget.hintTextKey?.resolve(context, inputResolver)
        : widget.hintText!;
    _maybeUpdateEffectiveController();
    return ValueListenableBuilder<bool>(
      valueListenable: AuthenticatorFormState.of(
        context,
      ).obscureTextToggleValue,
      builder: (BuildContext context, bool toggleObscureText, Widget? _) {
        final obscureText = this.obscureText && toggleObscureText;
        // Don't sync during build
        return TextFormField(
          style: enabled
              ? null
              : TextStyle(color: Theme.of(context).disabledColor),
          controller: _effectiveController,
          initialValue: _effectiveController == null ? initialValue : null,
          enabled: enabled,
          validator: widget.validatorOverride ?? validator,
          onChanged: onChanged,
          autocorrect: false,
          decoration: InputDecoration(
            labelText: labelText,
            prefixIcon: prefix,
            prefixIconConstraints: const BoxConstraints(
              minWidth: 40,
              maxWidth: 70,
            ),
            suffixIcon: suffix,
            errorMaxLines: errorMaxLines,
            hintText: hintText,
          ),
          maxLength: maxLength,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          keyboardType: keyboardType,
          obscureText: obscureText,
          onFieldSubmitted: onFieldSubmitted,
          textAlignVertical: TextAlignVertical.center,
          autofillHints: autofillHints,
        );
      },
    );
  }
}
