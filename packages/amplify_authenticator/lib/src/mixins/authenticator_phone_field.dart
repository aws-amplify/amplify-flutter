import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/utils/country_code.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';

import 'package:flutter/material.dart';

mixin AuthenticatorPhoneField<FieldType,
        T extends AuthenticatorFormField<FieldType, String, T>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  @override
  void initState() {
    selectionValue = '1';
    super.initState();
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    List<int> countryCodeStrings = countryCodes
        .map((Country country) {
          return int.parse(country.value);
        })
        .toSet()
        .toList();
    countryCodeStrings.sort();

    final hintText = widget.hintText == null
        ? inputResolver.resolve(context, widget.hintTextKey!)
        : widget.hintText!;

    return Row(children: [
      DropdownButton<String>(
        value: selectionValue,
        items: countryCodeStrings.map((int value) {
          return DropdownMenuItem<String>(
            value: value.toString(),
            child: Text('+$value'),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            selectionValue = newValue!;
          });
        },
      ),
      Expanded(
          child: TextFormField(
        style: enabled
            ? null
            : const TextStyle(
                color: AmplifyColors.black20,
              ),
        initialValue: initialValue,
        enabled: enabled,
        validator: validator,
        onChanged: (phoneValue) {
          onChanged!('+$selectionValue$phoneValue');
        },
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
        keyboardType: TextInputType.phone,
      ))
    ]);
    ;
  }
}
