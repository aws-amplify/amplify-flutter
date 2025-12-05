// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/controllers/authenticator_text_field_controller.dart';
import 'package:amplify_authenticator/src/widgets/form.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

mixin AuthenticatorTextField<
  FieldType extends Enum,
  T extends AuthenticatorFormField<FieldType, String>
>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  TextEditingController? _effectiveController;
  bool _isApplyingControllerText = false;
  String? _lastSyncedControllerValue;
  String? _pendingControllerText;
  bool _controllerUpdateScheduled = false;

  @protected
  AuthenticatorTextFieldController? get textController =>
      widget.authenticatorTextFieldController;

  void _maybeUpdateEffectiveController() {
    final controller = textController;
    if (identical(controller, _effectiveController)) {
      return;
    }
    _effectiveController?.removeListener(_handleControllerChanged);
    _effectiveController = controller;
    _lastSyncedControllerValue = null;
    _pendingControllerText = null;
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
    if (text == _lastSyncedControllerValue && _pendingControllerText == null) {
      return;
    }
    _pendingControllerText = text;
    if (_controllerUpdateScheduled) {
      return;
    }
    _controllerUpdateScheduled = true;
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _controllerUpdateScheduled = false;
      final pendingText = _pendingControllerText;
      _pendingControllerText = null;
      if (!mounted || pendingText == null) {
        return;
      }
      if (pendingText == _lastSyncedControllerValue) {
        return;
      }
      _lastSyncedControllerValue = pendingText;
      onChanged(pendingText);
    });
  }

  void _syncControllerText({bool force = false}) {
    final controller = _effectiveController;
    if (controller == null) {
      return;
    }

    // If there is a pending controller update, do not overwrite the controller
    // with the state value, as the state value may be stale.
    if (_pendingControllerText != null && !force) {
      return;
    }

    final target = initialValue ?? '';
    final controllerText = controller.text;

    if (!force && controllerText == target) {
      _lastSyncedControllerValue = controllerText;
      return;
    }

    // If the controller has changed locally (user input) but the state
    // has not changed from what we last synced, ignore the state value
    // as it is likely stale.
    if (!force &&
        controllerText != _lastSyncedControllerValue &&
        target == _lastSyncedControllerValue) {
      return;
    }

    final normalizedController = controllerText.trimRight();
    final normalizedTarget = target.trimRight();
    if (normalizedController == normalizedTarget) {
      _lastSyncedControllerValue = controllerText;
      return;
    }
    _isApplyingControllerText = true;
    controller.value = controller.value.copyWith(
      text: target,
      selection: TextSelection.collapsed(offset: target.length),
      composing: TextRange.empty,
    );
    _lastSyncedControllerValue = target;
    _pendingControllerText = null;
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
    if (mounted) {
      // First sync controller -> state if controller has initial text
      if (_effectiveController != null &&
          _lastSyncedControllerValue == null &&
          _effectiveController!.text.isNotEmpty) {
        final text = _effectiveController!.text;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;
          _isApplyingControllerText = true;
          try {
            onChanged(text);
            _lastSyncedControllerValue = text;
          } finally {
            _isApplyingControllerText = false;
          }
        });
      } else {
        // Then sync state -> controller to ensure they're in sync
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) {
            _syncControllerText();
          }
        });
      }
    }
  }

  @override
  void didUpdateWidget(covariant T oldWidget) {
    super.didUpdateWidget(oldWidget);
    _maybeUpdateEffectiveController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _syncControllerText();
      }
    });
  }

  @override
  void dispose() {
    _effectiveController?.removeListener(_handleControllerChanged);
    _effectiveController = null;
    _pendingControllerText = null;
    _controllerUpdateScheduled = false;
    super.dispose();
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = widget.hintText == null
        ? widget.hintTextKey?.resolve(context, inputResolver)
        : widget.hintText!;
    return ValueListenableBuilder<bool>(
      valueListenable: AuthenticatorFormState.of(
        context,
      ).obscureTextToggleValue,
      builder: (BuildContext context, bool toggleObscureText, Widget? _) {
        final obscureText = this.obscureText && toggleObscureText;
        // Don't sync during build
        final shouldHandleChangeImmediately = _effectiveController == null;
        return TextFormField(
          style: effectiveEnabled
              ? null
              : TextStyle(color: Theme.of(context).disabledColor),
          controller: _effectiveController,
          initialValue: _effectiveController == null ? initialValue : null,
          enabled: effectiveEnabled,
          validator: widget.validatorOverride ?? validator,
          onChanged: shouldHandleChangeImmediately ? onChanged : null,
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
