import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin AuthenticatorDateField<FieldType,
        T extends AuthenticatorFormField<FieldType, String, T>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  String _convertToDateString(DateTime dt) {
    return "${dt.year.toString()}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')}";
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = widget.hintText == null
        ? inputResolver.resolve(context, widget.hintTextKey!)
        : widget.hintText!;

    final TextEditingController _controller =
        TextEditingController(text: initialValue);
    void _pickTime() {
      showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(DateTime.now().year - 110),
              lastDate: DateTime.now())
          .then((d) {
        _controller.value = TextEditingValue(text: _convertToDateString(d!));
        onChanged!(_controller.text);
      });
    }

    return Row(children: [
      IconButton(
        icon: const Icon(Icons.calendar_today),

        /// TODO localization
        tooltip: 'Select birthdate',
        onPressed: _pickTime,
      ),
      Expanded(
          child: TextFormField(
        inputFormatters: [LengthLimitingTextInputFormatter(10)],
        style: enabled
            ? null
            : const TextStyle(
                color: AmplifyColors.black20,
              ),
        enabled: enabled,
        readOnly: true,
        validator: validator,
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
        ),
        keyboardType: TextInputType.datetime,
        obscureText: obscureText,
        controller: _controller,
      ))
    ]);
  }
}
