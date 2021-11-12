import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/l10n/country_resolver.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/utils/country_code.dart';
import 'package:amplify_authenticator/src/widgets/authenticator_input_config.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';

import 'package:flutter/material.dart';

mixin AuthenticatorPhoneField<FieldType,
        T extends AuthenticatorFormField<FieldType, String, T>>
    on AuthenticatorFormFieldState<FieldType, String, T>
    implements SelectableConfig<String> {
  String _phoneText = '';

  void _setPhoneNumber() {
    onChanged('+$selectionValue$_phoneText');
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;

    final hintText = widget.hintText == null
        ? inputResolver.resolve(context, widget.hintTextKey!)
        : widget.hintText!;

    final countryResolver = stringResolver.countries;

    Future<void> showCountryDialog() async {
      await showDialog<Country>(
          context: context,
          builder: (context) {
            return SimpleDialog(
              title: Text(countryResolver.resolve(
                  context, CountryResolverKey.selectDialCode)),
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      Country current = countryCodes[index];
                      return SimpleDialogOption(
                          onPressed: () {
                            setState(() {
                              selectionValue = current.value;
                            });
                            _setPhoneNumber();
                            Navigator.pop(context);
                          },
                          child: Text(
                              '${countryResolver.resolve(context, current.key)} (+${current.value})'));
                    },
                    itemCount: countryCodes.length,
                  ),
                )
              ],
            );
          });
    }

    return TextFormField(
      style: enabled
          ? null
          : TextStyle(
              color: AmplifyTheme.of(context).fontDisabled,
            ),
      initialValue: initialValue,
      enabled: enabled,
      validator: widget.validatorOverride ?? validator,
      onChanged: (String newVal) {
        setState(() {
          _phoneText = newVal;
        });
        _setPhoneNumber();
      },
      decoration: InputDecoration(
        prefix: SizedBox(
            width: 40,
            child: InkWell(
                child: Text(
                  '+$selectionValue',
                  style: TextStyle(
                    color: AmplifyTheme.of(context).fontDisabled,
                  ),
                ),
                onTap: showCountryDialog)),
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
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}
