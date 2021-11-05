import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/utils/country_code.dart';
import 'package:amplify_authenticator/src/widgets/authenticator_input_config.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:country_codes/country_codes.dart';

import 'package:flutter/material.dart';

mixin AuthenticatorPhoneField<FieldType,
        T extends AuthenticatorFormField<FieldType, String, T>>
    on AuthenticatorFormFieldState<FieldType, String, T>
    implements SelectableConfig<String> {
  late List<String?> countryCodes;

  final focusNode = FocusNode();
  Color borderColor = AmplifyColors.borderSecondary;

  @override
  void initState() {
    super.initState();
    selectionValue = '1';
    initCountryCodes();
    countryCodes = CountryCodes.dialNumbers();
    focusNode.addListener(() {
      setState(() {
        borderColor = focusNode.hasFocus
            ? AmplifyColors.blue
            : AmplifyColors.borderSecondary;
      });
    });
  }

  Future<bool> initCountryCodes() async {
    return CountryCodes.init(Localizations.localeOf(context));
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;

    final hintText = widget.hintText == null
        ? inputResolver.resolve(context, widget.hintTextKey!)
        : widget.hintText!;

    return Focus(
        focusNode: focusNode,
        child: Listener(
            onPointerDown: (_) {
              FocusScope.of(context).requestFocus(focusNode);
            },
            child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    border: Border.all(color: borderColor)),
                child: Row(children: [
                  DropdownButton<String>(
                    value: selectionValue,
                    underline: const SizedBox(),
                    items: countryCodes.map((String? value) {
                      return DropdownMenuItem<String>(
                        value: value.toString(),
                        child: Text('+$value', style: AmplifyTextTheme.body),
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
                      onChanged.call('+$selectionValue$phoneValue');
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: suffixIcon,
                        errorMaxLines: errorMaxLines,
                        hintText: hintText),
                    keyboardType: TextInputType.phone,
                  ))
                ]))));
  }
}
