/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_authenticator/src/enums/auth_screen.dart';
import 'package:flutter/material.dart';

import 'authenticator_localizations.dart';
import 'resolver.dart';

enum CountryResolverKey {
  selectDialCode,
  noDialCodeSearchResults,
  unitedStates,
  unitedKingdom,
  algeria,
  andorra,
  angola,
  anquilla,
  antiguaAndBarbuda,
  argentina,
  armenia,
  aruba,
  australia,
  austria,
  azerbaijan,
  bahamas,
  bahrain,
  bangladesh,
  barbados,
  belarus,
  belgium,
  belize,
  benin,
  bermuda,
  bhutan,
  bolivia,
  bosniaHerzegovina,
  botswana,
  brazil,
  brunei,
  bulgaria,
  burkinaFaso,
  burundi,
  cambodia,
  cameroon,
  canada,
  capeVerdeIslands,
  caymanIslands,
  centralAfricanRepublic,
  chile,
  china,
  colombia,
  comoros,
  congo,
  cookIslands
}

/// The resolver class for country data
class CountryResolver extends Resolver<CountryResolverKey> {
  const CountryResolver();

  String selectDialCode(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).selectDialCode;
  }

  String noDialCodeSearchResults(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .noDialCodeSearchResults;
  }

  String unitedStates(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).unitedStates;
  }

  String unitedKingdom(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).unitedKingdom;
  }

  String algeria(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).algeria;
  }

  /// The display value for Andorra.
  String andorra(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).andorra;
  }

  /// The display value for Angola.
  String angola(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).angola;
  }

  /// The display value for Anquilla.
  String anquilla(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).anquilla;
  }

  /// The display value for Antigua And Barbuda.
  String antiguaAndBarbuda(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).antiguaAndBarbuda;
  }

  /// The display value for Argentina.
  String argentina(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).argentina;
  }

  /// The display value for Armenia.
  String armenia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).armenia;
  }

  /// The display value for Aruba.
  String aruba(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).aruba;
  }

  /// The display value for Australia.
  String australia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).australia;
  }

  /// The display value for Austria.
  String austria(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).austria;
  }

  /// The display value for Azerbaijan.
  String azerbaijan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).azerbaijan;
  }

  /// The display value for Bahamas.
  String bahamas(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bahamas;
  }

  /// The display value for Bahrain.
  String bahrain(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bahrain;
  }

  /// The display value for Bangladesh.
  String bangladesh(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bangladesh;
  }

  /// The display value for Barbados.
  String barbados(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).barbados;
  }

  /// The display value for Belarus.
  String belarus(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).belarus;
  }

  /// The display value for Belgium.
  String belgium(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).belgium;
  }

  /// The display value for Belize.
  String belize(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).belize;
  }

  /// The display value for Benin.
  String benin(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).benin;
  }

  /// The display value for Bermuda.
  String bermuda(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bermuda;
  }

  /// The display value for Bhutan.
  String bhutan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bhutan;
  }

  /// The display value for Bolivia.
  String bolivia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bolivia;
  }

  /// The display value for Bosnia Herzegovina.
  String bosniaHerzegovina(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bosniaHerzegovina;
  }

  /// The display value for Botswana.
  String botswana(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).botswana;
  }

  /// The display value for Brazil.
  String brazil(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).brazil;
  }

  /// The display value for Brunei.
  String brunei(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).brunei;
  }

  /// The display value for Bulgaria.
  String bulgaria(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bulgaria;
  }

  /// The display value for Burkina Faso.
  String burkinaFaso(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).burkinaFaso;
  }

  /// The display value for Burundi.
  String burundi(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).burundi;
  }

  /// The display value for Cambodia.
  String cambodia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cambodia;
  }

  /// The display value for Cameroon.
  String cameroon(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cameroon;
  }

  /// The display value for Canada.
  String canada(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).canada;
  }

  /// The display value for Cape Verde Islands.
  String capeVerdeIslands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).capeVerdeIslands;
  }

  /// The display value for Cayman Islands.
  String caymanIslands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).caymanIslands;
  }

  /// The display value for Central African Republic.
  String centralAfricanRepublic(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .centralAfricanRepublic;
  }

  /// The display value for Chile.
  String chile(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).chile;
  }

  /// The display value for China.
  String china(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).china;
  }

  /// The display value for Colombia.
  String colombia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).colombia;
  }

  /// The display value for Comoros.
  String comoros(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).comoros;
  }

  /// The display value for Congo.
  String congo(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).congo;
  }

  /// The display value for Cook Islands.
  String cookIslands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cookIslands;
  }

  @override
  String resolve(BuildContext context, CountryResolverKey key) {
    switch (key) {
      case CountryResolverKey.selectDialCode:
        return selectDialCode(context);
      case CountryResolverKey.noDialCodeSearchResults:
        return noDialCodeSearchResults(context);
      case CountryResolverKey.unitedStates:
        return unitedStates(context);
      case CountryResolverKey.unitedKingdom:
        return unitedKingdom(context);
      case CountryResolverKey.algeria:
        return algeria(context);
      case CountryResolverKey.andorra:
        return andorra(context);
      case CountryResolverKey.angola:
        return angola(context);
      case CountryResolverKey.anquilla:
        return anquilla(context);
      case CountryResolverKey.antiguaAndBarbuda:
        return antiguaAndBarbuda(context);
      case CountryResolverKey.argentina:
        return argentina(context);
      case CountryResolverKey.armenia:
        return armenia(context);
      case CountryResolverKey.aruba:
        return aruba(context);
      case CountryResolverKey.australia:
        return australia(context);
      case CountryResolverKey.austria:
        return austria(context);
      case CountryResolverKey.azerbaijan:
        return azerbaijan(context);
      case CountryResolverKey.bahamas:
        return bahamas(context);
      case CountryResolverKey.bahrain:
        return bahrain(context);
      case CountryResolverKey.bangladesh:
        return bangladesh(context);
      case CountryResolverKey.barbados:
        return barbados(context);
      case CountryResolverKey.belarus:
        return belarus(context);
      case CountryResolverKey.belgium:
        return belgium(context);
      case CountryResolverKey.belize:
        return belize(context);
      case CountryResolverKey.benin:
        return benin(context);
      case CountryResolverKey.bermuda:
        return bermuda(context);
      case CountryResolverKey.bhutan:
        return bhutan(context);
      case CountryResolverKey.bolivia:
        return bolivia(context);
      case CountryResolverKey.bosniaHerzegovina:
        return bosniaHerzegovina(context);
      case CountryResolverKey.botswana:
        return botswana(context);
      case CountryResolverKey.brazil:
        return brazil(context);
      case CountryResolverKey.brunei:
        return brunei(context);
      case CountryResolverKey.bulgaria:
        return bulgaria(context);
      case CountryResolverKey.burkinaFaso:
        return burkinaFaso(context);
      case CountryResolverKey.burundi:
        return burundi(context);
      case CountryResolverKey.cambodia:
        return cambodia(context);
      case CountryResolverKey.cameroon:
        return cameroon(context);
      case CountryResolverKey.canada:
        return canada(context);
      case CountryResolverKey.capeVerdeIslands:
        return capeVerdeIslands(context);
      case CountryResolverKey.caymanIslands:
        return caymanIslands(context);
      case CountryResolverKey.centralAfricanRepublic:
        return centralAfricanRepublic(context);
      case CountryResolverKey.chile:
        return chile(context);
      case CountryResolverKey.china:
        return china(context);
      case CountryResolverKey.colombia:
        return colombia(context);
      case CountryResolverKey.comoros:
        return comoros(context);
      case CountryResolverKey.congo:
        return congo(context);
      case CountryResolverKey.cookIslands:
        return cookIslands(context);
    }
  }
}
