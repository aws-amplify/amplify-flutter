// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/l10n/country_resolver.dart';
import 'package:amplify_authenticator/src/utils/country_code.dart';
import 'package:amplify_authenticator/src/widgets/authenticator_input_config.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';

mixin AuthenticatorPhoneFieldMixin<FieldType extends Enum,
        T extends AuthenticatorFormField<FieldType, String>>
    on AuthenticatorFormFieldState<FieldType, String, T>
    implements SelectableConfig<CountryResolverKey, Country> {
  late final CountryResolver _countriesResolver = stringResolver.countries;

  @override
  Country get selectionValue => state.country;

  String _searchVal = '';

  @override
  late final List<InputSelection<CountryResolverKey, Country>> selections =
      countryCodes
          .map(
            (Country country) => InputSelection(
              label: country.key,
              value: country,
            ),
          )
          .toList();

  List<Country> get filteredCountries => countryCodes
      .where(
        (country) => _countriesResolver
            .resolve(context, country.key)
            .toLowerCase()
            .contains(_searchVal.toLowerCase()),
      )
      .toList();

  String? formatPhoneNumber(String? phoneNumber) {
    return phoneNumber?.ensureStartsWith('+${state.country.value}');
  }

  String displayPhoneNumber(String phoneNumber) {
    final prefix = '+${state.country.value}';
    if (phoneNumber.startsWith(prefix)) {
      phoneNumber = phoneNumber.substring(prefix.length);
    }
    return phoneNumber;
  }

  String get dialCode {
    return state.country.value;
  }

  @override
  Widget get prefix => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: InkWell(
          key: keySelectCountryCode,
          onTap: showCountryDialog,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '+${state.country.value}',
                style: Theme.of(context).inputDecorationTheme.hintStyle ??
                    Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const Flexible(
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 15,
                ),
              ),
              const SizedBox(width: 5),
            ],
          ),
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
              key: keyCountryDialog,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Text(
                        _countriesResolver.resolve(
                          context,
                          CountryResolverKey.selectDialCode,
                        ),
                        style: DialogTheme.of(context).titleTextStyle ??
                            Theme.of(context).textTheme.titleLarge!,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        key: keyCountrySearchField,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          isDense: true,
                        ),
                        onChanged: (String searchVal) {
                          setState(() {
                            _searchVal = searchVal;
                          });
                        },
                        autofillHints: const [
                          AutofillHints.countryName,
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          final current = filteredCountries[index];
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
              ),
            );
          },
        );
      },
    );

    if (selectedCountry != null) {
      state.country = selectedCountry;
    }
  }
}

extension _StringPrefix on String {
  String ensureStartsWith(String value) {
    if (!startsWith(value)) {
      return '$value$this';
    }
    return this;
  }
}
