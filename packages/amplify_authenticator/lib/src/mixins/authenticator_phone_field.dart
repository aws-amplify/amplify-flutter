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
  String _searchVal = '';

  void _setPhoneNumber() {
    onChanged('+$selectionValue$_phoneText');
  }

  final ValueNotifier<List<Country>> _countries =
      ValueNotifier<List<Country>>([]);

  @override
  void initState() {
    super.initState();
    _countries.value = countryCodes;
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
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                      decoration:
                          const InputDecoration(suffixIcon: Icon(Icons.search)),
                      onChanged: (String newValue) {
                        /// Make sure we search on full list when search string gets shorter
                        if (_searchVal.length > newValue.length) {
                          setState(() {
                            _countries.value = countryCodes;
                          });
                        }
                        setState(() {
                          /// Filter the list of countries based on localized display values
                          _searchVal = newValue;

                          /// If search string is empty, display full list; otherwise, filter
                          newValue.isEmpty
                              ? _countries.value = countryCodes
                              : _countries.value = _countries.value
                                  .where((c) => countryResolver
                                      .resolve(context, c.key)
                                      .toLowerCase()
                                      .contains(newValue.toLowerCase()))
                                  .toList();
                        });
                      },
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ValueListenableBuilder<List<Country>>(
                      valueListenable: _countries,
                      builder: (context, _countries, Widget? _) {
                        return _countries.isNotEmpty
                            ? ListView.builder(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  Country current = _countries[index];
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
                                itemCount: _countries.length,
                              )
                            : Container(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                child: Text(countryResolver.resolve(
                                    context,
                                    CountryResolverKey
                                        .noDialCodeSearchResults)));
                      }),
                )
              ],
            );
          });

      /// Reset list after dialog closes, in case user reopens
      setState(() {
        _countries.value = countryCodes;
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
            onTap: showCountryDialog,
          ),
        ),
        suffixIcon: suffixIcon,
        errorMaxLines: errorMaxLines,
        hintText: hintText,
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}
