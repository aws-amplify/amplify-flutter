// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/models/username_input.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';

mixin AuthenticatorUsernameField<
  FieldType extends Enum,
  T extends AuthenticatorFormField<FieldType, UsernameInput>
>
    on AuthenticatorFormFieldState<FieldType, UsernameInput, T> {
  TextEditingController? _controller;
  UsernameType? _controllerUsernameType;
  bool _applyingControllerText = false;
  String? _lastSyncedText;

  @protected
  TextEditingController? get textController => null;

  void _updateController() {
    final controller = textController;
    final type = selectedUsernameType;
    final shouldListen = type != UsernameType.phoneNumber;

    if (identical(controller, _controller) && type == _controllerUsernameType) {
      if (!shouldListen && _controller != null) {
        _controller!.removeListener(_handleControllerChanged);
      }
      return;
    }

    if (_controller != null) {
      _controller!.removeListener(_handleControllerChanged);
    }

    _controller = controller;
    _controllerUsernameType = type;
    _lastSyncedText = null;

    if (_controller != null && shouldListen) {
      _controller!.addListener(_handleControllerChanged);
    }
  }

  void _handleControllerChanged() {
    final controller = _controller;
    if (controller == null || _applyingControllerText) {
      return;
    }

    final text = controller.text;
    if (text == _lastSyncedText) {
      return;
    }

    _lastSyncedText = text;
    _applyingControllerText = true;
    try {
      onChanged(UsernameInput(type: selectedUsernameType, username: text));
    } finally {
      _applyingControllerText = false;
    }
  }

  void _syncControllerText({bool force = false}) {
    if (_controller == null ||
        selectedUsernameType == UsernameType.phoneNumber) {
      return;
    }

    final target = initialValue?.username ?? '';
    if (!force && _controller!.text == target) {
      _lastSyncedText = _controller!.text;
      return;
    }

    _applyingControllerText = true;
    _controller!.value = _controller!.value.copyWith(
      text: target,
      selection: TextSelection.collapsed(offset: target.length),
      composing: TextRange.empty,
    );
    _lastSyncedText = target;
    _applyingControllerText = false;
  }

  @override
  void initState() {
    super.initState();
    _updateController();
    // Skip sync in initState since 'state' isn't available yet
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateController();
    // Schedule both syncs after build completes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        // First sync controller -> state if controller has initial text
        if (_controller != null && _lastSyncedText == null) {
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
    _updateController();
    _syncControllerText(force: true);
  }

  @override
  void dispose() {
    _controller?.removeListener(_handleControllerChanged);
    _controller = null;
    super.dispose();
  }

  @override
  UsernameInput? get initialValue {
    return UsernameInput(type: selectedUsernameType, username: state.username);
  }

  @override
  ValueChanged<UsernameInput> get onChanged {
    return (input) {
      state.username = input.username;
    };
  }

  @override
  TextInputType get keyboardType {
    switch (selectedUsernameType) {
      case UsernameType.username:
        return TextInputType.text;
      case UsernameType.email:
        return TextInputType.emailAddress;
      case UsernameType.phoneNumber:
        return TextInputType.phone;
    }
  }

  InputResolverKey get hintKey {
    switch (selectedUsernameType) {
      case UsernameType.username:
        return InputResolverKey.usernameHint;
      case UsernameType.email:
        return InputResolverKey.emailHint;
      case UsernameType.phoneNumber:
        return InputResolverKey.phoneNumberHint;
    }
  }

  InputResolverKey get titleKey {
    switch (selectedUsernameType) {
      case UsernameType.username:
        return InputResolverKey.usernameTitle;
      case UsernameType.email:
        return InputResolverKey.emailTitle;
      case UsernameType.phoneNumber:
        return InputResolverKey.phoneNumberTitle;
    }
  }

  @override
  Widget get label {
    final inputResolver = stringResolver.inputs;
    final titleString = inputResolver.resolve(context, titleKey);
    final label = Text(
      isOptional ? inputResolver.optional(context, titleString) : titleString,
    );
    return label;
  }

  @override
  Widget? get surlabel {
    final inputResolver = stringResolver.inputs;
    final phoneNumberTitle = inputResolver.title(
      context,
      InputField.phoneNumber,
    );
    final emailTitle = inputResolver.title(context, InputField.email);
    final usernameTitle = inputResolver.title(context, InputField.usernameType);
    switch (usernameType) {
      case UsernameConfigType.emailOrPhoneNumber:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              usernameTitle,
              style:
                  Theme.of(context).inputDecorationTheme.labelStyle ??
                  const TextStyle(fontSize: 16),
            ),
            SizedBox(height: labelGap),
            LayoutBuilder(
              builder: (context, constraints) {
                const buttonCount = 2;
                // borders are not duplicated between buttons - 2 buttons means 3 total borders
                const borderCount = buttonCount + 1;
                const bordersPerButton = borderCount / buttonCount;
                final toggleButtonsTheme = Theme.of(context).toggleButtonsTheme;
                final buttonBorderWidth = toggleButtonsTheme.borderWidth ?? 1.0;
                // half of the total width, minus the with of the borders
                final buttonWidth =
                    (constraints.maxWidth / buttonCount) -
                    (buttonBorderWidth * bordersPerButton);
                final buttonMinHeight =
                    toggleButtonsTheme.constraints?.minHeight ?? 36.0;
                final buttonConstraints = BoxConstraints(
                  minWidth: buttonWidth,
                  maxWidth: buttonWidth,
                  minHeight: buttonMinHeight,
                );
                return ToggleButtons(
                  borderWidth: buttonBorderWidth,
                  constraints: buttonConstraints,
                  isSelected: [
                    state.usernameSelection == UsernameSelection.email,
                    state.usernameSelection == UsernameSelection.phoneNumber,
                  ],
                  onPressed: (int index) {
                    final newUsernameSelection = index == 0
                        ? UsernameSelection.email
                        : UsernameSelection.phoneNumber;
                    // Return if username selection has not changed
                    if (newUsernameSelection == state.usernameSelection) {
                      return;
                    }
                    // Determine the new username value based off the new username selection
                    // and the current user attributes
                    final newUsername =
                        newUsernameSelection == UsernameSelection.email
                        ? state.getAttribute(CognitoUserAttributeKey.email) ??
                              ''
                        : state.getAttribute(
                                CognitoUserAttributeKey.phoneNumber,
                              ) ??
                              '';
                    // Clear user attributes
                    state.authAttributes.clear();
                    // Reset country code if phone is not being used as a username
                    if (newUsernameSelection != UsernameSelection.phoneNumber) {
                      state.dialCode = state.defaultDialCode;
                    }
                    // Update the username & username selection
                    state
                      ..username = newUsername
                      ..usernameSelection = newUsernameSelection;
                  },
                  children: [
                    Text(emailTitle, key: keyEmailUsernameToggleButton),
                    Text(phoneNumberTitle, key: keyPhoneUsernameToggleButton),
                  ],
                );
              },
            ),
            SizedBox(height: marginBottom),
          ],
        );
      default:
        return null;
    }
  }

  @override
  FormFieldValidator<UsernameInput> get validator {
    switch (selectedUsernameType) {
      case UsernameType.username:
        return (input) => usernameValidator(
          context: context,
          inputResolver: stringResolver.inputs,
        )(input?.username);
      case UsernameType.email:
        return (input) => validateEmail(
          isOptional: isOptional,
          context: context,
          inputResolver: stringResolver.inputs,
        )(input?.username);
      case UsernameType.phoneNumber:
        return (input) => validatePhoneNumber(
          isOptional: isOptional,
          context: context,
          inputResolver: stringResolver.inputs,
        )(input?.username);
    }
  }

  @override
  String? get labelText {
    final inputResolver = stringResolver.inputs;
    final labelText = widget.title ?? titleKey.resolve(context, inputResolver);
    return labelText;
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = inputResolver.resolve(context, hintKey);

    void onChanged(String username) {
      return this.onChanged(
        UsernameInput(type: selectedUsernameType, username: username),
      );
    }

    String? validator(String? username) {
      final validator = widget.validatorOverride ?? this.validator;
      return validator(
        UsernameInput(type: selectedUsernameType, username: username ?? ''),
      );
    }

    if (selectedUsernameType == UsernameType.phoneNumber) {
      return AuthenticatorPhoneField<FieldType>(
        field: widget.field,
        requiredOverride: true,
        onChanged: onChanged,
        validator: validator,
        enabled: enabled,
        errorMaxLines: errorMaxLines,
        initialValue: state.username,
        autofillHints: autofillHints,
        controller: textController,
      );
    }

    _updateController();
    // Don't sync during build

    return TextFormField(
      style: enabled ? null : TextStyle(color: Theme.of(context).disabledColor),
      controller: _controller,
      initialValue: _controller == null ? initialValue?.username : null,
      enabled: enabled,
      validator: validator,
      onChanged: onChanged,
      autocorrect: false,
      decoration: InputDecoration(
        prefixIcon: prefix,
        suffixIcon: suffix,
        errorMaxLines: errorMaxLines,
        labelText: labelText,
        hintText: hintText,
      ),
      keyboardType: keyboardType,
      obscureText: false,
      onFieldSubmitted: onFieldSubmitted,
      autofillHints: autofillHints,
    );
  }
}

