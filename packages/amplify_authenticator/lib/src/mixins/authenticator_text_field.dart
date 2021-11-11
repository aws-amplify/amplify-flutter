import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/widgets/form.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';

mixin AuthenticatorTextField<FieldType,
        T extends AuthenticatorFormField<FieldType, String, T>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = widget.hintText == null
        ? inputResolver.resolve(context, widget.hintTextKey!)
        : widget.hintText!;
    return ValueListenableBuilder<bool>(
      valueListenable: context
          .findAncestorStateOfType<AuthenticatorFormState>()!
          .obscureTextToggleValue,
      builder: (BuildContext context, bool toggleObscureText, Widget? _) {
        var obscureText = this.obscureText && toggleObscureText;
        return TextFormField(
          style: enabled
              ? null
              : const TextStyle(color: AmplifyColors.fontDisabled),
          initialValue: initialValue,
          enabled: enabled,
          validator: widget.validatorOverride ?? validator,
          onChanged: onChanged,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            errorMaxLines: errorMaxLines,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
              ),
            ),
            hintText: hintText,
            border: const OutlineInputBorder(),
            isDense: true,
          ),
          keyboardType: keyboardType,
          obscureText: obscureText,
        );
      },
    );
  }
}
