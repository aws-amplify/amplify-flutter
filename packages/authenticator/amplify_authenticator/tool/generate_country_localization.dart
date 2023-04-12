// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: cascade_invocations, omit_local_variable_types

import 'dart:io';
import 'countries.dart';

const license = '''
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
''';

class GenCountry {
  final String displayName;
  final String dialCode;
  final String key;
  final String code;
  GenCountry(
      {required this.displayName,
      required this.dialCode,
      required this.key,
      required this.code});
  // add fromJson method here
  factory GenCountry.fromJson(Map<String, dynamic> json) {
    var name = json['name'] as String;
    return GenCountry(
        dialCode: (json['dial_code'] as String).replaceAll('+', ''),
        displayName: name,
        key: '${(json['code'] as String).toLowerCase()}\$',
        code: json['code'] as String);
  }
}

void main() {
  const dir = './lib/src/l10n/';
  var _countries = countries.map((e) => GenCountry.fromJson(e)).toList();
  generateResolver(dir, _countries);
  generateArb(dir, _countries);
  generateCountryList(dir, _countries);
}

void generateResolver(String dir, List<GenCountry> _countries) {
  final enumStrings = _countries
      .map((e) => '\n${e.key}')
      .toList()
      .toString()
      .replaceAll(']', '')
      .replaceAll('[', '');

  StringBuffer output = StringBuffer('''
$license
import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/l10n/resolver.dart';
import 'package:flutter/material.dart';

enum CountryResolverKey {
  selectDialCode,
  noDialCodeSearchResults,
  $enumStrings
}
''');

  output.write('''

  class CountryResolver extends Resolver<CountryResolverKey> {
  const CountryResolver();
  
  String selectDialCode(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).selectDialCode;
  }

  String noDialCodeSearchResults(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).noDialCodeSearchResults;
  }

  ''');

  for (var element in _countries) {
    output.write('''
  /// The label for ${element.displayName}.
  String ${element.code.toLowerCase()}(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).${element.code.toLowerCase()};
  }
  ''');
  }

  output.write('''
    @override
    String resolve(BuildContext context, CountryResolverKey key) {
      switch (key) {
        case CountryResolverKey.selectDialCode:
          return selectDialCode(context);
        case CountryResolverKey.noDialCodeSearchResults:
          return noDialCodeSearchResults(context);
    ''');

  for (var element in _countries) {
    output.write('''
    case CountryResolverKey.${element.key}:
      return ${element.code.toLowerCase()}(context);
    ''');
  }

  output.write('''
      }
    }
  }
    ''');

  File('$dir/country_resolver.dart').writeAsString(output.toString());
}

void generateArb(String dir, List<GenCountry> _countries) {
  StringBuffer arb = StringBuffer('''{
    "@@locale": "en",
    "@@context": "amplify_authenticator:countries",
    "selectDialCode": "Select your country dial code",
    "@selectDialCode": {
        "description": "Title of select dial code modal"
    },
    "noDialCodeSearchResults": "No search results match your criteria",
    "@noDialCodeSearchResults": {
        "description": "Text displayed when dial code lookup has no search results"
    },
''');

  for (var element in _countries) {
    var comma = _countries.indexOf(element) != _countries.length - 1 ? ',' : '';
    arb.write('''
"${element.code.toLowerCase()}": "${element.displayName}",
    "@${element.code.toLowerCase()}": {
        "description": "Display name for ${element.displayName}"
    }$comma
    ''');
  }

  arb.write('''
  }
  ''');
  File('$dir/src/countries/countries_en.arb').writeAsString(arb.toString());
}

void generateCountryList(String dir, List<GenCountry> _countries) {
  StringBuffer list = StringBuffer('''
$license

import 'package:amplify_authenticator/src/l10n/country_resolver.dart';

class Country {
  const Country(this.countryCode, this.value, this.key);
  
  final String countryCode;
  final String value;
  final CountryResolverKey key;
}

/// List of country information
const countryCodes = [
''');

  _countries.insert(
      0,
      _countries
          .removeAt(_countries.indexWhere((element) => element.code == 'US')));

  for (var element in _countries) {
    var comma = _countries.indexOf(element) != _countries.length - 1 ? ',' : '';
    list.write('''
  Country('${element.code}', '${element.dialCode}', CountryResolverKey.${element.key})$comma
  ''');
  }

  list.write('''
];
  ''');

  File('$dir/../utils/country_code.dart').writeAsString(list.toString());
}
