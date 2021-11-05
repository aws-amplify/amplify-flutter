import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

mixin AuthenticatorDateField<FieldType,
        T extends AuthenticatorFormField<FieldType, String, T>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  static final DateFormat _formatter = DateFormat('yyyy-MM-dd');

  String _convertToDateString(DateTime dt) {
    return _formatter.format(dt);
  }

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '');
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = widget.hintText == null
        ? inputResolver.resolve(context, widget.hintTextKey!)
        : widget.hintText!;

    DateTime now = DateTime.now();
    Future<void> _pickTime() async {
      final date = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: DateTime(DateTime.now().year - 110),
        lastDate: now,
      );
      if (date != null) {
        _controller.text = _convertToDateString(date);
        onChanged.call(_controller.text);
      }
    }

    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.calendar_today),

          /// TODO localization
          tooltip: 'Select birthdate',
          onPressed: _pickTime,
        ),
        Expanded(
          child: TextFormField(
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
            controller: _controller,
          ),
        )
      ],
    );
  }
}
