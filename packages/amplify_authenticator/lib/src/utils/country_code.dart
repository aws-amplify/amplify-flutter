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


import 'package:amplify_authenticator/src/l10n/country_resolver.dart';

class Country {
  final String countryCode;

  final String value;
  final CountryResolverKey key;
  const Country(this.countryCode, this.value, this.key);
}

/// List of country information
const countryCodes = [

  Country('AF', '93', CountryResolverKey.afghanistan),
    Country('AX', '358', CountryResolverKey.alandIslands),
    Country('AL', '355', CountryResolverKey.albania),
    Country('DZ', '213', CountryResolverKey.algeria),
    Country('AS1', '1684', CountryResolverKey.americanSamoa),
    Country('AD', '376', CountryResolverKey.andorra),
    Country('AO', '244', CountryResolverKey.angola),
    Country('AI', '1264', CountryResolverKey.anguilla),
    Country('AQ', '672', CountryResolverKey.antarctica),
    Country('AG', '1268', CountryResolverKey.antiguaandBarbuda),
    Country('AR', '54', CountryResolverKey.argentina),
    Country('AM', '374', CountryResolverKey.armenia),
    Country('AW', '297', CountryResolverKey.aruba),
    Country('AU', '61', CountryResolverKey.australia),
    Country('AT', '43', CountryResolverKey.austria),
    Country('AZ', '994', CountryResolverKey.azerbaijan),
    Country('BS', '1242', CountryResolverKey.bahamas),
    Country('BH', '973', CountryResolverKey.bahrain),
    Country('BD', '880', CountryResolverKey.bangladesh),
    Country('BB', '1246', CountryResolverKey.barbados),
    Country('BY', '375', CountryResolverKey.belarus),
    Country('BE', '32', CountryResolverKey.belgium),
    Country('BZ', '501', CountryResolverKey.belize),
    Country('BJ', '229', CountryResolverKey.benin),
    Country('BM', '1441', CountryResolverKey.bermuda),
    Country('BT', '975', CountryResolverKey.bhutan),
    Country('BO', '591', CountryResolverKey.boliviaPlurinationalStateof),
    Country('BA', '387', CountryResolverKey.bosniaandHerzegovina),
    Country('BW', '267', CountryResolverKey.botswana),
    Country('BR', '55', CountryResolverKey.brazil),
    Country('IO', '246', CountryResolverKey.britishIndianOceanTerritory),
    Country('BN', '673', CountryResolverKey.bruneiDarussalam),
    Country('BG', '359', CountryResolverKey.bulgaria),
    Country('BF', '226', CountryResolverKey.burkinaFaso),
    Country('BI', '257', CountryResolverKey.burundi),
    Country('KH', '855', CountryResolverKey.cambodia),
    Country('CM', '237', CountryResolverKey.cameroon),
    Country('CA', '1', CountryResolverKey.canada),
    Country('CV', '238', CountryResolverKey.capeVerde),
    Country('KY', ' 345', CountryResolverKey.caymanIslands),
    Country('CF', '236', CountryResolverKey.centralAfricanRepublic),
    Country('TD', '235', CountryResolverKey.chad),
    Country('CL', '56', CountryResolverKey.chile),
    Country('CN', '86', CountryResolverKey.china),
    Country('CX', '61', CountryResolverKey.christmasIsland),
    Country('CC', '61', CountryResolverKey.cocosKeelingIslands),
    Country('CO', '57', CountryResolverKey.colombia),
    Country('KM', '269', CountryResolverKey.comoros),
    Country('CG', '242', CountryResolverKey.congo),
    Country('CD', '243', CountryResolverKey.congoTheDemocraticRepublicoftheCongo),
    Country('CK', '682', CountryResolverKey.cookIslands),
    Country('CR', '506', CountryResolverKey.costaRica),
    Country('CI', '225', CountryResolverKey.cotedIvoire),
    Country('HR', '385', CountryResolverKey.croatia),
    Country('CU', '53', CountryResolverKey.cuba),
    Country('CY', '357', CountryResolverKey.cyprus),
    Country('CZ', '420', CountryResolverKey.czechRepublic),
    Country('DK', '45', CountryResolverKey.denmark),
    Country('DJ', '253', CountryResolverKey.djibouti),
    Country('DM', '1767', CountryResolverKey.dominica),
    Country('DO1', '1849', CountryResolverKey.dominicanRepublic),
    Country('EC', '593', CountryResolverKey.ecuador),
    Country('EG', '20', CountryResolverKey.egypt),
    Country('SV', '503', CountryResolverKey.elSalvador),
    Country('GQ', '240', CountryResolverKey.equatorialGuinea),
    Country('ER', '291', CountryResolverKey.eritrea),
    Country('EE', '372', CountryResolverKey.estonia),
    Country('ET', '251', CountryResolverKey.ethiopia),
    Country('FK', '500', CountryResolverKey.falklandIslandsMalvinas),
    Country('FO', '298', CountryResolverKey.faroeIslands),
    Country('FJ', '679', CountryResolverKey.fiji),
    Country('FI', '358', CountryResolverKey.finland),
    Country('FR', '33', CountryResolverKey.france),
    Country('GF', '594', CountryResolverKey.frenchGuiana),
    Country('PF', '689', CountryResolverKey.frenchPolynesia),
    Country('GA', '241', CountryResolverKey.gabon),
    Country('GM', '220', CountryResolverKey.gambia),
    Country('GE', '995', CountryResolverKey.georgia),
    Country('DE', '49', CountryResolverKey.germany),
    Country('GH', '233', CountryResolverKey.ghana),
    Country('GI', '350', CountryResolverKey.gibraltar),
    Country('GR', '30', CountryResolverKey.greece),
    Country('GL', '299', CountryResolverKey.greenland),
    Country('GD', '1473', CountryResolverKey.grenada),
    Country('GP', '590', CountryResolverKey.guadeloupe),
    Country('GU', '1671', CountryResolverKey.guam),
    Country('GT', '502', CountryResolverKey.guatemala),
    Country('GG', '44', CountryResolverKey.guernsey),
    Country('GN', '224', CountryResolverKey.guinea),
    Country('GW', '245', CountryResolverKey.guineaBissau),
    Country('GY', '595', CountryResolverKey.guyana),
    Country('HT', '509', CountryResolverKey.haiti),
    Country('VA', '379', CountryResolverKey.holySeeVaticanCityState),
    Country('HN', '504', CountryResolverKey.honduras),
    Country('HK', '852', CountryResolverKey.hongKong),
    Country('HU', '36', CountryResolverKey.hungary),
    Country('IS1', '354', CountryResolverKey.iceland),
    Country('IN1', '91', CountryResolverKey.india),
    Country('ID', '62', CountryResolverKey.indonesia),
    Country('IR', '98', CountryResolverKey.iranIslamicRepublicofPersianGulf),
    Country('IQ', '964', CountryResolverKey.iraq),
    Country('IE', '353', CountryResolverKey.ireland),
    Country('IM', '44', CountryResolverKey.isleofMan),
    Country('IL', '972', CountryResolverKey.israel),
    Country('IT', '39', CountryResolverKey.italy),
    Country('JM', '1876', CountryResolverKey.jamaica),
    Country('JP', '81', CountryResolverKey.japan),
    Country('JE', '44', CountryResolverKey.jersey),
    Country('JO', '962', CountryResolverKey.jordan),
    Country('KZ', '77', CountryResolverKey.kazakhstan),
    Country('KE', '254', CountryResolverKey.kenya),
    Country('KI', '686', CountryResolverKey.kiribati),
    Country('KP', '850', CountryResolverKey.koreaDemocraticPeoplesRepublicofKorea),
    Country('KR', '82', CountryResolverKey.koreaRepublicofSouthKorea),
    Country('KW', '965', CountryResolverKey.kuwait),
    Country('KG', '996', CountryResolverKey.kyrgyzstan),
    Country('LA', '856', CountryResolverKey.laos),
    Country('LV', '371', CountryResolverKey.latvia),
    Country('LB', '961', CountryResolverKey.lebanon),
    Country('LS', '266', CountryResolverKey.lesotho),
    Country('LR', '231', CountryResolverKey.liberia),
    Country('LY', '218', CountryResolverKey.libyanArabJamahiriya),
    Country('LI', '423', CountryResolverKey.liechtenstein),
    Country('LT', '370', CountryResolverKey.lithuania),
    Country('LU', '352', CountryResolverKey.luxembourg),
    Country('MO', '853', CountryResolverKey.macao),
    Country('MK', '389', CountryResolverKey.macedonia),
    Country('MG', '261', CountryResolverKey.madagascar),
    Country('MW', '265', CountryResolverKey.malawi),
    Country('MY', '60', CountryResolverKey.malaysia),
    Country('MV', '960', CountryResolverKey.maldives),
    Country('ML', '223', CountryResolverKey.mali),
    Country('MT', '356', CountryResolverKey.malta),
    Country('MH', '692', CountryResolverKey.marshallIslands),
    Country('MQ', '596', CountryResolverKey.martinique),
    Country('MR', '222', CountryResolverKey.mauritania),
    Country('MU', '230', CountryResolverKey.mauritius),
    Country('YT', '262', CountryResolverKey.mayotte),
    Country('MX', '52', CountryResolverKey.mexico),
    Country('FM', '691', CountryResolverKey.micronesiaFederatedStatesofMicronesia),
    Country('MD', '373', CountryResolverKey.moldova),
    Country('MC', '377', CountryResolverKey.monaco),
    Country('MN', '976', CountryResolverKey.mongolia),
    Country('ME', '382', CountryResolverKey.montenegro),
    Country('MS', '1664', CountryResolverKey.montserrat),
    Country('MA', '212', CountryResolverKey.morocco),
    Country('MZ', '258', CountryResolverKey.mozambique),
    Country('MM', '95', CountryResolverKey.myanmar),
    Country('NA', '264', CountryResolverKey.namibia),
    Country('NR', '674', CountryResolverKey.nauru),
    Country('NP', '977', CountryResolverKey.nepal),
    Country('NL', '31', CountryResolverKey.netherlands),
    Country('AN', '599', CountryResolverKey.netherlandsAntilles),
    Country('NC', '687', CountryResolverKey.newCaledonia),
    Country('NZ', '64', CountryResolverKey.newZealand),
    Country('NI', '505', CountryResolverKey.nicaragua),
    Country('NE', '227', CountryResolverKey.niger),
    Country('NG', '234', CountryResolverKey.nigeria),
    Country('NU', '683', CountryResolverKey.niue),
    Country('NF', '672', CountryResolverKey.norfolkIsland),
    Country('MP', '1670', CountryResolverKey.northernMarianaIslands),
    Country('NO', '47', CountryResolverKey.norway),
    Country('OM', '968', CountryResolverKey.oman),
    Country('PK', '92', CountryResolverKey.pakistan),
    Country('PW', '680', CountryResolverKey.palau),
    Country('PS', '970', CountryResolverKey.palestinianTerritoryOccupied),
    Country('PA', '507', CountryResolverKey.panama),
    Country('PG', '675', CountryResolverKey.papuaNewGuinea),
    Country('PY', '595', CountryResolverKey.paraguay),
    Country('PE', '51', CountryResolverKey.peru),
    Country('PH', '63', CountryResolverKey.philippines),
    Country('PN', '872', CountryResolverKey.pitcairn),
    Country('PL', '48', CountryResolverKey.poland),
    Country('PT', '351', CountryResolverKey.portugal),
    Country('PR', '1939', CountryResolverKey.puertoRico),
    Country('QA', '974', CountryResolverKey.qatar),
    Country('RO', '40', CountryResolverKey.romania),
    Country('RU', '7', CountryResolverKey.russia),
    Country('RW', '250', CountryResolverKey.rwanda),
    Country('RE', '262', CountryResolverKey.reunion),
    Country('BL', '590', CountryResolverKey.saintBarthelemy),
    Country('SH', '290', CountryResolverKey.saintHelenaAscensionandTristanDaCunha),
    Country('KN', '1869', CountryResolverKey.saintKittsandNevis),
    Country('LC', '1758', CountryResolverKey.saintLucia),
    Country('MF', '590', CountryResolverKey.saintMartin),
    Country('PM', '508', CountryResolverKey.saintPierreandMiquelon),
    Country('VC', '1784', CountryResolverKey.saintVincentandtheGrenadines),
    Country('WS', '685', CountryResolverKey.samoa),
    Country('SM', '378', CountryResolverKey.sanMarino),
    Country('ST', '239', CountryResolverKey.saoTomeandPrincipe),
    Country('SA', '966', CountryResolverKey.saudiArabia),
    Country('SN', '221', CountryResolverKey.senegal),
    Country('RS', '381', CountryResolverKey.serbia),
    Country('SC', '248', CountryResolverKey.seychelles),
    Country('SL', '232', CountryResolverKey.sierraLeone),
    Country('SG', '65', CountryResolverKey.singapore),
    Country('SK', '421', CountryResolverKey.slovakia),
    Country('SI', '386', CountryResolverKey.slovenia),
    Country('SB', '677', CountryResolverKey.solomonIslands),
    Country('SO', '252', CountryResolverKey.somalia),
    Country('ZA', '27', CountryResolverKey.southAfrica),
    Country('SS', '211', CountryResolverKey.southSudan),
    Country('GS', '500', CountryResolverKey.southGeorgiaandtheSouthSandwichIslands),
    Country('ES', '34', CountryResolverKey.spain),
    Country('LK', '94', CountryResolverKey.sriLanka),
    Country('SD', '249', CountryResolverKey.sudan),
    Country('SR', '597', CountryResolverKey.suriname),
    Country('SJ', '47', CountryResolverKey.svalbardandJanMayen),
    Country('SZ', '268', CountryResolverKey.swaziland),
    Country('SE', '46', CountryResolverKey.sweden),
    Country('CH', '41', CountryResolverKey.switzerland),
    Country('SY', '963', CountryResolverKey.syrianArabRepublic),
    Country('TW', '886', CountryResolverKey.taiwan),
    Country('TJ', '992', CountryResolverKey.tajikistan),
    Country('TZ', '255', CountryResolverKey.tanzaniaUnitedRepublicofTanzania),
    Country('TH', '66', CountryResolverKey.thailand),
    Country('TL', '670', CountryResolverKey.timorLeste),
    Country('TG', '228', CountryResolverKey.togo),
    Country('TK', '690', CountryResolverKey.tokelau),
    Country('TO', '676', CountryResolverKey.tonga),
    Country('TT', '1868', CountryResolverKey.trinidadandTobago),
    Country('TN', '216', CountryResolverKey.tunisia),
    Country('TR', '90', CountryResolverKey.turkey),
    Country('TM', '993', CountryResolverKey.turkmenistan),
    Country('TC', '1649', CountryResolverKey.turksandCaicosIslands),
    Country('TV', '688', CountryResolverKey.tuvalu),
    Country('UG', '256', CountryResolverKey.uganda),
    Country('UA', '380', CountryResolverKey.ukraine),
    Country('AE', '971', CountryResolverKey.unitedArabEmirates),
    Country('GB', '44', CountryResolverKey.unitedKingdom),
    Country('US', '1', CountryResolverKey.unitedStates),
    Country('UY', '598', CountryResolverKey.uruguay),
    Country('UZ', '998', CountryResolverKey.uzbekistan),
    Country('VU', '678', CountryResolverKey.vanuatu),
    Country('VE', '58', CountryResolverKey.venezuelaBolivarianRepublicofVenezuela),
    Country('VN', '84', CountryResolverKey.vietnam),
    Country('VG', '1284', CountryResolverKey.virginIslandsBritish),
    Country('VI', '1340', CountryResolverKey.virginIslandsUS),
    Country('WF', '681', CountryResolverKey.wallisandFutuna),
    Country('YE', '967', CountryResolverKey.yemen),
    Country('ZM', '260', CountryResolverKey.zambia),
    Country('ZW', '263', CountryResolverKey.zimbabwe)
  ];
  