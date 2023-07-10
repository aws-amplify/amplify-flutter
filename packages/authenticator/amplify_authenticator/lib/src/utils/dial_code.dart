// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/country_resolver.dart';

class DialCode {
  const DialCode._(this.dialCode, this.value, this.key);

  final String dialCode;
  final String value;
  final CountryResolverKey key;

  static const us = DialCode._('US', '1', CountryResolverKey.us$);
  static const af = DialCode._('AF', '93', CountryResolverKey.af$);
  static const ax = DialCode._('AX', '358', CountryResolverKey.ax$);
  static const al = DialCode._('AL', '355', CountryResolverKey.al$);
  static const dz = DialCode._('DZ', '213', CountryResolverKey.dz$);
  static const as1 = DialCode._('AS1', '1684', CountryResolverKey.as1$);
  static const ad = DialCode._('AD', '376', CountryResolverKey.ad$);
  static const ao = DialCode._('AO', '244', CountryResolverKey.ao$);
  static const ai = DialCode._('AI', '1264', CountryResolverKey.ai$);
  static const aq = DialCode._('AQ', '672', CountryResolverKey.aq$);
  static const ag = DialCode._('AG', '1268', CountryResolverKey.ag$);
  static const ar = DialCode._('AR', '54', CountryResolverKey.ar$);
  static const am = DialCode._('AM', '374', CountryResolverKey.am$);
  static const aw = DialCode._('AW', '297', CountryResolverKey.aw$);
  static const au = DialCode._('AU', '61', CountryResolverKey.au$);
  static const at = DialCode._('AT', '43', CountryResolverKey.at$);
  static const az = DialCode._('AZ', '994', CountryResolverKey.az$);
  static const bs = DialCode._('BS', '1242', CountryResolverKey.bs$);
  static const bh = DialCode._('BH', '973', CountryResolverKey.bh$);
  static const bd = DialCode._('BD', '880', CountryResolverKey.bd$);
  static const bb = DialCode._('BB', '1246', CountryResolverKey.bb$);
  static const by = DialCode._('BY', '375', CountryResolverKey.by$);
  static const be = DialCode._('BE', '32', CountryResolverKey.be$);
  static const bz = DialCode._('BZ', '501', CountryResolverKey.bz$);
  static const bj = DialCode._('BJ', '229', CountryResolverKey.bj$);
  static const bm = DialCode._('BM', '1441', CountryResolverKey.bm$);
  static const bt = DialCode._('BT', '975', CountryResolverKey.bt$);
  static const bo = DialCode._('BO', '591', CountryResolverKey.bo$);
  static const bq = DialCode._('BQ', '599', CountryResolverKey.bq$);
  static const ba = DialCode._('BA', '387', CountryResolverKey.ba$);
  static const bw = DialCode._('BW', '267', CountryResolverKey.bw$);
  static const br = DialCode._('BR', '55', CountryResolverKey.br$);
  static const io = DialCode._('IO', '246', CountryResolverKey.io$);
  static const bn = DialCode._('BN', '673', CountryResolverKey.bn$);
  static const bg = DialCode._('BG', '359', CountryResolverKey.bg$);
  static const bf = DialCode._('BF', '226', CountryResolverKey.bf$);
  static const bi = DialCode._('BI', '257', CountryResolverKey.bi$);
  static const kh = DialCode._('KH', '855', CountryResolverKey.kh$);
  static const cm = DialCode._('CM', '237', CountryResolverKey.cm$);
  static const ca = DialCode._('CA', '1', CountryResolverKey.ca$);
  static const cv = DialCode._('CV', '238', CountryResolverKey.cv$);
  static const ky = DialCode._('KY', '1345', CountryResolverKey.ky$);
  static const cf = DialCode._('CF', '236', CountryResolverKey.cf$);
  static const td = DialCode._('TD', '235', CountryResolverKey.td$);
  static const cl = DialCode._('CL', '56', CountryResolverKey.cl$);
  static const cn = DialCode._('CN', '86', CountryResolverKey.cn$);
  static const cx = DialCode._('CX', '61', CountryResolverKey.cx$);
  static const cc = DialCode._('CC', '61', CountryResolverKey.cc$);
  static const co = DialCode._('CO', '57', CountryResolverKey.co$);
  static const km = DialCode._('KM', '269', CountryResolverKey.km$);
  static const cg = DialCode._('CG', '242', CountryResolverKey.cg$);
  static const cd = DialCode._('CD', '243', CountryResolverKey.cd$);
  static const ck = DialCode._('CK', '682', CountryResolverKey.ck$);
  static const cr = DialCode._('CR', '506', CountryResolverKey.cr$);
  static const ci = DialCode._('CI', '225', CountryResolverKey.ci$);
  static const hr = DialCode._('HR', '385', CountryResolverKey.hr$);
  static const cu = DialCode._('CU', '53', CountryResolverKey.cu$);
  static const cy = DialCode._('CY', '357', CountryResolverKey.cy$);
  static const cz = DialCode._('CZ', '420', CountryResolverKey.cz$);
  static const dk = DialCode._('DK', '45', CountryResolverKey.dk$);
  static const dj = DialCode._('DJ', '253', CountryResolverKey.dj$);
  static const dm = DialCode._('DM', '1767', CountryResolverKey.dm$);
  static const do1 = DialCode._('DO1', '1849', CountryResolverKey.do1$);
  static const ec = DialCode._('EC', '593', CountryResolverKey.ec$);
  static const eg = DialCode._('EG', '20', CountryResolverKey.eg$);
  static const sv = DialCode._('SV', '503', CountryResolverKey.sv$);
  static const gq = DialCode._('GQ', '240', CountryResolverKey.gq$);
  static const er = DialCode._('ER', '291', CountryResolverKey.er$);
  static const ee = DialCode._('EE', '372', CountryResolverKey.ee$);
  static const sz = DialCode._('SZ', '268', CountryResolverKey.sz$);
  static const et = DialCode._('ET', '251', CountryResolverKey.et$);
  static const fk = DialCode._('FK', '500', CountryResolverKey.fk$);
  static const fo = DialCode._('FO', '298', CountryResolverKey.fo$);
  static const fj = DialCode._('FJ', '679', CountryResolverKey.fj$);
  static const fi = DialCode._('FI', '358', CountryResolverKey.fi$);
  static const fr = DialCode._('FR', '33', CountryResolverKey.fr$);
  static const gf = DialCode._('GF', '594', CountryResolverKey.gf$);
  static const pf = DialCode._('PF', '689', CountryResolverKey.pf$);
  static const ga = DialCode._('GA', '241', CountryResolverKey.ga$);
  static const gm = DialCode._('GM', '220', CountryResolverKey.gm$);
  static const ge = DialCode._('GE', '995', CountryResolverKey.ge$);
  static const de = DialCode._('DE', '49', CountryResolverKey.de$);
  static const gh = DialCode._('GH', '233', CountryResolverKey.gh$);
  static const gi = DialCode._('GI', '350', CountryResolverKey.gi$);
  static const gr = DialCode._('GR', '30', CountryResolverKey.gr$);
  static const gl = DialCode._('GL', '299', CountryResolverKey.gl$);
  static const gd = DialCode._('GD', '1473', CountryResolverKey.gd$);
  static const gp = DialCode._('GP', '590', CountryResolverKey.gp$);
  static const gu = DialCode._('GU', '1671', CountryResolverKey.gu$);
  static const gt = DialCode._('GT', '502', CountryResolverKey.gt$);
  static const gg = DialCode._('GG', '44', CountryResolverKey.gg$);
  static const gn = DialCode._('GN', '224', CountryResolverKey.gn$);
  static const gw = DialCode._('GW', '245', CountryResolverKey.gw$);
  static const gy = DialCode._('GY', '592', CountryResolverKey.gy$);
  static const ht = DialCode._('HT', '509', CountryResolverKey.ht$);
  static const va = DialCode._('VA', '379', CountryResolverKey.va$);
  static const hn = DialCode._('HN', '504', CountryResolverKey.hn$);
  static const hk = DialCode._('HK', '852', CountryResolverKey.hk$);
  static const hu = DialCode._('HU', '36', CountryResolverKey.hu$);
  static const is1 = DialCode._('IS1', '354', CountryResolverKey.is1$);
  static const in1 = DialCode._('IN1', '91', CountryResolverKey.in1$);
  static const id = DialCode._('ID', '62', CountryResolverKey.id$);
  static const ir = DialCode._('IR', '98', CountryResolverKey.ir$);
  static const iq = DialCode._('IQ', '964', CountryResolverKey.iq$);
  static const ie = DialCode._('IE', '353', CountryResolverKey.ie$);
  static const im = DialCode._('IM', '44', CountryResolverKey.im$);
  static const il = DialCode._('IL', '972', CountryResolverKey.il$);
  static const it = DialCode._('IT', '39', CountryResolverKey.it$);
  static const jm = DialCode._('JM', '1876', CountryResolverKey.jm$);
  static const jp = DialCode._('JP', '81', CountryResolverKey.jp$);
  static const je = DialCode._('JE', '44', CountryResolverKey.je$);
  static const jo = DialCode._('JO', '962', CountryResolverKey.jo$);
  static const kz = DialCode._('KZ', '7', CountryResolverKey.kz$);
  static const ke = DialCode._('KE', '254', CountryResolverKey.ke$);
  static const ki = DialCode._('KI', '686', CountryResolverKey.ki$);
  static const kp = DialCode._('KP', '850', CountryResolverKey.kp$);
  static const kr = DialCode._('KR', '82', CountryResolverKey.kr$);
  static const xk = DialCode._('XK', '383', CountryResolverKey.xk$);
  static const kw = DialCode._('KW', '965', CountryResolverKey.kw$);
  static const kg = DialCode._('KG', '996', CountryResolverKey.kg$);
  static const la = DialCode._('LA', '856', CountryResolverKey.la$);
  static const lv = DialCode._('LV', '371', CountryResolverKey.lv$);
  static const lb = DialCode._('LB', '961', CountryResolverKey.lb$);
  static const ls = DialCode._('LS', '266', CountryResolverKey.ls$);
  static const lr = DialCode._('LR', '231', CountryResolverKey.lr$);
  static const ly = DialCode._('LY', '218', CountryResolverKey.ly$);
  static const li = DialCode._('LI', '423', CountryResolverKey.li$);
  static const lt = DialCode._('LT', '370', CountryResolverKey.lt$);
  static const lu = DialCode._('LU', '352', CountryResolverKey.lu$);
  static const mo = DialCode._('MO', '853', CountryResolverKey.mo$);
  static const mk = DialCode._('MK', '389', CountryResolverKey.mk$);
  static const mg = DialCode._('MG', '261', CountryResolverKey.mg$);
  static const mw = DialCode._('MW', '265', CountryResolverKey.mw$);
  static const my = DialCode._('MY', '60', CountryResolverKey.my$);
  static const mv = DialCode._('MV', '960', CountryResolverKey.mv$);
  static const ml = DialCode._('ML', '223', CountryResolverKey.ml$);
  static const mt = DialCode._('MT', '356', CountryResolverKey.mt$);
  static const mh = DialCode._('MH', '692', CountryResolverKey.mh$);
  static const mq = DialCode._('MQ', '596', CountryResolverKey.mq$);
  static const mr = DialCode._('MR', '222', CountryResolverKey.mr$);
  static const mu = DialCode._('MU', '230', CountryResolverKey.mu$);
  static const yt = DialCode._('YT', '262', CountryResolverKey.yt$);
  static const mx = DialCode._('MX', '52', CountryResolverKey.mx$);
  static const fm = DialCode._('FM', '691', CountryResolverKey.fm$);
  static const md = DialCode._('MD', '373', CountryResolverKey.md$);
  static const mc = DialCode._('MC', '377', CountryResolverKey.mc$);
  static const mn = DialCode._('MN', '976', CountryResolverKey.mn$);
  static const me = DialCode._('ME', '382', CountryResolverKey.me$);
  static const ms = DialCode._('MS', '1664', CountryResolverKey.ms$);
  static const ma = DialCode._('MA', '212', CountryResolverKey.ma$);
  static const mz = DialCode._('MZ', '258', CountryResolverKey.mz$);
  static const mm = DialCode._('MM', '95', CountryResolverKey.mm$);
  static const na = DialCode._('NA', '264', CountryResolverKey.na$);
  static const nr = DialCode._('NR', '674', CountryResolverKey.nr$);
  static const np = DialCode._('NP', '977', CountryResolverKey.np$);
  static const nl = DialCode._('NL', '31', CountryResolverKey.nl$);
  static const nc = DialCode._('NC', '687', CountryResolverKey.nc$);
  static const nz = DialCode._('NZ', '64', CountryResolverKey.nz$);
  static const ni = DialCode._('NI', '505', CountryResolverKey.ni$);
  static const ne = DialCode._('NE', '227', CountryResolverKey.ne$);
  static const ng = DialCode._('NG', '234', CountryResolverKey.ng$);
  static const nu = DialCode._('NU', '683', CountryResolverKey.nu$);
  static const nf = DialCode._('NF', '672', CountryResolverKey.nf$);
  static const mp = DialCode._('MP', '1670', CountryResolverKey.mp$);
  static const no = DialCode._('NO', '47', CountryResolverKey.no$);
  static const om = DialCode._('OM', '968', CountryResolverKey.om$);
  static const pk = DialCode._('PK', '92', CountryResolverKey.pk$);
  static const pw = DialCode._('PW', '680', CountryResolverKey.pw$);
  static const ps = DialCode._('PS', '970', CountryResolverKey.ps$);
  static const pa = DialCode._('PA', '507', CountryResolverKey.pa$);
  static const pg = DialCode._('PG', '675', CountryResolverKey.pg$);
  static const py = DialCode._('PY', '595', CountryResolverKey.py$);
  static const pe = DialCode._('PE', '51', CountryResolverKey.pe$);
  static const ph = DialCode._('PH', '63', CountryResolverKey.ph$);
  static const pn = DialCode._('PN', '64', CountryResolverKey.pn$);
  static const pl = DialCode._('PL', '48', CountryResolverKey.pl$);
  static const pt = DialCode._('PT', '351', CountryResolverKey.pt$);
  static const pr = DialCode._('PR', '1939', CountryResolverKey.pr$);
  static const qa = DialCode._('QA', '974', CountryResolverKey.qa$);
  static const re = DialCode._('RE', '262', CountryResolverKey.re$);
  static const ro = DialCode._('RO', '40', CountryResolverKey.ro$);
  static const ru = DialCode._('RU', '7', CountryResolverKey.ru$);
  static const rw = DialCode._('RW', '250', CountryResolverKey.rw$);
  static const bl = DialCode._('BL', '590', CountryResolverKey.bl$);
  static const sh = DialCode._('SH', '290', CountryResolverKey.sh$);
  static const kn = DialCode._('KN', '1869', CountryResolverKey.kn$);
  static const lc = DialCode._('LC', '1758', CountryResolverKey.lc$);
  static const mf = DialCode._('MF', '590', CountryResolverKey.mf$);
  static const pm = DialCode._('PM', '508', CountryResolverKey.pm$);
  static const vc = DialCode._('VC', '1784', CountryResolverKey.vc$);
  static const ws = DialCode._('WS', '685', CountryResolverKey.ws$);
  static const sm = DialCode._('SM', '378', CountryResolverKey.sm$);
  static const st = DialCode._('ST', '239', CountryResolverKey.st$);
  static const sa = DialCode._('SA', '966', CountryResolverKey.sa$);
  static const sn = DialCode._('SN', '221', CountryResolverKey.sn$);
  static const rs = DialCode._('RS', '381', CountryResolverKey.rs$);
  static const sc = DialCode._('SC', '248', CountryResolverKey.sc$);
  static const sl = DialCode._('SL', '232', CountryResolverKey.sl$);
  static const sg = DialCode._('SG', '65', CountryResolverKey.sg$);
  static const sk = DialCode._('SK', '421', CountryResolverKey.sk$);
  static const si = DialCode._('SI', '386', CountryResolverKey.si$);
  static const sb = DialCode._('SB', '677', CountryResolverKey.sb$);
  static const so = DialCode._('SO', '252', CountryResolverKey.so$);
  static const za = DialCode._('ZA', '27', CountryResolverKey.za$);
  static const gs = DialCode._('GS', '500', CountryResolverKey.gs$);
  static const ss = DialCode._('SS', '211', CountryResolverKey.ss$);
  static const es = DialCode._('ES', '34', CountryResolverKey.es$);
  static const lk = DialCode._('LK', '94', CountryResolverKey.lk$);
  static const sd = DialCode._('SD', '249', CountryResolverKey.sd$);
  static const sr = DialCode._('SR', '597', CountryResolverKey.sr$);
  static const sj = DialCode._('SJ', '47', CountryResolverKey.sj$);
  static const se = DialCode._('SE', '46', CountryResolverKey.se$);
  static const ch = DialCode._('CH', '41', CountryResolverKey.ch$);
  static const sy = DialCode._('SY', '963', CountryResolverKey.sy$);
  static const tw = DialCode._('TW', '886', CountryResolverKey.tw$);
  static const tj = DialCode._('TJ', '992', CountryResolverKey.tj$);
  static const tz = DialCode._('TZ', '255', CountryResolverKey.tz$);
  static const th = DialCode._('TH', '66', CountryResolverKey.th$);
  static const tl = DialCode._('TL', '670', CountryResolverKey.tl$);
  static const tg = DialCode._('TG', '228', CountryResolverKey.tg$);
  static const tk = DialCode._('TK', '690', CountryResolverKey.tk$);
  static const to = DialCode._('TO', '676', CountryResolverKey.to$);
  static const tt = DialCode._('TT', '1868', CountryResolverKey.tt$);
  static const tn = DialCode._('TN', '216', CountryResolverKey.tn$);
  static const tr = DialCode._('TR', '90', CountryResolverKey.tr$);
  static const tm = DialCode._('TM', '993', CountryResolverKey.tm$);
  static const tc = DialCode._('TC', '1649', CountryResolverKey.tc$);
  static const tv = DialCode._('TV', '688', CountryResolverKey.tv$);
  static const ug = DialCode._('UG', '256', CountryResolverKey.ug$);
  static const ua = DialCode._('UA', '380', CountryResolverKey.ua$);
  static const ae = DialCode._('AE', '971', CountryResolverKey.ae$);
  static const gb = DialCode._('GB', '44', CountryResolverKey.gb$);
  static const um = DialCode._('UM', '246', CountryResolverKey.um$);
  static const uy = DialCode._('UY', '598', CountryResolverKey.uy$);
  static const uz = DialCode._('UZ', '998', CountryResolverKey.uz$);
  static const vu = DialCode._('VU', '678', CountryResolverKey.vu$);
  static const ve = DialCode._('VE', '58', CountryResolverKey.ve$);
  static const vn = DialCode._('VN', '84', CountryResolverKey.vn$);
  static const vg = DialCode._('VG', '1284', CountryResolverKey.vg$);
  static const vi = DialCode._('VI', '1340', CountryResolverKey.vi$);
  static const wf = DialCode._('WF', '681', CountryResolverKey.wf$);
  static const ye = DialCode._('YE', '967', CountryResolverKey.ye$);
  static const zm = DialCode._('ZM', '260', CountryResolverKey.zm$);
  static const zw = DialCode._('ZW', '263', CountryResolverKey.zw$);
}