mixin UsernameAttributes<T extends AuthenticatorForm>
    on AuthenticatorComponentState<T> {
  late final Set<CognitoUserAttributeKey> usernameAttributes = () {
    final authConfig = config.amplifyOutputs?.auth;
    return <CognitoUserAttributeKey>{...?authConfig?.usernameAttributes};
  }();

  UsernameConfigType get usernameType {
    if (usernameAttributes.isEmpty) {
      return UsernameConfigType.username;
    }
    if (usernameAttributes.length >= 2) {
      return UsernameConfigType.emailOrPhoneNumber;
    }
    final usernameAttribute = usernameAttributes.single;
    if (usernameAttribute == CognitoUserAttributeKey.email) {
      return UsernameConfigType.email;
    }
    assert(
      usernameAttribute == CognitoUserAttributeKey.phoneNumber,
      'Unknown username attribute: $usernameAttribute',
    );
    return UsernameConfigType.phoneNumber;
  }

  UsernameType get selectedUsernameType {
    switch (usernameType) {
      case UsernameConfigType.username:
        return UsernameType.username;
      case UsernameConfigType.email:
        return UsernameType.email;
      case UsernameConfigType.phoneNumber:
        return UsernameType.phoneNumber;
      case UsernameConfigType.emailOrPhoneNumber:
        if (state.usernameSelection == UsernameSelection.email) {
          return UsernameType.email;
        }
        return UsernameType.phoneNumber;
    }
  }
}
