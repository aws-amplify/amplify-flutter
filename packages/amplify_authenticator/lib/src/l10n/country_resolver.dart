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

import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/l10n/resolver.dart';
import 'package:flutter/material.dart';

enum CountryResolverKey {
  selectDialCode,
  noDialCodeSearchResults,
  afghanistan,
  alandIslands,
  albania,
  algeria,
  americanSamoa,
  andorra,
  angola,
  anguilla,
  antarctica,
  antiguaandBarbuda,
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
  boliviaPlurinationalStateof,
  bosniaandHerzegovina,
  botswana,
  brazil,
  britishIndianOceanTerritory,
  bruneiDarussalam,
  bulgaria,
  burkinaFaso,
  burundi,
  cambodia,
  cameroon,
  canada,
  capeVerde,
  caymanIslands,
  centralAfricanRepublic,
  chad,
  chile,
  china,
  christmasIsland,
  cocosKeelingIslands,
  colombia,
  comoros,
  congo,
  congoTheDemocraticRepublicoftheCongo,
  cookIslands,
  costaRica,
  cotedIvoire,
  croatia,
  cuba,
  cyprus,
  czechRepublic,
  denmark,
  djibouti,
  dominica,
  dominicanRepublic,
  ecuador,
  egypt,
  elSalvador,
  equatorialGuinea,
  eritrea,
  estonia,
  ethiopia,
  falklandIslandsMalvinas,
  faroeIslands,
  fiji,
  finland,
  france,
  frenchGuiana,
  frenchPolynesia,
  gabon,
  gambia,
  georgia,
  germany,
  ghana,
  gibraltar,
  greece,
  greenland,
  grenada,
  guadeloupe,
  guam,
  guatemala,
  guernsey,
  guinea,
  guineaBissau,
  guyana,
  haiti,
  holySeeVaticanCityState,
  honduras,
  hongKong,
  hungary,
  iceland,
  india,
  indonesia,
  iranIslamicRepublicofPersianGulf,
  iraq,
  ireland,
  isleofMan,
  israel,
  italy,
  jamaica,
  japan,
  jersey,
  jordan,
  kazakhstan,
  kenya,
  kiribati,
  koreaDemocraticPeoplesRepublicofKorea,
  koreaRepublicofSouthKorea,
  kuwait,
  kyrgyzstan,
  laos,
  latvia,
  lebanon,
  lesotho,
  liberia,
  libyanArabJamahiriya,
  liechtenstein,
  lithuania,
  luxembourg,
  macao,
  macedonia,
  madagascar,
  malawi,
  malaysia,
  maldives,
  mali,
  malta,
  marshallIslands,
  martinique,
  mauritania,
  mauritius,
  mayotte,
  mexico,
  micronesiaFederatedStatesofMicronesia,
  moldova,
  monaco,
  mongolia,
  montenegro,
  montserrat,
  morocco,
  mozambique,
  myanmar,
  namibia,
  nauru,
  nepal,
  netherlands,
  netherlandsAntilles,
  newCaledonia,
  newZealand,
  nicaragua,
  niger,
  nigeria,
  niue,
  norfolkIsland,
  northernMarianaIslands,
  norway,
  oman,
  pakistan,
  palau,
  palestinianTerritoryOccupied,
  panama,
  papuaNewGuinea,
  paraguay,
  peru,
  philippines,
  pitcairn,
  poland,
  portugal,
  puertoRico,
  qatar,
  romania,
  russia,
  rwanda,
  reunion,
  saintBarthelemy,
  saintHelenaAscensionandTristanDaCunha,
  saintKittsandNevis,
  saintLucia,
  saintMartin,
  saintPierreandMiquelon,
  saintVincentandtheGrenadines,
  samoa,
  sanMarino,
  saoTomeandPrincipe,
  saudiArabia,
  senegal,
  serbia,
  seychelles,
  sierraLeone,
  singapore,
  slovakia,
  slovenia,
  solomonIslands,
  somalia,
  southAfrica,
  southSudan,
  southGeorgiaandtheSouthSandwichIslands,
  spain,
  sriLanka,
  sudan,
  suriname,
  svalbardandJanMayen,
  swaziland,
  sweden,
  switzerland,
  syrianArabRepublic,
  taiwan,
  tajikistan,
  tanzaniaUnitedRepublicofTanzania,
  thailand,
  timorLeste,
  togo,
  tokelau,
  tonga,
  trinidadandTobago,
  tunisia,
  turkey,
  turkmenistan,
  turksandCaicosIslands,
  tuvalu,
  uganda,
  ukraine,
  unitedArabEmirates,
  unitedKingdom,
  unitedStates,
  uruguay,
  uzbekistan,
  vanuatu,
  venezuelaBolivarianRepublicofVenezuela,
  vietnam,
  virginIslandsBritish,
  virginIslandsUS,
  wallisandFutuna,
  yemen,
  zambia,
  zimbabwe
}

