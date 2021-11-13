import 'package:amplify_authenticator/src/l10n/country_resolver.dart';
import 'package:amplify_authenticator/src/mixins/authenticator_text_field.dart';
import 'package:amplify_authenticator/src/utils/country_code.dart';
import 'package:amplify_authenticator/src/widgets/authenticator_input_config.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class AuthenticatorPhoneField
    extends AuthenticatorComponent<AuthenticatorPhoneField> {
  const AuthenticatorPhoneField({Key? key, required this.onChanged})
      : super(key: key);

  final ValueChanged<String> onChanged;

  @override
  _AuthenticatorPhoneFieldState createState() =>
      _AuthenticatorPhoneFieldState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        ObjectFlagProperty<ValueChanged<String>>.has('onChanged', onChanged));
  }
}

class _AuthenticatorPhoneFieldState
    extends AuthenticatorComponentState<AuthenticatorPhoneField>
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

  ValueChanged<String> get onChanged => (phoneNumber) {
        phoneNumber = phoneNumber.ensureStartsWith(
          '+${_selectedCountry.value}',
        );
        return widget.onChanged(phoneNumber);
      };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Row(
          children: [
            Text(
              '+${_selectedCountry.value}',
              style: Theme.of(context).inputDecorationTheme.hintStyle ??
                  Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
            const Expanded(
              child: Icon(
                Icons.arrow_drop_down,
                size: 15.0,
              ),
            ),
            const SizedBox(width: 5),
          ],
        ),
        onTap: showCountryDialog,
      ),
    );
  }

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
                    padding: const EdgeInsets.all(24.0),
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
                        isDense: true,
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
                          onPressed: () => Navigator.of(context).pop(current),
                          child: Text(
                            '${_countriesResolver.resolve(context, current.key)} '
                            '(+${current.value})',
                          ),
                        );
                      },
                      itemCount: filteredCountries.length,
                    ),
                  ),
                  const SizedBox(height: 10),
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

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(IterableProperty<Country>('filteredCountries', filteredCountries));
    properties.add(
        ObjectFlagProperty<ValueChanged<String>>.has('onChanged', onChanged));
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