/// List of country information.
///
/// Countries are listed in alphabetical order according to the default
/// translations, not the country code. However, countryCodes will be ordered
/// according to the i18n content at runtime to account for custom translations.
const countryCodes = [
  DialCode._('AF', '93', CountryResolverKey.af$),
  DialCode._('AX', '358', CountryResolverKey.ax$),
  DialCode._('AL', '355', CountryResolverKey.al$),
  DialCode._('DZ', '213', CountryResolverKey.dz$),
  DialCode._('AS1', '1684', CountryResolverKey.as1$),
  DialCode._('AD', '376', CountryResolverKey.ad$),
  DialCode._('AO', '244', CountryResolverKey.ao$),
  DialCode._('AI', '1264', CountryResolverKey.ai$),
  DialCode._('AQ', '672', CountryResolverKey.aq$),
  DialCode._('AG', '1268', CountryResolverKey.ag$),
  DialCode._('AR', '54', CountryResolverKey.ar$),
  DialCode._('AM', '374', CountryResolverKey.am$),
  DialCode._('AW', '297', CountryResolverKey.aw$),
  DialCode._('AU', '61', CountryResolverKey.au$),
  DialCode._('AT', '43', CountryResolverKey.at$),
  DialCode._('AZ', '994', CountryResolverKey.az$),
  DialCode._('BS', '1242', CountryResolverKey.bs$),
  DialCode._('BH', '973', CountryResolverKey.bh$),
  DialCode._('BD', '880', CountryResolverKey.bd$),
  DialCode._('BB', '1246', CountryResolverKey.bb$),
  DialCode._('BY', '375', CountryResolverKey.by$),
  DialCode._('BE', '32', CountryResolverKey.be$),
  DialCode._('BZ', '501', CountryResolverKey.bz$),
  DialCode._('BJ', '229', CountryResolverKey.bj$),
  DialCode._('BM', '1441', CountryResolverKey.bm$),
  DialCode._('BT', '975', CountryResolverKey.bt$),
  DialCode._('BO', '591', CountryResolverKey.bo$),
  DialCode._('BQ', '599', CountryResolverKey.bq$),
  DialCode._('BA', '387', CountryResolverKey.ba$),
  DialCode._('BW', '267', CountryResolverKey.bw$),
  DialCode._('BR', '55', CountryResolverKey.br$),
  DialCode._('IO', '246', CountryResolverKey.io$),
  DialCode._('BN', '673', CountryResolverKey.bn$),
  DialCode._('BG', '359', CountryResolverKey.bg$),
  DialCode._('BF', '226', CountryResolverKey.bf$),
  DialCode._('BI', '257', CountryResolverKey.bi$),
  DialCode._('KH', '855', CountryResolverKey.kh$),
  DialCode._('CM', '237', CountryResolverKey.cm$),
  DialCode._('CA', '1', CountryResolverKey.ca$),
  DialCode._('CV', '238', CountryResolverKey.cv$),
  DialCode._('KY', '1345', CountryResolverKey.ky$),
  DialCode._('CF', '236', CountryResolverKey.cf$),
  DialCode._('TD', '235', CountryResolverKey.td$),
  DialCode._('CL', '56', CountryResolverKey.cl$),
  DialCode._('CN', '86', CountryResolverKey.cn$),
  DialCode._('CX', '61', CountryResolverKey.cx$),
  DialCode._('CC', '61', CountryResolverKey.cc$),
  DialCode._('CO', '57', CountryResolverKey.co$),
  DialCode._('KM', '269', CountryResolverKey.km$),
  DialCode._('CG', '242', CountryResolverKey.cg$),
  DialCode._('CD', '243', CountryResolverKey.cd$),
  DialCode._('CK', '682', CountryResolverKey.ck$),
  DialCode._('CR', '506', CountryResolverKey.cr$),
  DialCode._('CI', '225', CountryResolverKey.ci$),
  DialCode._('HR', '385', CountryResolverKey.hr$),
  DialCode._('CU', '53', CountryResolverKey.cu$),
  DialCode._('CY', '357', CountryResolverKey.cy$),
  DialCode._('CZ', '420', CountryResolverKey.cz$),
  DialCode._('DK', '45', CountryResolverKey.dk$),
  DialCode._('DJ', '253', CountryResolverKey.dj$),
  DialCode._('DM', '1767', CountryResolverKey.dm$),
  DialCode._('DO1', '1849', CountryResolverKey.do1$),
  DialCode._('EC', '593', CountryResolverKey.ec$),
  DialCode._('EG', '20', CountryResolverKey.eg$),
  DialCode._('SV', '503', CountryResolverKey.sv$),
  DialCode._('GQ', '240', CountryResolverKey.gq$),
  DialCode._('ER', '291', CountryResolverKey.er$),
  DialCode._('EE', '372', CountryResolverKey.ee$),
  DialCode._('SZ', '268', CountryResolverKey.sz$),
  DialCode._('ET', '251', CountryResolverKey.et$),
  DialCode._('FK', '500', CountryResolverKey.fk$),
  DialCode._('FO', '298', CountryResolverKey.fo$),
  DialCode._('FJ', '679', CountryResolverKey.fj$),
  DialCode._('FI', '358', CountryResolverKey.fi$),
  DialCode._('FR', '33', CountryResolverKey.fr$),
  DialCode._('GF', '594', CountryResolverKey.gf$),
  DialCode._('PF', '689', CountryResolverKey.pf$),
  DialCode._('GA', '241', CountryResolverKey.ga$),
  DialCode._('GM', '220', CountryResolverKey.gm$),
  DialCode._('GE', '995', CountryResolverKey.ge$),
  DialCode._('DE', '49', CountryResolverKey.de$),
  DialCode._('GH', '233', CountryResolverKey.gh$),
  DialCode._('GI', '350', CountryResolverKey.gi$),
  DialCode._('GR', '30', CountryResolverKey.gr$),
  DialCode._('GL', '299', CountryResolverKey.gl$),
  DialCode._('GD', '1473', CountryResolverKey.gd$),
  DialCode._('GP', '590', CountryResolverKey.gp$),
  DialCode._('GU', '1671', CountryResolverKey.gu$),
  DialCode._('GT', '502', CountryResolverKey.gt$),
  DialCode._('GG', '44', CountryResolverKey.gg$),
  DialCode._('GN', '224', CountryResolverKey.gn$),
  DialCode._('GW', '245', CountryResolverKey.gw$),
  DialCode._('GY', '592', CountryResolverKey.gy$),
  DialCode._('HT', '509', CountryResolverKey.ht$),
  DialCode._('VA', '379', CountryResolverKey.va$),
  DialCode._('HN', '504', CountryResolverKey.hn$),
  DialCode._('HK', '852', CountryResolverKey.hk$),
  DialCode._('HU', '36', CountryResolverKey.hu$),
  DialCode._('IS1', '354', CountryResolverKey.is1$),
  DialCode._('IN1', '91', CountryResolverKey.in1$),
  DialCode._('ID', '62', CountryResolverKey.id$),
  DialCode._('IR', '98', CountryResolverKey.ir$),
  DialCode._('IQ', '964', CountryResolverKey.iq$),
  DialCode._('IE', '353', CountryResolverKey.ie$),
  DialCode._('IM', '44', CountryResolverKey.im$),
  DialCode._('IL', '972', CountryResolverKey.il$),
  DialCode._('IT', '39', CountryResolverKey.it$),
  DialCode._('JM', '1876', CountryResolverKey.jm$),
  DialCode._('JP', '81', CountryResolverKey.jp$),
  DialCode._('JE', '44', CountryResolverKey.je$),
  DialCode._('JO', '962', CountryResolverKey.jo$),
  DialCode._('KZ', '7', CountryResolverKey.kz$),
  DialCode._('KE', '254', CountryResolverKey.ke$),
  DialCode._('KI', '686', CountryResolverKey.ki$),
  DialCode._('KP', '850', CountryResolverKey.kp$),
  DialCode._('KR', '82', CountryResolverKey.kr$),
  DialCode._('XK', '383', CountryResolverKey.xk$),
  DialCode._('KW', '965', CountryResolverKey.kw$),
  DialCode._('KG', '996', CountryResolverKey.kg$),
  DialCode._('LA', '856', CountryResolverKey.la$),
  DialCode._('LV', '371', CountryResolverKey.lv$),
  DialCode._('LB', '961', CountryResolverKey.lb$),
  DialCode._('LS', '266', CountryResolverKey.ls$),
  DialCode._('LR', '231', CountryResolverKey.lr$),
  DialCode._('LY', '218', CountryResolverKey.ly$),
  DialCode._('LI', '423', CountryResolverKey.li$),
  DialCode._('LT', '370', CountryResolverKey.lt$),
  DialCode._('LU', '352', CountryResolverKey.lu$),
  DialCode._('MO', '853', CountryResolverKey.mo$),
  DialCode._('MK', '389', CountryResolverKey.mk$),
  DialCode._('MG', '261', CountryResolverKey.mg$),
  DialCode._('MW', '265', CountryResolverKey.mw$),
  DialCode._('MY', '60', CountryResolverKey.my$),
  DialCode._('MV', '960', CountryResolverKey.mv$),
  DialCode._('ML', '223', CountryResolverKey.ml$),
  DialCode._('MT', '356', CountryResolverKey.mt$),
  DialCode._('MH', '692', CountryResolverKey.mh$),
  DialCode._('MQ', '596', CountryResolverKey.mq$),
  DialCode._('MR', '222', CountryResolverKey.mr$),
  DialCode._('MU', '230', CountryResolverKey.mu$),
  DialCode._('YT', '262', CountryResolverKey.yt$),
  DialCode._('MX', '52', CountryResolverKey.mx$),
  DialCode._('FM', '691', CountryResolverKey.fm$),
  DialCode._('MD', '373', CountryResolverKey.md$),
  DialCode._('MC', '377', CountryResolverKey.mc$),
  DialCode._('MN', '976', CountryResolverKey.mn$),
  DialCode._('ME', '382', CountryResolverKey.me$),
  DialCode._('MS', '1664', CountryResolverKey.ms$),
  DialCode._('MA', '212', CountryResolverKey.ma$),
  DialCode._('MZ', '258', CountryResolverKey.mz$),
  DialCode._('MM', '95', CountryResolverKey.mm$),
  DialCode._('NA', '264', CountryResolverKey.na$),
  DialCode._('NR', '674', CountryResolverKey.nr$),
  DialCode._('NP', '977', CountryResolverKey.np$),
  DialCode._('NL', '31', CountryResolverKey.nl$),
  DialCode._('NC', '687', CountryResolverKey.nc$),
  DialCode._('NZ', '64', CountryResolverKey.nz$),
  DialCode._('NI', '505', CountryResolverKey.ni$),
  DialCode._('NE', '227', CountryResolverKey.ne$),
  DialCode._('NG', '234', CountryResolverKey.ng$),
  DialCode._('NU', '683', CountryResolverKey.nu$),
  DialCode._('NF', '672', CountryResolverKey.nf$),
  DialCode._('MP', '1670', CountryResolverKey.mp$),
  DialCode._('NO', '47', CountryResolverKey.no$),
  DialCode._('OM', '968', CountryResolverKey.om$),
  DialCode._('PK', '92', CountryResolverKey.pk$),
  DialCode._('PW', '680', CountryResolverKey.pw$),
  DialCode._('PS', '970', CountryResolverKey.ps$),
  DialCode._('PA', '507', CountryResolverKey.pa$),
  DialCode._('PG', '675', CountryResolverKey.pg$),
  DialCode._('PY', '595', CountryResolverKey.py$),
  DialCode._('PE', '51', CountryResolverKey.pe$),
  DialCode._('PH', '63', CountryResolverKey.ph$),
  DialCode._('PN', '64', CountryResolverKey.pn$),
  DialCode._('PL', '48', CountryResolverKey.pl$),
  DialCode._('PT', '351', CountryResolverKey.pt$),
  DialCode._('PR', '1939', CountryResolverKey.pr$),
  DialCode._('QA', '974', CountryResolverKey.qa$),
  DialCode._('RE', '262', CountryResolverKey.re$),
  DialCode._('RO', '40', CountryResolverKey.ro$),
  DialCode._('RU', '7', CountryResolverKey.ru$),
  DialCode._('RW', '250', CountryResolverKey.rw$),
  DialCode._('BL', '590', CountryResolverKey.bl$),
  DialCode._('SH', '290', CountryResolverKey.sh$),
  DialCode._('KN', '1869', CountryResolverKey.kn$),
  DialCode._('LC', '1758', CountryResolverKey.lc$),
  DialCode._('MF', '590', CountryResolverKey.mf$),
  DialCode._('PM', '508', CountryResolverKey.pm$),
  DialCode._('VC', '1784', CountryResolverKey.vc$),
  DialCode._('WS', '685', CountryResolverKey.ws$),
  DialCode._('SM', '378', CountryResolverKey.sm$),
  DialCode._('ST', '239', CountryResolverKey.st$),
  DialCode._('SA', '966', CountryResolverKey.sa$),
  DialCode._('SN', '221', CountryResolverKey.sn$),
  DialCode._('RS', '381', CountryResolverKey.rs$),
  DialCode._('SC', '248', CountryResolverKey.sc$),
  DialCode._('SL', '232', CountryResolverKey.sl$),
  DialCode._('SG', '65', CountryResolverKey.sg$),
  DialCode._('SK', '421', CountryResolverKey.sk$),
  DialCode._('SI', '386', CountryResolverKey.si$),
  DialCode._('SB', '677', CountryResolverKey.sb$),
  DialCode._('SO', '252', CountryResolverKey.so$),
  DialCode._('ZA', '27', CountryResolverKey.za$),
  DialCode._('GS', '500', CountryResolverKey.gs$),
  DialCode._('SS', '211', CountryResolverKey.ss$),
  DialCode._('ES', '34', CountryResolverKey.es$),
  DialCode._('LK', '94', CountryResolverKey.lk$),
  DialCode._('SD', '249', CountryResolverKey.sd$),
  DialCode._('SR', '597', CountryResolverKey.sr$),
  DialCode._('SJ', '47', CountryResolverKey.sj$),
  DialCode._('SE', '46', CountryResolverKey.se$),
  DialCode._('CH', '41', CountryResolverKey.ch$),
  DialCode._('SY', '963', CountryResolverKey.sy$),
  DialCode._('TW', '886', CountryResolverKey.tw$),
  DialCode._('TJ', '992', CountryResolverKey.tj$),
  DialCode._('TZ', '255', CountryResolverKey.tz$),
  DialCode._('TH', '66', CountryResolverKey.th$),
  DialCode._('TL', '670', CountryResolverKey.tl$),
  DialCode._('TG', '228', CountryResolverKey.tg$),
  DialCode._('TK', '690', CountryResolverKey.tk$),
  DialCode._('TO', '676', CountryResolverKey.to$),
  DialCode._('TT', '1868', CountryResolverKey.tt$),
  DialCode._('TN', '216', CountryResolverKey.tn$),
  DialCode._('TR', '90', CountryResolverKey.tr$),
  DialCode._('TM', '993', CountryResolverKey.tm$),
  DialCode._('TC', '1649', CountryResolverKey.tc$),
  DialCode._('TV', '688', CountryResolverKey.tv$),
  DialCode._('UG', '256', CountryResolverKey.ug$),
  DialCode._('UA', '380', CountryResolverKey.ua$),
  DialCode._('AE', '971', CountryResolverKey.ae$),
  DialCode._('GB', '44', CountryResolverKey.gb$),
  DialCode._('US', '1', CountryResolverKey.us$),
  DialCode._('UM', '246', CountryResolverKey.um$),
  DialCode._('UY', '598', CountryResolverKey.uy$),
  DialCode._('UZ', '998', CountryResolverKey.uz$),
  DialCode._('VU', '678', CountryResolverKey.vu$),
  DialCode._('VE', '58', CountryResolverKey.ve$),
  DialCode._('VN', '84', CountryResolverKey.vn$),
  DialCode._('VG', '1284', CountryResolverKey.vg$),
  DialCode._('VI', '1340', CountryResolverKey.vi$),
  DialCode._('WF', '681', CountryResolverKey.wf$),
  DialCode._('YE', '967', CountryResolverKey.ye$),
  DialCode._('ZM', '260', CountryResolverKey.zm$),
  DialCode._('ZW', '263', CountryResolverKey.zw$)
];

const initialCountryCode = DialCode.us;
