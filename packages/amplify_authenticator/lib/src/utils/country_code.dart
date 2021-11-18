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
  Country('US', '1', CountryResolverKey.us$),
  Country('AF', '93', CountryResolverKey.af$),
  Country('AX', '358', CountryResolverKey.ax$),
  Country('AL', '355', CountryResolverKey.al$),
  Country('DZ', '213', CountryResolverKey.dz$),
  Country('AS1', '1684', CountryResolverKey.as1$),
  Country('AD', '376', CountryResolverKey.ad$),
  Country('AO', '244', CountryResolverKey.ao$),
  Country('AI', '1264', CountryResolverKey.ai$),
  Country('AQ', '672', CountryResolverKey.aq$),
  Country('AG', '1268', CountryResolverKey.ag$),
  Country('AR', '54', CountryResolverKey.ar$),
  Country('AM', '374', CountryResolverKey.am$),
  Country('AW', '297', CountryResolverKey.aw$),
  Country('AU', '61', CountryResolverKey.au$),
  Country('AT', '43', CountryResolverKey.at$),
  Country('AZ', '994', CountryResolverKey.az$),
  Country('BS', '1242', CountryResolverKey.bs$),
  Country('BH', '973', CountryResolverKey.bh$),
  Country('BD', '880', CountryResolverKey.bd$),
  Country('BB', '1246', CountryResolverKey.bb$),
  Country('BY', '375', CountryResolverKey.by$),
  Country('BE', '32', CountryResolverKey.be$),
  Country('BZ', '501', CountryResolverKey.bz$),
  Country('BJ', '229', CountryResolverKey.bj$),
  Country('BM', '1441', CountryResolverKey.bm$),
  Country('BT', '975', CountryResolverKey.bt$),
  Country('BO', '591', CountryResolverKey.bo$),
  Country('BQ', '599', CountryResolverKey.bq$),
  Country('BA', '387', CountryResolverKey.ba$),
  Country('BW', '267', CountryResolverKey.bw$),
  Country('BR', '55', CountryResolverKey.br$),
  Country('IO', '246', CountryResolverKey.io$),
  Country('BN', '673', CountryResolverKey.bn$),
  Country('BG', '359', CountryResolverKey.bg$),
  Country('BF', '226', CountryResolverKey.bf$),
  Country('BI', '257', CountryResolverKey.bi$),
  Country('KH', '855', CountryResolverKey.kh$),
  Country('CM', '237', CountryResolverKey.cm$),
  Country('CA', '1', CountryResolverKey.ca$),
  Country('CV', '238', CountryResolverKey.cv$),
  Country('KY', '1345', CountryResolverKey.ky$),
  Country('CF', '236', CountryResolverKey.cf$),
  Country('TD', '235', CountryResolverKey.td$),
  Country('CL', '56', CountryResolverKey.cl$),
  Country('CN', '86', CountryResolverKey.cn$),
  Country('CX', '61', CountryResolverKey.cx$),
  Country('CC', '61', CountryResolverKey.cc$),
  Country('CO', '57', CountryResolverKey.co$),
  Country('KM', '269', CountryResolverKey.km$),
  Country('CG', '242', CountryResolverKey.cg$),
  Country('CD', '243', CountryResolverKey.cd$),
  Country('CK', '682', CountryResolverKey.ck$),
  Country('CR', '506', CountryResolverKey.cr$),
  Country('CI', '225', CountryResolverKey.ci$),
  Country('HR', '385', CountryResolverKey.hr$),
  Country('CU', '53', CountryResolverKey.cu$),
  Country('CY', '357', CountryResolverKey.cy$),
  Country('CZ', '420', CountryResolverKey.cz$),
  Country('DK', '45', CountryResolverKey.dk$),
  Country('DJ', '253', CountryResolverKey.dj$),
  Country('DM', '1767', CountryResolverKey.dm$),
  Country('DO1', '1849', CountryResolverKey.do1$),
  Country('EC', '593', CountryResolverKey.ec$),
  Country('EG', '20', CountryResolverKey.eg$),
  Country('SV', '503', CountryResolverKey.sv$),
  Country('GQ', '240', CountryResolverKey.gq$),
  Country('ER', '291', CountryResolverKey.er$),
  Country('EE', '372', CountryResolverKey.ee$),
  Country('SZ', '268', CountryResolverKey.sz$),
  Country('ET', '251', CountryResolverKey.et$),
  Country('FK', '500', CountryResolverKey.fk$),
  Country('FO', '298', CountryResolverKey.fo$),
  Country('FJ', '679', CountryResolverKey.fj$),
  Country('FI', '358', CountryResolverKey.fi$),
  Country('FR', '33', CountryResolverKey.fr$),
  Country('GF', '594', CountryResolverKey.gf$),
  Country('PF', '689', CountryResolverKey.pf$),
  Country('GA', '241', CountryResolverKey.ga$),
  Country('GM', '220', CountryResolverKey.gm$),
  Country('GE', '995', CountryResolverKey.ge$),
  Country('DE', '49', CountryResolverKey.de$),
  Country('GH', '233', CountryResolverKey.gh$),
  Country('GI', '350', CountryResolverKey.gi$),
  Country('GR', '30', CountryResolverKey.gr$),
  Country('GL', '299', CountryResolverKey.gl$),
  Country('GD', '1473', CountryResolverKey.gd$),
  Country('GP', '590', CountryResolverKey.gp$),
  Country('GU', '1671', CountryResolverKey.gu$),
  Country('GT', '502', CountryResolverKey.gt$),
  Country('GG', '44', CountryResolverKey.gg$),
  Country('GN', '224', CountryResolverKey.gn$),
  Country('GW', '245', CountryResolverKey.gw$),
  Country('GY', '592', CountryResolverKey.gy$),
  Country('HT', '509', CountryResolverKey.ht$),
  Country('VA', '379', CountryResolverKey.va$),
  Country('HN', '504', CountryResolverKey.hn$),
  Country('HK', '852', CountryResolverKey.hk$),
  Country('HU', '36', CountryResolverKey.hu$),
  Country('IS1', '354', CountryResolverKey.is1$),
  Country('IN1', '91', CountryResolverKey.in1$),
  Country('ID', '62', CountryResolverKey.id$),
  Country('IR', '98', CountryResolverKey.ir$),
  Country('IQ', '964', CountryResolverKey.iq$),
  Country('IE', '353', CountryResolverKey.ie$),
  Country('IM', '44', CountryResolverKey.im$),
  Country('IL', '972', CountryResolverKey.il$),
  Country('IT', '39', CountryResolverKey.it$),
  Country('JM', '1876', CountryResolverKey.jm$),
  Country('JP', '81', CountryResolverKey.jp$),
  Country('JE', '44', CountryResolverKey.je$),
  Country('JO', '962', CountryResolverKey.jo$),
  Country('KZ', '7', CountryResolverKey.kz$),
  Country('KE', '254', CountryResolverKey.ke$),
  Country('KI', '686', CountryResolverKey.ki$),
  Country('KP', '850', CountryResolverKey.kp$),
  Country('KR', '82', CountryResolverKey.kr$),
  Country('XK', '383', CountryResolverKey.xk$),
  Country('KW', '965', CountryResolverKey.kw$),
  Country('KG', '996', CountryResolverKey.kg$),
  Country('LA', '856', CountryResolverKey.la$),
  Country('LV', '371', CountryResolverKey.lv$),
  Country('LB', '961', CountryResolverKey.lb$),
  Country('LS', '266', CountryResolverKey.ls$),
  Country('LR', '231', CountryResolverKey.lr$),
  Country('LY', '218', CountryResolverKey.ly$),
  Country('LI', '423', CountryResolverKey.li$),
  Country('LT', '370', CountryResolverKey.lt$),
  Country('LU', '352', CountryResolverKey.lu$),
  Country('MO', '853', CountryResolverKey.mo$),
  Country('MK', '389', CountryResolverKey.mk$),
  Country('MG', '261', CountryResolverKey.mg$),
  Country('MW', '265', CountryResolverKey.mw$),
  Country('MY', '60', CountryResolverKey.my$),
  Country('MV', '960', CountryResolverKey.mv$),
  Country('ML', '223', CountryResolverKey.ml$),
  Country('MT', '356', CountryResolverKey.mt$),
  Country('MH', '692', CountryResolverKey.mh$),
  Country('MQ', '596', CountryResolverKey.mq$),
  Country('MR', '222', CountryResolverKey.mr$),
  Country('MU', '230', CountryResolverKey.mu$),
  Country('YT', '262', CountryResolverKey.yt$),
  Country('MX', '52', CountryResolverKey.mx$),
  Country('FM', '691', CountryResolverKey.fm$),
  Country('MD', '373', CountryResolverKey.md$),
  Country('MC', '377', CountryResolverKey.mc$),
  Country('MN', '976', CountryResolverKey.mn$),
  Country('ME', '382', CountryResolverKey.me$),
  Country('MS', '1664', CountryResolverKey.ms$),
  Country('MA', '212', CountryResolverKey.ma$),
  Country('MZ', '258', CountryResolverKey.mz$),
  Country('MM', '95', CountryResolverKey.mm$),
  Country('NA', '264', CountryResolverKey.na$),
  Country('NR', '674', CountryResolverKey.nr$),
  Country('NP', '977', CountryResolverKey.np$),
  Country('NL', '31', CountryResolverKey.nl$),
  Country('NC', '687', CountryResolverKey.nc$),
  Country('NZ', '64', CountryResolverKey.nz$),
  Country('NI', '505', CountryResolverKey.ni$),
  Country('NE', '227', CountryResolverKey.ne$),
  Country('NG', '234', CountryResolverKey.ng$),
  Country('NU', '683', CountryResolverKey.nu$),
  Country('NF', '672', CountryResolverKey.nf$),
  Country('MP', '1670', CountryResolverKey.mp$),
  Country('NO', '47', CountryResolverKey.no$),
  Country('OM', '968', CountryResolverKey.om$),
  Country('PK', '92', CountryResolverKey.pk$),
  Country('PW', '680', CountryResolverKey.pw$),
  Country('PS', '970', CountryResolverKey.ps$),
  Country('PA', '507', CountryResolverKey.pa$),
  Country('PG', '675', CountryResolverKey.pg$),
  Country('PY', '595', CountryResolverKey.py$),
  Country('PE', '51', CountryResolverKey.pe$),
  Country('PH', '63', CountryResolverKey.ph$),
  Country('PN', '64', CountryResolverKey.pn$),
  Country('PL', '48', CountryResolverKey.pl$),
  Country('PT', '351', CountryResolverKey.pt$),
  Country('PR', '1939', CountryResolverKey.pr$),
  Country('QA', '974', CountryResolverKey.qa$),
  Country('RE', '262', CountryResolverKey.re$),
  Country('RO', '40', CountryResolverKey.ro$),
  Country('RU', '7', CountryResolverKey.ru$),
  Country('RW', '250', CountryResolverKey.rw$),
  Country('BL', '590', CountryResolverKey.bl$),
  Country('SH', '290', CountryResolverKey.sh$),
  Country('KN', '1869', CountryResolverKey.kn$),
  Country('LC', '1758', CountryResolverKey.lc$),
  Country('MF', '590', CountryResolverKey.mf$),
  Country('PM', '508', CountryResolverKey.pm$),
  Country('VC', '1784', CountryResolverKey.vc$),
  Country('WS', '685', CountryResolverKey.ws$),
  Country('SM', '378', CountryResolverKey.sm$),
  Country('ST', '239', CountryResolverKey.st$),
  Country('SA', '966', CountryResolverKey.sa$),
  Country('SN', '221', CountryResolverKey.sn$),
  Country('RS', '381', CountryResolverKey.rs$),
  Country('SC', '248', CountryResolverKey.sc$),
  Country('SL', '232', CountryResolverKey.sl$),
  Country('SG', '65', CountryResolverKey.sg$),
  Country('SK', '421', CountryResolverKey.sk$),
  Country('SI', '386', CountryResolverKey.si$),
  Country('SB', '677', CountryResolverKey.sb$),
  Country('SO', '252', CountryResolverKey.so$),
  Country('ZA', '27', CountryResolverKey.za$),
  Country('GS', '500', CountryResolverKey.gs$),
  Country('SS', '211', CountryResolverKey.ss$),
  Country('ES', '34', CountryResolverKey.es$),
  Country('LK', '94', CountryResolverKey.lk$),
  Country('SD', '249', CountryResolverKey.sd$),
  Country('SR', '597', CountryResolverKey.sr$),
  Country('SJ', '47', CountryResolverKey.sj$),
  Country('SE', '46', CountryResolverKey.se$),
  Country('CH', '41', CountryResolverKey.ch$),
  Country('SY', '963', CountryResolverKey.sy$),
  Country('TW', '886', CountryResolverKey.tw$),
  Country('TJ', '992', CountryResolverKey.tj$),
  Country('TZ', '255', CountryResolverKey.tz$),
  Country('TH', '66', CountryResolverKey.th$),
  Country('TL', '670', CountryResolverKey.tl$),
  Country('TG', '228', CountryResolverKey.tg$),
  Country('TK', '690', CountryResolverKey.tk$),
  Country('TO', '676', CountryResolverKey.to$),
  Country('TT', '1868', CountryResolverKey.tt$),
  Country('TN', '216', CountryResolverKey.tn$),
  Country('TR', '90', CountryResolverKey.tr$),
  Country('TM', '993', CountryResolverKey.tm$),
  Country('TC', '1649', CountryResolverKey.tc$),
  Country('TV', '688', CountryResolverKey.tv$),
  Country('UG', '256', CountryResolverKey.ug$),
  Country('UA', '380', CountryResolverKey.ua$),
  Country('AE', '971', CountryResolverKey.ae$),
  Country('GB', '44', CountryResolverKey.gb$),
  Country('UM', '246', CountryResolverKey.um$),
  Country('UY', '598', CountryResolverKey.uy$),
  Country('UZ', '998', CountryResolverKey.uz$),
  Country('VU', '678', CountryResolverKey.vu$),
  Country('VE', '58', CountryResolverKey.ve$),
  Country('VN', '84', CountryResolverKey.vn$),
  Country('VG', '1284', CountryResolverKey.vg$),
  Country('VI', '1340', CountryResolverKey.vi$),
  Country('WF', '681', CountryResolverKey.wf$),
  Country('YE', '967', CountryResolverKey.ye$),
  Country('ZM', '260', CountryResolverKey.zm$),
  Country('ZW', '263', CountryResolverKey.zw$)
];
