import 'package:amplify_authenticator/src/l10n/country_resolver.dart';
import 'package:amplify_authenticator/src/mixins/authenticator_text_field.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/utils/country_code.dart';
import 'package:amplify_authenticator/src/widgets/authenticator_input_config.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

mixin AuthenticatorPhoneField<FieldType,
        T extends AuthenticatorFormField<FieldType, String, T>>
    on AuthenticatorTextField<FieldType, T>
    implements SelectableConfig<CountryResolverKey, Country> {
  late final CountryResolver _countriesResolver = stringResolver.countries;

  @override
  Country get selectionValue => _selectedCountry;
  late Country _selectedCountry = selections.first.value;

  String _searchVal = '';

  @override
  late final List<InputSelection<CountryResolverKey, Country>> selections =
      countryCodes
          .map((Country country) => InputSelection(
                label: country.key,
                value: country,
              ))
          .toList();

  List<Country> get filteredCountries => countryCodes
      .where(
        (country) => _countriesResolver
            .resolve(context, country.key)
            .toLowerCase()
            .contains(_searchVal.toLowerCase()),
      )
      .toList();

  @override
  ValueChanged<String> get onChanged => (phoneNumber) {
        var selectedCountry = _selectedCountry;
        phoneNumber = phoneNumber.ensureStartsWith('+${selectedCountry.value}');
        return super.onChanged(phoneNumber);
      };

  @override
  Widget? get prefix => Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: InkWell(
          child: Text(
            '+${_selectedCountry.value}',
            style: Theme.of(context).inputDecorationTheme.hintStyle ??
                Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
          onTap: showCountryDialog,
        ),
      );

  Future<void> showCountryDialog() async {
    // Reset search
    _searchVal = '';

    final selectedCountry = await showDialog<Country>(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                    child: Text(
                      _countriesResolver.resolve(
                        context,
                        CountryResolverKey.selectDialCode,
                      ),
                      style: DialogTheme.of(context).titleTextStyle ??
                          Theme.of(context).textTheme.headline6!,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.search),
                      ),
                      onChanged: (String searchVal) {
                        setState(() {
                          _searchVal = searchVal;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        Country current = filteredCountries[index];
                        return SimpleDialogOption(
                          onPressed: () {
                            Navigator.of(context).pop(current);
                          },
                          child: Text(
                            '${_countriesResolver.resolve(context, current.key)} '
                            '(+${current.value})',
                          ),
                        );
                      },
                      itemCount: filteredCountries.length,
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );

    if (selectedCountry != null) {
      setState(() {
        _selectedCountry = selectedCountry;
      });
    }
  }
}

extension StringPrefix on String {
  String ensureStartsWith(String value) {
    if (!startsWith(value)) {
      return '$value$this';
    }
    return this;
  }
}