class CountryResolver extends Resolver<CountryResolverKey> {
  const CountryResolver();

  String selectDialCode(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).selectDialCode;
  }

  String noDialCodeSearchResults(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .noDialCodeSearchResults;
  }

  String afghanistan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).afghanistan;
  }

  String alandIslands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).alandIslands;
  }

  String albania(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).albania;
  }

  String algeria(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).algeria;
  }

  String americanSamoa(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).americanSamoa;
  }

  String andorra(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).andorra;
  }

  String angola(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).angola;
  }

  String anguilla(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).anguilla;
  }

  String antarctica(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).antarctica;
  }

  String antiguaandBarbuda(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).antiguaandBarbuda;
  }

  String argentina(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).argentina;
  }

  String armenia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).armenia;
  }

  String aruba(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).aruba;
  }

  String australia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).australia;
  }

  String austria(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).austria;
  }

  String azerbaijan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).azerbaijan;
  }

  String bahamas(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bahamas;
  }

  String bahrain(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bahrain;
  }

  String bangladesh(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bangladesh;
  }

  String barbados(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).barbados;
  }

  String belarus(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).belarus;
  }

  String belgium(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).belgium;
  }

  String belize(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).belize;
  }

  String benin(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).benin;
  }

  String bermuda(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bermuda;
  }

  String bhutan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bhutan;
  }

  String boliviaPlurinationalStateof(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .boliviaPlurinationalStateof;
  }

  String bosniaandHerzegovina(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bosniaandHerzegovina;
  }

  String botswana(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).botswana;
  }

  String brazil(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).brazil;
  }

  String britishIndianOceanTerritory(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .britishIndianOceanTerritory;
  }

  String bruneiDarussalam(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bruneiDarussalam;
  }

  String bulgaria(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bulgaria;
  }

  String burkinaFaso(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).burkinaFaso;
  }

  String burundi(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).burundi;
  }

  String cambodia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cambodia;
  }

  String cameroon(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cameroon;
  }

  String canada(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).canada;
  }

  String capeVerde(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).capeVerde;
  }

  String caymanIslands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).caymanIslands;
  }

  String centralAfricanRepublic(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .centralAfricanRepublic;
  }

  String chad(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).chad;
  }

  String chile(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).chile;
  }

  String china(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).china;
  }

  String christmasIsland(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).christmasIsland;
  }

  String cocosKeelingIslands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cocosKeelingIslands;
  }

  String colombia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).colombia;
  }

  String comoros(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).comoros;
  }

  String congo(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).congo;
  }

  String congoTheDemocraticRepublicoftheCongo(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .congoTheDemocraticRepublicoftheCongo;
  }

  String cookIslands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cookIslands;
  }

  String costaRica(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).costaRica;
  }

  String cotedIvoire(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cotedIvoire;
  }

  String croatia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).croatia;
  }

  String cuba(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cuba;
  }

  String cyprus(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cyprus;
  }

  String czechRepublic(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).czechRepublic;
  }

  String denmark(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).denmark;
  }

  String djibouti(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).djibouti;
  }

  String dominica(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).dominica;
  }

  String dominicanRepublic(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).dominicanRepublic;
  }

  String ecuador(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ecuador;
  }

  String egypt(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).egypt;
  }

  String elSalvador(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).elSalvador;
  }

  String equatorialGuinea(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).equatorialGuinea;
  }

  String eritrea(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).eritrea;
  }

  String estonia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).estonia;
  }

  String ethiopia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ethiopia;
  }

  String falklandIslandsMalvinas(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .falklandIslandsMalvinas;
  }

  String faroeIslands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).faroeIslands;
  }

  String fiji(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).fiji;
  }

  String finland(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).finland;
  }

  String france(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).france;
  }

  String frenchGuiana(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).frenchGuiana;
  }

  String frenchPolynesia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).frenchPolynesia;
  }

  String gabon(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gabon;
  }

  String gambia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gambia;
  }

  String georgia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).georgia;
  }

  String germany(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).germany;
  }

  String ghana(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ghana;
  }

  String gibraltar(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gibraltar;
  }

  String greece(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).greece;
  }

  String greenland(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).greenland;
  }

  String grenada(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).grenada;
  }

  String guadeloupe(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).guadeloupe;
  }

  String guam(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).guam;
  }

  String guatemala(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).guatemala;
  }

  String guernsey(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).guernsey;
  }

  String guinea(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).guinea;
  }

  String guineaBissau(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).guineaBissau;
  }

  String guyana(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).guyana;
  }

  String haiti(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).haiti;
  }

  String holySeeVaticanCityState(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .holySeeVaticanCityState;
  }

  String honduras(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).honduras;
  }

  String hongKong(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).hongKong;
  }

  String hungary(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).hungary;
  }

  String iceland(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).iceland;
  }

  String india(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).india;
  }

  String indonesia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).indonesia;
  }

  String iranIslamicRepublicofPersianGulf(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .iranIslamicRepublicofPersianGulf;
  }

  String iraq(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).iraq;
  }

  String ireland(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ireland;
  }

  String isleofMan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).isleofMan;
  }

  String israel(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).israel;
  }

  String italy(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).italy;
  }

  String jamaica(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).jamaica;
  }

  String japan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).japan;
  }

  String jersey(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).jersey;
  }

  String jordan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).jordan;
  }

  String kazakhstan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kazakhstan;
  }

  String kenya(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kenya;
  }

  String kiribati(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kiribati;
  }

  String koreaDemocraticPeoplesRepublicofKorea(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .koreaDemocraticPeoplesRepublicofKorea;
  }

  String koreaRepublicofSouthKorea(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .koreaRepublicofSouthKorea;
  }

  String kuwait(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kuwait;
  }

  String kyrgyzstan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kyrgyzstan;
  }

  String laos(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).laos;
  }

  String latvia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).latvia;
  }

  String lebanon(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lebanon;
  }

  String lesotho(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lesotho;
  }

  String liberia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).liberia;
  }

  String libyanArabJamahiriya(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).libyanArabJamahiriya;
  }

  String liechtenstein(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).liechtenstein;
  }

  String lithuania(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lithuania;
  }

  String luxembourg(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).luxembourg;
  }

  String macao(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).macao;
  }

  String macedonia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).macedonia;
  }

  String madagascar(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).madagascar;
  }

  String malawi(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).malawi;
  }

  String malaysia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).malaysia;
  }

  String maldives(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).maldives;
  }

  String mali(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mali;
  }

  String malta(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).malta;
  }

  String marshallIslands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).marshallIslands;
  }

  String martinique(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).martinique;
  }

  String mauritania(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mauritania;
  }

  String mauritius(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mauritius;
  }

  String mayotte(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mayotte;
  }

  String mexico(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mexico;
  }

  String micronesiaFederatedStatesofMicronesia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .micronesiaFederatedStatesofMicronesia;
  }

  String moldova(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).moldova;
  }

  String monaco(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).monaco;
  }

  String mongolia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mongolia;
  }

  String montenegro(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).montenegro;
  }

  String montserrat(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).montserrat;
  }

  String morocco(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).morocco;
  }

  String mozambique(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mozambique;
  }

  String myanmar(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).myanmar;
  }

  String namibia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).namibia;
  }

  String nauru(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nauru;
  }

  String nepal(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nepal;
  }

  String netherlands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).netherlands;
  }

  String netherlandsAntilles(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).netherlandsAntilles;
  }

  String newCaledonia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).newCaledonia;
  }

  String newZealand(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).newZealand;
  }

  String nicaragua(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nicaragua;
  }

  String niger(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).niger;
  }

  String nigeria(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nigeria;
  }

  String niue(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).niue;
  }

  String norfolkIsland(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).norfolkIsland;
  }

  String northernMarianaIslands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .northernMarianaIslands;
  }

  String norway(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).norway;
  }

  String oman(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).oman;
  }

  String pakistan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pakistan;
  }

  String palau(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).palau;
  }

  String palestinianTerritoryOccupied(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .palestinianTerritoryOccupied;
  }

  String panama(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).panama;
  }

  String papuaNewGuinea(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).papuaNewGuinea;
  }

  String paraguay(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).paraguay;
  }

  String peru(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).peru;
  }

  String philippines(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).philippines;
  }

  String pitcairn(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pitcairn;
  }

  String poland(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).poland;
  }

  String portugal(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).portugal;
  }

  String puertoRico(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).puertoRico;
  }

  String qatar(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).qatar;
  }

  String romania(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).romania;
  }

  String russia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).russia;
  }

  String rwanda(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).rwanda;
  }

  String reunion(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).reunion;
  }

  String saintBarthelemy(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).saintBarthelemy;
  }

  String saintHelenaAscensionandTristanDaCunha(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .saintHelenaAscensionandTristanDaCunha;
  }

  String saintKittsandNevis(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).saintKittsandNevis;
  }

  String saintLucia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).saintLucia;
  }

  String saintMartin(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).saintMartin;
  }

  String saintPierreandMiquelon(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .saintPierreandMiquelon;
  }

  String saintVincentandtheGrenadines(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .saintVincentandtheGrenadines;
  }

  String samoa(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).samoa;
  }

  String sanMarino(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sanMarino;
  }

  String saoTomeandPrincipe(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).saoTomeandPrincipe;
  }

  String saudiArabia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).saudiArabia;
  }

  String senegal(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).senegal;
  }

  String serbia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).serbia;
  }

  String seychelles(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).seychelles;
  }

  String sierraLeone(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sierraLeone;
  }

  String singapore(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).singapore;
  }

  String slovakia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).slovakia;
  }

  String slovenia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).slovenia;
  }

  String solomonIslands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).solomonIslands;
  }

  String somalia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).somalia;
  }

  String southAfrica(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).southAfrica;
  }

  String southSudan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).southSudan;
  }

  String southGeorgiaandtheSouthSandwichIslands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .southGeorgiaandtheSouthSandwichIslands;
  }

  String spain(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).spain;
  }

  String sriLanka(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sriLanka;
  }

  String sudan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sudan;
  }

  String suriname(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).suriname;
  }

  String svalbardandJanMayen(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).svalbardandJanMayen;
  }

  String swaziland(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).swaziland;
  }

  String sweden(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sweden;
  }

  String switzerland(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).switzerland;
  }

  String syrianArabRepublic(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).syrianArabRepublic;
  }

  String taiwan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).taiwan;
  }

  String tajikistan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tajikistan;
  }

  String tanzaniaUnitedRepublicofTanzania(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .tanzaniaUnitedRepublicofTanzania;
  }

  String thailand(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).thailand;
  }

  String timorLeste(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).timorLeste;
  }

  String togo(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).togo;
  }

  String tokelau(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tokelau;
  }

  String tonga(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tonga;
  }

  String trinidadandTobago(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).trinidadandTobago;
  }

  String tunisia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tunisia;
  }

  String turkey(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).turkey;
  }

  String turkmenistan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).turkmenistan;
  }

  String turksandCaicosIslands(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .turksandCaicosIslands;
  }

  String tuvalu(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tuvalu;
  }

  String uganda(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).uganda;
  }

  String ukraine(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ukraine;
  }

  String unitedArabEmirates(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).unitedArabEmirates;
  }

  String unitedKingdom(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).unitedKingdom;
  }

  String unitedStates(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).unitedStates;
  }

  String uruguay(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).uruguay;
  }

  String uzbekistan(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).uzbekistan;
  }

  String vanuatu(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).vanuatu;
  }

  String venezuelaBolivarianRepublicofVenezuela(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .venezuelaBolivarianRepublicofVenezuela;
  }

  String vietnam(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).vietnam;
  }

  String virginIslandsBritish(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).virginIslandsBritish;
  }

  String virginIslandsUS(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).virginIslandsUS;
  }

  String wallisandFutuna(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).wallisandFutuna;
  }

  String yemen(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).yemen;
  }

  String zambia(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).zambia;
  }

  String zimbabwe(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).zimbabwe;
  }

  @override
  String resolve(BuildContext context, CountryResolverKey key) {
    switch (key) {
      case CountryResolverKey.selectDialCode:
        return selectDialCode(context);
      case CountryResolverKey.noDialCodeSearchResults:
        return noDialCodeSearchResults(context);
      case CountryResolverKey.afghanistan:
        return afghanistan(context);
      case CountryResolverKey.alandIslands:
        return alandIslands(context);
      case CountryResolverKey.albania:
        return albania(context);
      case CountryResolverKey.algeria:
        return algeria(context);
      case CountryResolverKey.americanSamoa:
        return americanSamoa(context);
      case CountryResolverKey.andorra:
        return andorra(context);
      case CountryResolverKey.angola:
        return angola(context);
      case CountryResolverKey.anguilla:
        return anguilla(context);
      case CountryResolverKey.antarctica:
        return antarctica(context);
      case CountryResolverKey.antiguaandBarbuda:
        return antiguaandBarbuda(context);
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
      case CountryResolverKey.boliviaPlurinationalStateof:
        return boliviaPlurinationalStateof(context);
      case CountryResolverKey.bosniaandHerzegovina:
        return bosniaandHerzegovina(context);
      case CountryResolverKey.botswana:
        return botswana(context);
      case CountryResolverKey.brazil:
        return brazil(context);
      case CountryResolverKey.britishIndianOceanTerritory:
        return britishIndianOceanTerritory(context);
      case CountryResolverKey.bruneiDarussalam:
        return bruneiDarussalam(context);
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
      case CountryResolverKey.capeVerde:
        return capeVerde(context);
      case CountryResolverKey.caymanIslands:
        return caymanIslands(context);
      case CountryResolverKey.centralAfricanRepublic:
        return centralAfricanRepublic(context);
      case CountryResolverKey.chad:
        return chad(context);
      case CountryResolverKey.chile:
        return chile(context);
      case CountryResolverKey.china:
        return china(context);
      case CountryResolverKey.christmasIsland:
        return christmasIsland(context);
      case CountryResolverKey.cocosKeelingIslands:
        return cocosKeelingIslands(context);
      case CountryResolverKey.colombia:
        return colombia(context);
      case CountryResolverKey.comoros:
        return comoros(context);
      case CountryResolverKey.congo:
        return congo(context);
      case CountryResolverKey.congoTheDemocraticRepublicoftheCongo:
        return congoTheDemocraticRepublicoftheCongo(context);
      case CountryResolverKey.cookIslands:
        return cookIslands(context);
      case CountryResolverKey.costaRica:
        return costaRica(context);
      case CountryResolverKey.cotedIvoire:
        return cotedIvoire(context);
      case CountryResolverKey.croatia:
        return croatia(context);
      case CountryResolverKey.cuba:
        return cuba(context);
      case CountryResolverKey.cyprus:
        return cyprus(context);
      case CountryResolverKey.czechRepublic:
        return czechRepublic(context);
      case CountryResolverKey.denmark:
        return denmark(context);
      case CountryResolverKey.djibouti:
        return djibouti(context);
      case CountryResolverKey.dominica:
        return dominica(context);
      case CountryResolverKey.dominicanRepublic:
        return dominicanRepublic(context);
      case CountryResolverKey.ecuador:
        return ecuador(context);
      case CountryResolverKey.egypt:
        return egypt(context);
      case CountryResolverKey.elSalvador:
        return elSalvador(context);
      case CountryResolverKey.equatorialGuinea:
        return equatorialGuinea(context);
      case CountryResolverKey.eritrea:
        return eritrea(context);
      case CountryResolverKey.estonia:
        return estonia(context);
      case CountryResolverKey.ethiopia:
        return ethiopia(context);
      case CountryResolverKey.falklandIslandsMalvinas:
        return falklandIslandsMalvinas(context);
      case CountryResolverKey.faroeIslands:
        return faroeIslands(context);
      case CountryResolverKey.fiji:
        return fiji(context);
      case CountryResolverKey.finland:
        return finland(context);
      case CountryResolverKey.france:
        return france(context);
      case CountryResolverKey.frenchGuiana:
        return frenchGuiana(context);
      case CountryResolverKey.frenchPolynesia:
        return frenchPolynesia(context);
      case CountryResolverKey.gabon:
        return gabon(context);
      case CountryResolverKey.gambia:
        return gambia(context);
      case CountryResolverKey.georgia:
        return georgia(context);
      case CountryResolverKey.germany:
        return germany(context);
      case CountryResolverKey.ghana:
        return ghana(context);
      case CountryResolverKey.gibraltar:
        return gibraltar(context);
      case CountryResolverKey.greece:
        return greece(context);
      case CountryResolverKey.greenland:
        return greenland(context);
      case CountryResolverKey.grenada:
        return grenada(context);
      case CountryResolverKey.guadeloupe:
        return guadeloupe(context);
      case CountryResolverKey.guam:
        return guam(context);
      case CountryResolverKey.guatemala:
        return guatemala(context);
      case CountryResolverKey.guernsey:
        return guernsey(context);
      case CountryResolverKey.guinea:
        return guinea(context);
      case CountryResolverKey.guineaBissau:
        return guineaBissau(context);
      case CountryResolverKey.guyana:
        return guyana(context);
      case CountryResolverKey.haiti:
        return haiti(context);
      case CountryResolverKey.holySeeVaticanCityState:
        return holySeeVaticanCityState(context);
      case CountryResolverKey.honduras:
        return honduras(context);
      case CountryResolverKey.hongKong:
        return hongKong(context);
      case CountryResolverKey.hungary:
        return hungary(context);
      case CountryResolverKey.iceland:
        return iceland(context);
      case CountryResolverKey.india:
        return india(context);
      case CountryResolverKey.indonesia:
        return indonesia(context);
      case CountryResolverKey.iranIslamicRepublicofPersianGulf:
        return iranIslamicRepublicofPersianGulf(context);
      case CountryResolverKey.iraq:
        return iraq(context);
      case CountryResolverKey.ireland:
        return ireland(context);
      case CountryResolverKey.isleofMan:
        return isleofMan(context);
      case CountryResolverKey.israel:
        return israel(context);
      case CountryResolverKey.italy:
        return italy(context);
      case CountryResolverKey.jamaica:
        return jamaica(context);
      case CountryResolverKey.japan:
        return japan(context);
      case CountryResolverKey.jersey:
        return jersey(context);
      case CountryResolverKey.jordan:
        return jordan(context);
      case CountryResolverKey.kazakhstan:
        return kazakhstan(context);
      case CountryResolverKey.kenya:
        return kenya(context);
      case CountryResolverKey.kiribati:
        return kiribati(context);
      case CountryResolverKey.koreaDemocraticPeoplesRepublicofKorea:
        return koreaDemocraticPeoplesRepublicofKorea(context);
      case CountryResolverKey.koreaRepublicofSouthKorea:
        return koreaRepublicofSouthKorea(context);
      case CountryResolverKey.kuwait:
        return kuwait(context);
      case CountryResolverKey.kyrgyzstan:
        return kyrgyzstan(context);
      case CountryResolverKey.laos:
        return laos(context);
      case CountryResolverKey.latvia:
        return latvia(context);
      case CountryResolverKey.lebanon:
        return lebanon(context);
      case CountryResolverKey.lesotho:
        return lesotho(context);
      case CountryResolverKey.liberia:
        return liberia(context);
      case CountryResolverKey.libyanArabJamahiriya:
        return libyanArabJamahiriya(context);
      case CountryResolverKey.liechtenstein:
        return liechtenstein(context);
      case CountryResolverKey.lithuania:
        return lithuania(context);
      case CountryResolverKey.luxembourg:
        return luxembourg(context);
      case CountryResolverKey.macao:
        return macao(context);
      case CountryResolverKey.macedonia:
        return macedonia(context);
      case CountryResolverKey.madagascar:
        return madagascar(context);
      case CountryResolverKey.malawi:
        return malawi(context);
      case CountryResolverKey.malaysia:
        return malaysia(context);
      case CountryResolverKey.maldives:
        return maldives(context);
      case CountryResolverKey.mali:
        return mali(context);
      case CountryResolverKey.malta:
        return malta(context);
      case CountryResolverKey.marshallIslands:
        return marshallIslands(context);
      case CountryResolverKey.martinique:
        return martinique(context);
      case CountryResolverKey.mauritania:
        return mauritania(context);
      case CountryResolverKey.mauritius:
        return mauritius(context);
      case CountryResolverKey.mayotte:
        return mayotte(context);
      case CountryResolverKey.mexico:
        return mexico(context);
      case CountryResolverKey.micronesiaFederatedStatesofMicronesia:
        return micronesiaFederatedStatesofMicronesia(context);
      case CountryResolverKey.moldova:
        return moldova(context);
      case CountryResolverKey.monaco:
        return monaco(context);
      case CountryResolverKey.mongolia:
        return mongolia(context);
      case CountryResolverKey.montenegro:
        return montenegro(context);
      case CountryResolverKey.montserrat:
        return montserrat(context);
      case CountryResolverKey.morocco:
        return morocco(context);
      case CountryResolverKey.mozambique:
        return mozambique(context);
      case CountryResolverKey.myanmar:
        return myanmar(context);
      case CountryResolverKey.namibia:
        return namibia(context);
      case CountryResolverKey.nauru:
        return nauru(context);
      case CountryResolverKey.nepal:
        return nepal(context);
      case CountryResolverKey.netherlands:
        return netherlands(context);
      case CountryResolverKey.netherlandsAntilles:
        return netherlandsAntilles(context);
      case CountryResolverKey.newCaledonia:
        return newCaledonia(context);
      case CountryResolverKey.newZealand:
        return newZealand(context);
      case CountryResolverKey.nicaragua:
        return nicaragua(context);
      case CountryResolverKey.niger:
        return niger(context);
      case CountryResolverKey.nigeria:
        return nigeria(context);
      case CountryResolverKey.niue:
        return niue(context);
      case CountryResolverKey.norfolkIsland:
        return norfolkIsland(context);
      case CountryResolverKey.northernMarianaIslands:
        return northernMarianaIslands(context);
      case CountryResolverKey.norway:
        return norway(context);
      case CountryResolverKey.oman:
        return oman(context);
      case CountryResolverKey.pakistan:
        return pakistan(context);
      case CountryResolverKey.palau:
        return palau(context);
      case CountryResolverKey.palestinianTerritoryOccupied:
        return palestinianTerritoryOccupied(context);
      case CountryResolverKey.panama:
        return panama(context);
      case CountryResolverKey.papuaNewGuinea:
        return papuaNewGuinea(context);
      case CountryResolverKey.paraguay:
        return paraguay(context);
      case CountryResolverKey.peru:
        return peru(context);
      case CountryResolverKey.philippines:
        return philippines(context);
      case CountryResolverKey.pitcairn:
        return pitcairn(context);
      case CountryResolverKey.poland:
        return poland(context);
      case CountryResolverKey.portugal:
        return portugal(context);
      case CountryResolverKey.puertoRico:
        return puertoRico(context);
      case CountryResolverKey.qatar:
        return qatar(context);
      case CountryResolverKey.romania:
        return romania(context);
      case CountryResolverKey.russia:
        return russia(context);
      case CountryResolverKey.rwanda:
        return rwanda(context);
      case CountryResolverKey.reunion:
        return reunion(context);
      case CountryResolverKey.saintBarthelemy:
        return saintBarthelemy(context);
      case CountryResolverKey.saintHelenaAscensionandTristanDaCunha:
        return saintHelenaAscensionandTristanDaCunha(context);
      case CountryResolverKey.saintKittsandNevis:
        return saintKittsandNevis(context);
      case CountryResolverKey.saintLucia:
        return saintLucia(context);
      case CountryResolverKey.saintMartin:
        return saintMartin(context);
      case CountryResolverKey.saintPierreandMiquelon:
        return saintPierreandMiquelon(context);
      case CountryResolverKey.saintVincentandtheGrenadines:
        return saintVincentandtheGrenadines(context);
      case CountryResolverKey.samoa:
        return samoa(context);
      case CountryResolverKey.sanMarino:
        return sanMarino(context);
      case CountryResolverKey.saoTomeandPrincipe:
        return saoTomeandPrincipe(context);
      case CountryResolverKey.saudiArabia:
        return saudiArabia(context);
      case CountryResolverKey.senegal:
        return senegal(context);
      case CountryResolverKey.serbia:
        return serbia(context);
      case CountryResolverKey.seychelles:
        return seychelles(context);
      case CountryResolverKey.sierraLeone:
        return sierraLeone(context);
      case CountryResolverKey.singapore:
        return singapore(context);
      case CountryResolverKey.slovakia:
        return slovakia(context);
      case CountryResolverKey.slovenia:
        return slovenia(context);
      case CountryResolverKey.solomonIslands:
        return solomonIslands(context);
      case CountryResolverKey.somalia:
        return somalia(context);
      case CountryResolverKey.southAfrica:
        return southAfrica(context);
      case CountryResolverKey.southSudan:
        return southSudan(context);
      case CountryResolverKey.southGeorgiaandtheSouthSandwichIslands:
        return southGeorgiaandtheSouthSandwichIslands(context);
      case CountryResolverKey.spain:
        return spain(context);
      case CountryResolverKey.sriLanka:
        return sriLanka(context);
      case CountryResolverKey.sudan:
        return sudan(context);
      case CountryResolverKey.suriname:
        return suriname(context);
      case CountryResolverKey.svalbardandJanMayen:
        return svalbardandJanMayen(context);
      case CountryResolverKey.swaziland:
        return swaziland(context);
      case CountryResolverKey.sweden:
        return sweden(context);
      case CountryResolverKey.switzerland:
        return switzerland(context);
      case CountryResolverKey.syrianArabRepublic:
        return syrianArabRepublic(context);
      case CountryResolverKey.taiwan:
        return taiwan(context);
      case CountryResolverKey.tajikistan:
        return tajikistan(context);
      case CountryResolverKey.tanzaniaUnitedRepublicofTanzania:
        return tanzaniaUnitedRepublicofTanzania(context);
      case CountryResolverKey.thailand:
        return thailand(context);
      case CountryResolverKey.timorLeste:
        return timorLeste(context);
      case CountryResolverKey.togo:
        return togo(context);
      case CountryResolverKey.tokelau:
        return tokelau(context);
      case CountryResolverKey.tonga:
        return tonga(context);
      case CountryResolverKey.trinidadandTobago:
        return trinidadandTobago(context);
      case CountryResolverKey.tunisia:
        return tunisia(context);
      case CountryResolverKey.turkey:
        return turkey(context);
      case CountryResolverKey.turkmenistan:
        return turkmenistan(context);
      case CountryResolverKey.turksandCaicosIslands:
        return turksandCaicosIslands(context);
      case CountryResolverKey.tuvalu:
        return tuvalu(context);
      case CountryResolverKey.uganda:
        return uganda(context);
      case CountryResolverKey.ukraine:
        return ukraine(context);
      case CountryResolverKey.unitedArabEmirates:
        return unitedArabEmirates(context);
      case CountryResolverKey.unitedKingdom:
        return unitedKingdom(context);
      case CountryResolverKey.unitedStates:
        return unitedStates(context);
      case CountryResolverKey.uruguay:
        return uruguay(context);
      case CountryResolverKey.uzbekistan:
        return uzbekistan(context);
      case CountryResolverKey.vanuatu:
        return vanuatu(context);
      case CountryResolverKey.venezuelaBolivarianRepublicofVenezuela:
        return venezuelaBolivarianRepublicofVenezuela(context);
      case CountryResolverKey.vietnam:
        return vietnam(context);
      case CountryResolverKey.virginIslandsBritish:
        return virginIslandsBritish(context);
      case CountryResolverKey.virginIslandsUS:
        return virginIslandsUS(context);
      case CountryResolverKey.wallisandFutuna:
        return wallisandFutuna(context);
      case CountryResolverKey.yemen:
        return yemen(context);
      case CountryResolverKey.zambia:
        return zambia(context);
      case CountryResolverKey.zimbabwe:
        return zimbabwe(context);
    }
  }
}
