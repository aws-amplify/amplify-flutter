// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/l10n/resolver.dart';
import 'package:flutter/material.dart';

enum DialCodeResolverKey {
  selectDialCode,
  noDialCodeSearchResults,

  af$,
  ax$,
  al$,
  dz$,
  as1$,
  ad$,
  ao$,
  ai$,
  aq$,
  ag$,
  ar$,
  am$,
  aw$,
  au$,
  at$,
  az$,
  bs$,
  bh$,
  bd$,
  bb$,
  by$,
  be$,
  bz$,
  bj$,
  bm$,
  bt$,
  bo$,
  bq$,
  ba$,
  bw$,
  br$,
  io$,
  bn$,
  bg$,
  bf$,
  bi$,
  kh$,
  cm$,
  ca$,
  cv$,
  ky$,
  cf$,
  td$,
  cl$,
  cn$,
  cx$,
  cc$,
  co$,
  km$,
  cg$,
  cd$,
  ck$,
  cr$,
  ci$,
  hr$,
  cu$,
  cy$,
  cz$,
  dk$,
  dj$,
  dm$,
  do1$,
  ec$,
  eg$,
  sv$,
  gq$,
  er$,
  ee$,
  sz$,
  et$,
  fk$,
  fo$,
  fj$,
  fi$,
  fr$,
  gf$,
  pf$,
  ga$,
  gm$,
  ge$,
  de$,
  gh$,
  gi$,
  gr$,
  gl$,
  gd$,
  gp$,
  gu$,
  gt$,
  gg$,
  gn$,
  gw$,
  gy$,
  ht$,
  va$,
  hn$,
  hk$,
  hu$,
  is1$,
  in1$,
  id$,
  ir$,
  iq$,
  ie$,
  im$,
  il$,
  it$,
  jm$,
  jp$,
  je$,
  jo$,
  kz$,
  ke$,
  ki$,
  kp$,
  kr$,
  xk$,
  kw$,
  kg$,
  la$,
  lv$,
  lb$,
  ls$,
  lr$,
  ly$,
  li$,
  lt$,
  lu$,
  mo$,
  mk$,
  mg$,
  mw$,
  my$,
  mv$,
  ml$,
  mt$,
  mh$,
  mq$,
  mr$,
  mu$,
  yt$,
  mx$,
  fm$,
  md$,
  mc$,
  mn$,
  me$,
  ms$,
  ma$,
  mz$,
  mm$,
  na$,
  nr$,
  np$,
  nl$,
  nc$,
  nz$,
  ni$,
  ne$,
  ng$,
  nu$,
  nf$,
  mp$,
  no$,
  om$,
  pk$,
  pw$,
  ps$,
  pa$,
  pg$,
  py$,
  pe$,
  ph$,
  pn$,
  pl$,
  pt$,
  pr$,
  qa$,
  re$,
  ro$,
  ru$,
  rw$,
  bl$,
  sh$,
  kn$,
  lc$,
  mf$,
  pm$,
  vc$,
  ws$,
  sm$,
  st$,
  sa$,
  sn$,
  rs$,
  sc$,
  sl$,
  sg$,
  sk$,
  si$,
  sb$,
  so$,
  za$,
  gs$,
  ss$,
  es$,
  lk$,
  sd$,
  sr$,
  sj$,
  se$,
  ch$,
  sy$,
  tw$,
  tj$,
  tz$,
  th$,
  tl$,
  tg$,
  tk$,
  to$,
  tt$,
  tn$,
  tr$,
  tm$,
  tc$,
  tv$,
  ug$,
  ua$,
  ae$,
  gb$,
  um$,
  us$,
  uy$,
  uz$,
  vu$,
  ve$,
  vn$,
  vg$,
  vi$,
  wf$,
  ye$,
  zm$,
  zw$,
}

@Deprecated('Use DialCodeResolverKey instead')
typedef CountryResolverKey = DialCodeResolverKey;

@Deprecated('Use DialCodeResolver instead')
typedef CountryResolver = DialCodeResolver;

class DialCodeResolver extends Resolver<DialCodeResolverKey> {
  const DialCodeResolver();

  String selectDialCode(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).selectDialCode;
  }

  String noDialCodeSearchResults(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context)
        .noDialCodeSearchResults;
  }

  /// The label for Afghanistan.
  String af(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).af;
  }

  /// The label for Aland Islands.
  String ax(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ax;
  }

  /// The label for Albania.
  String al(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).al;
  }

  /// The label for Algeria.
  String dz(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).dz;
  }

  /// The label for American Samoa.
  String as1(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).as1;
  }

  /// The label for Andorra.
  String ad(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ad;
  }

  /// The label for Angola.
  String ao(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ao;
  }

  /// The label for Anguilla.
  String ai(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ai;
  }

  /// The label for Antarctica.
  String aq(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).aq;
  }

  /// The label for Antigua and Barbuda.
  String ag(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ag;
  }

  /// The label for Argentina.
  String ar(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ar;
  }

  /// The label for Armenia.
  String am(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).am;
  }

  /// The label for Aruba.
  String aw(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).aw;
  }

  /// The label for Australia.
  String au(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).au;
  }

  /// The label for Austria.
  String at(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).at;
  }

  /// The label for Azerbaijan.
  String az(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).az;
  }

  /// The label for Bahamas.
  String bs(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bs;
  }

  /// The label for Bahrain.
  String bh(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bh;
  }

  /// The label for Bangladesh.
  String bd(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bd;
  }

  /// The label for Barbados.
  String bb(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bb;
  }

  /// The label for Belarus.
  String by(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).by;
  }

  /// The label for Belgium.
  String be(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).be;
  }

  /// The label for Belize.
  String bz(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bz;
  }

  /// The label for Benin.
  String bj(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bj;
  }

  /// The label for Bermuda.
  String bm(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bm;
  }

  /// The label for Bhutan.
  String bt(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bt;
  }

  /// The label for Bolivia (Plurinational State of).
  String bo(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bo;
  }

  /// The label for Bonaire, Sint Eustatius and Saba.
  String bq(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bq;
  }

  /// The label for Bosnia and Herzegovina.
  String ba(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ba;
  }

  /// The label for Botswana.
  String bw(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bw;
  }

  /// The label for Brazil.
  String br(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).br;
  }

  /// The label for British Indian Ocean Territory.
  String io(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).io;
  }

  /// The label for Brunei.
  String bn(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bn;
  }

  /// The label for Bulgaria.
  String bg(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bg;
  }

  /// The label for Burkina Faso.
  String bf(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bf;
  }

  /// The label for Burundi.
  String bi(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bi;
  }

  /// The label for Cambodia.
  String kh(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kh;
  }

  /// The label for Cameroon.
  String cm(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cm;
  }

  /// The label for Canada.
  String ca(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ca;
  }

  /// The label for Cape Verde.
  String cv(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cv;
  }

  /// The label for Cayman Islands.
  String ky(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ky;
  }

  /// The label for Central African Republic.
  String cf(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cf;
  }

  /// The label for Chad.
  String td(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).td;
  }

  /// The label for Chile.
  String cl(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cl;
  }

  /// The label for China.
  String cn(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cn;
  }

  /// The label for Christmas Island.
  String cx(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cx;
  }

  /// The label for Cocos (Keeling) Islands.
  String cc(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cc;
  }

  /// The label for Colombia.
  String co(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).co;
  }

  /// The label for Comoros.
  String km(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).km;
  }

  /// The label for Congo (Republic of).
  String cg(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cg;
  }

  /// The label for Congo (Democratic Republic of).
  String cd(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cd;
  }

  /// The label for Cook Islands.
  String ck(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ck;
  }

  /// The label for Costa Rica.
  String cr(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cr;
  }

  /// The label for Côte d'Ivoire.
  String ci(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ci;
  }

  /// The label for Croatia.
  String hr(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).hr;
  }

  /// The label for Cuba.
  String cu(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cu;
  }

  /// The label for Cyprus.
  String cy(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cy;
  }

  /// The label for Czech Republic.
  String cz(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cz;
  }

  /// The label for Denmark.
  String dk(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).dk;
  }

  /// The label for Djibouti.
  String dj(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).dj;
  }

  /// The label for Dominica.
  String dm(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).dm;
  }

  /// The label for Dominican Republic.
  String do1(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).do1;
  }

  /// The label for Ecuador.
  String ec(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ec;
  }

  /// The label for Egypt.
  String eg(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).eg;
  }

  /// The label for El Salvador.
  String sv(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sv;
  }

  /// The label for Equatorial Guinea.
  String gq(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gq;
  }

  /// The label for Eritrea.
  String er(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).er;
  }

  /// The label for Estonia.
  String ee(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ee;
  }

  /// The label for Eswatini.
  String sz(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sz;
  }

  /// The label for Ethiopia.
  String et(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).et;
  }

  /// The label for Falkland Islands (Malvinas).
  String fk(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).fk;
  }

  /// The label for Faroe Islands.
  String fo(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).fo;
  }

  /// The label for Fiji.
  String fj(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).fj;
  }

  /// The label for Finland.
  String fi(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).fi;
  }

  /// The label for France.
  String fr(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).fr;
  }

  /// The label for French Guiana.
  String gf(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gf;
  }

  /// The label for French Polynesia.
  String pf(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pf;
  }

  /// The label for Gabon.
  String ga(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ga;
  }

  /// The label for Gambia.
  String gm(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gm;
  }

  /// The label for Georgia.
  String ge(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ge;
  }

  /// The label for Germany.
  String de(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).de;
  }

  /// The label for Ghana.
  String gh(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gh;
  }

  /// The label for Gibraltar.
  String gi(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gi;
  }

  /// The label for Greece.
  String gr(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gr;
  }

  /// The label for Greenland.
  String gl(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gl;
  }

  /// The label for Grenada.
  String gd(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gd;
  }

  /// The label for Guadeloupe.
  String gp(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gp;
  }

  /// The label for Guam.
  String gu(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gu;
  }

  /// The label for Guatemala.
  String gt(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gt;
  }

  /// The label for Guernsey.
  String gg(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gg;
  }

  /// The label for Guinea.
  String gn(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gn;
  }

  /// The label for Guinea-Bissau.
  String gw(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gw;
  }

  /// The label for Guyana.
  String gy(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gy;
  }

  /// The label for Haiti.
  String ht(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ht;
  }

  /// The label for Holy See (Vatican City State).
  String va(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).va;
  }

  /// The label for Honduras.
  String hn(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).hn;
  }

  /// The label for Hong Kong.
  String hk(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).hk;
  }

  /// The label for Hungary.
  String hu(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).hu;
  }

  /// The label for Iceland.
  String is1(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).is1;
  }

  /// The label for India.
  String in1(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).in1;
  }

  /// The label for Indonesia.
  String id(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).id;
  }

  /// The label for Iran (Islamic Republic of).
  String ir(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ir;
  }

  /// The label for Iraq.
  String iq(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).iq;
  }

  /// The label for Ireland.
  String ie(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ie;
  }

  /// The label for Isle of Man.
  String im(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).im;
  }

  /// The label for Israel.
  String il(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).il;
  }

  /// The label for Italy.
  String it(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).it;
  }

  /// The label for Jamaica.
  String jm(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).jm;
  }

  /// The label for Japan.
  String jp(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).jp;
  }

  /// The label for Jersey.
  String je(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).je;
  }

  /// The label for Jordan.
  String jo(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).jo;
  }

  /// The label for Kazakhstan.
  String kz(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kz;
  }

  /// The label for Kenya.
  String ke(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ke;
  }

  /// The label for Kiribati.
  String ki(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ki;
  }

  /// The label for Korea (Democratic People's Republic of).
  String kp(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kp;
  }

  /// The label for Korea (Republic of).
  String kr(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kr;
  }

  /// The label for Kosovo.
  String xk(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).xk;
  }

  /// The label for Kuwait.
  String kw(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kw;
  }

  /// The label for Kyrgyzstan.
  String kg(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kg;
  }

  /// The label for Laos.
  String la(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).la;
  }

  /// The label for Latvia.
  String lv(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lv;
  }

  /// The label for Lebanon.
  String lb(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lb;
  }

  /// The label for Lesotho.
  String ls(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ls;
  }

  /// The label for Liberia.
  String lr(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lr;
  }

  /// The label for Libya.
  String ly(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ly;
  }

  /// The label for Liechtenstein.
  String li(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).li;
  }

  /// The label for Lithuania.
  String lt(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lt;
  }

  /// The label for Luxembourg.
  String lu(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lu;
  }

  /// The label for Macao.
  String mo(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mo;
  }

  /// The label for Macedonia.
  String mk(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mk;
  }

  /// The label for Madagascar.
  String mg(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mg;
  }

  /// The label for Malawi.
  String mw(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mw;
  }

  /// The label for Malaysia.
  String my(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).my;
  }

  /// The label for Maldives.
  String mv(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mv;
  }

  /// The label for Mali.
  String ml(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ml;
  }

  /// The label for Malta.
  String mt(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mt;
  }

  /// The label for Marshall Islands.
  String mh(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mh;
  }

  /// The label for Martinique.
  String mq(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mq;
  }

  /// The label for Mauritania.
  String mr(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mr;
  }

  /// The label for Mauritius.
  String mu(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mu;
  }

  /// The label for Mayotte.
  String yt(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).yt;
  }

  /// The label for Mexico.
  String mx(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mx;
  }

  /// The label for Micronesia (Federated States of).
  String fm(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).fm;
  }

  /// The label for Moldova.
  String md(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).md;
  }

  /// The label for Monaco.
  String mc(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mc;
  }

  /// The label for Mongolia.
  String mn(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mn;
  }

  /// The label for Montenegro.
  String me(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).me;
  }

  /// The label for Montserrat.
  String ms(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ms;
  }

  /// The label for Morocco.
  String ma(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ma;
  }

  /// The label for Mozambique.
  String mz(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mz;
  }

  /// The label for Myanmar.
  String mm(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mm;
  }

  /// The label for Namibia.
  String na(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).na;
  }

  /// The label for Nauru.
  String nr(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nr;
  }

  /// The label for Nepal.
  String np(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).np;
  }

  /// The label for Netherlands.
  String nl(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nl;
  }

  /// The label for New Caledonia.
  String nc(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nc;
  }

  /// The label for New Zealand.
  String nz(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nz;
  }

  /// The label for Nicaragua.
  String ni(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ni;
  }

  /// The label for Niger.
  String ne(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ne;
  }

  /// The label for Nigeria.
  String ng(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ng;
  }

  /// The label for Niue.
  String nu(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nu;
  }

  /// The label for Norfolk Island.
  String nf(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nf;
  }

  /// The label for Northern Mariana Islands.
  String mp(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mp;
  }

  /// The label for Norway.
  String no(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).no;
  }

  /// The label for Oman.
  String om(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).om;
  }

  /// The label for Pakistan.
  String pk(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pk;
  }

  /// The label for Palau.
  String pw(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pw;
  }

  /// The label for Palestine (State of).
  String ps(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ps;
  }

  /// The label for Panama.
  String pa(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pa;
  }

  /// The label for Papua New Guinea.
  String pg(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pg;
  }

  /// The label for Paraguay.
  String py(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).py;
  }

  /// The label for Peru.
  String pe(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pe;
  }

  /// The label for Philippines.
  String ph(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ph;
  }

  /// The label for Pitcairn.
  String pn(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pn;
  }

  /// The label for Poland.
  String pl(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pl;
  }

  /// The label for Portugal.
  String pt(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pt;
  }

  /// The label for Puerto Rico.
  String pr(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pr;
  }

  /// The label for Qatar.
  String qa(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).qa;
  }

  /// The label for Reunion.
  String re(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).re;
  }

  /// The label for Romania.
  String ro(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ro;
  }

  /// The label for Russia.
  String ru(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ru;
  }

  /// The label for Rwanda.
  String rw(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).rw;
  }

  /// The label for Saint Barthelemy.
  String bl(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bl;
  }

  /// The label for Saint Helena, Ascension and Tristan Da Cunha.
  String sh(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sh;
  }

  /// The label for Saint Kitts and Nevis.
  String kn(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kn;
  }

  /// The label for Saint Lucia.
  String lc(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lc;
  }

  /// The label for Saint Martin.
  String mf(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mf;
  }

  /// The label for Saint Pierre and Miquelon.
  String pm(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pm;
  }

  /// The label for Saint Vincent and the Grenadines.
  String vc(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).vc;
  }

  /// The label for Samoa.
  String ws(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ws;
  }

  /// The label for San Marino.
  String sm(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sm;
  }

  /// The label for Sao Tome and Principe.
  String st(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).st;
  }

  /// The label for Saudi Arabia.
  String sa(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sa;
  }

  /// The label for Senegal.
  String sn(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sn;
  }

  /// The label for Serbia.
  String rs(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).rs;
  }

  /// The label for Seychelles.
  String sc(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sc;
  }

  /// The label for Sierra Leone.
  String sl(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sl;
  }

  /// The label for Singapore.
  String sg(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sg;
  }

  /// The label for Slovakia.
  String sk(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sk;
  }

  /// The label for Slovenia.
  String si(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).si;
  }

  /// The label for Solomon Islands.
  String sb(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sb;
  }

  /// The label for Somalia.
  String so(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).so;
  }

  /// The label for South Africa.
  String za(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).za;
  }

  /// The label for South Georgia and the South Sandwich Islands.
  String gs(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gs;
  }

  /// The label for South Sudan.
  String ss(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ss;
  }

  /// The label for Spain.
  String es(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).es;
  }

  /// The label for Sri Lanka.
  String lk(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lk;
  }

  /// The label for Sudan.
  String sd(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sd;
  }

  /// The label for Suriname.
  String sr(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sr;
  }

  /// The label for Svalbard and Jan Mayen.
  String sj(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sj;
  }

  /// The label for Sweden.
  String se(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).se;
  }

  /// The label for Switzerland.
  String ch(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ch;
  }

  /// The label for Syrian Arab Republic.
  String sy(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sy;
  }

  /// The label for Taiwan.
  String tw(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tw;
  }

  /// The label for Tajikistan.
  String tj(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tj;
  }

  /// The label for Tanzania (United Republic of).
  String tz(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tz;
  }

  /// The label for Thailand.
  String th(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).th;
  }

  /// The label for Timor-Leste (East Timor).
  String tl(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tl;
  }

  /// The label for Togo.
  String tg(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tg;
  }

  /// The label for Tokelau.
  String tk(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tk;
  }

  /// The label for Tonga.
  String to(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).to;
  }

  /// The label for Trinidad and Tobago.
  String tt(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tt;
  }

  /// The label for Tunisia.
  String tn(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tn;
  }

  /// The label for Turkey.
  String tr(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tr;
  }

  /// The label for Turkmenistan.
  String tm(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tm;
  }

  /// The label for Turks and Caicos Islands.
  String tc(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tc;
  }

  /// The label for Tuvalu.
  String tv(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tv;
  }

  /// The label for Uganda.
  String ug(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ug;
  }

  /// The label for Ukraine.
  String ua(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ua;
  }

  /// The label for United Arab Emirates.
  String ae(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ae;
  }

  /// The label for United Kingdom.
  String gb(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gb;
  }

  /// The label for United States Minor Outlying Islands.
  String um(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).um;
  }

  /// The label for United States.
  String us(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).us;
  }

  /// The label for Uruguay.
  String uy(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).uy;
  }

  /// The label for Uzbekistan.
  String uz(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).uz;
  }

  /// The label for Vanuatu.
  String vu(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).vu;
  }

  /// The label for Venezuela (Bolivarian Republic of).
  String ve(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ve;
  }

  /// The label for Vietnam.
  String vn(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).vn;
  }

  /// The label for Virgin Islands (British).
  String vg(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).vg;
  }

  /// The label for Virgin Islands (US).
  String vi(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).vi;
  }

  /// The label for Wallis and Futuna.
  String wf(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).wf;
  }

  /// The label for Yemen.
  String ye(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ye;
  }

  /// The label for Zambia.
  String zm(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).zm;
  }

  /// The label for Zimbabwe.
  String zw(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).zw;
  }

  @override
  String resolve(BuildContext context, DialCodeResolverKey key) {
    switch (key) {
      case DialCodeResolverKey.selectDialCode:
        return selectDialCode(context);
      case DialCodeResolverKey.noDialCodeSearchResults:
        return noDialCodeSearchResults(context);
      case DialCodeResolverKey.af$:
        return af(context);
      case DialCodeResolverKey.ax$:
        return ax(context);
      case DialCodeResolverKey.al$:
        return al(context);
      case DialCodeResolverKey.dz$:
        return dz(context);
      case DialCodeResolverKey.as1$:
        return as1(context);
      case DialCodeResolverKey.ad$:
        return ad(context);
      case DialCodeResolverKey.ao$:
        return ao(context);
      case DialCodeResolverKey.ai$:
        return ai(context);
      case DialCodeResolverKey.aq$:
        return aq(context);
      case DialCodeResolverKey.ag$:
        return ag(context);
      case DialCodeResolverKey.ar$:
        return ar(context);
      case DialCodeResolverKey.am$:
        return am(context);
      case DialCodeResolverKey.aw$:
        return aw(context);
      case DialCodeResolverKey.au$:
        return au(context);
      case DialCodeResolverKey.at$:
        return at(context);
      case DialCodeResolverKey.az$:
        return az(context);
      case DialCodeResolverKey.bs$:
        return bs(context);
      case DialCodeResolverKey.bh$:
        return bh(context);
      case DialCodeResolverKey.bd$:
        return bd(context);
      case DialCodeResolverKey.bb$:
        return bb(context);
      case DialCodeResolverKey.by$:
        return by(context);
      case DialCodeResolverKey.be$:
        return be(context);
      case DialCodeResolverKey.bz$:
        return bz(context);
      case DialCodeResolverKey.bj$:
        return bj(context);
      case DialCodeResolverKey.bm$:
        return bm(context);
      case DialCodeResolverKey.bt$:
        return bt(context);
      case DialCodeResolverKey.bo$:
        return bo(context);
      case DialCodeResolverKey.bq$:
        return bq(context);
      case DialCodeResolverKey.ba$:
        return ba(context);
      case DialCodeResolverKey.bw$:
        return bw(context);
      case DialCodeResolverKey.br$:
        return br(context);
      case DialCodeResolverKey.io$:
        return io(context);
      case DialCodeResolverKey.bn$:
        return bn(context);
      case DialCodeResolverKey.bg$:
        return bg(context);
      case DialCodeResolverKey.bf$:
        return bf(context);
      case DialCodeResolverKey.bi$:
        return bi(context);
      case DialCodeResolverKey.kh$:
        return kh(context);
      case DialCodeResolverKey.cm$:
        return cm(context);
      case DialCodeResolverKey.ca$:
        return ca(context);
      case DialCodeResolverKey.cv$:
        return cv(context);
      case DialCodeResolverKey.ky$:
        return ky(context);
      case DialCodeResolverKey.cf$:
        return cf(context);
      case DialCodeResolverKey.td$:
        return td(context);
      case DialCodeResolverKey.cl$:
        return cl(context);
      case DialCodeResolverKey.cn$:
        return cn(context);
      case DialCodeResolverKey.cx$:
        return cx(context);
      case DialCodeResolverKey.cc$:
        return cc(context);
      case DialCodeResolverKey.co$:
        return co(context);
      case DialCodeResolverKey.km$:
        return km(context);
      case DialCodeResolverKey.cg$:
        return cg(context);
      case DialCodeResolverKey.cd$:
        return cd(context);
      case DialCodeResolverKey.ck$:
        return ck(context);
      case DialCodeResolverKey.cr$:
        return cr(context);
      case DialCodeResolverKey.ci$:
        return ci(context);
      case DialCodeResolverKey.hr$:
        return hr(context);
      case DialCodeResolverKey.cu$:
        return cu(context);
      case DialCodeResolverKey.cy$:
        return cy(context);
      case DialCodeResolverKey.cz$:
        return cz(context);
      case DialCodeResolverKey.dk$:
        return dk(context);
      case DialCodeResolverKey.dj$:
        return dj(context);
      case DialCodeResolverKey.dm$:
        return dm(context);
      case DialCodeResolverKey.do1$:
        return do1(context);
      case DialCodeResolverKey.ec$:
        return ec(context);
      case DialCodeResolverKey.eg$:
        return eg(context);
      case DialCodeResolverKey.sv$:
        return sv(context);
      case DialCodeResolverKey.gq$:
        return gq(context);
      case DialCodeResolverKey.er$:
        return er(context);
      case DialCodeResolverKey.ee$:
        return ee(context);
      case DialCodeResolverKey.sz$:
        return sz(context);
      case DialCodeResolverKey.et$:
        return et(context);
      case DialCodeResolverKey.fk$:
        return fk(context);
      case DialCodeResolverKey.fo$:
        return fo(context);
      case DialCodeResolverKey.fj$:
        return fj(context);
      case DialCodeResolverKey.fi$:
        return fi(context);
      case DialCodeResolverKey.fr$:
        return fr(context);
      case DialCodeResolverKey.gf$:
        return gf(context);
      case DialCodeResolverKey.pf$:
        return pf(context);
      case DialCodeResolverKey.ga$:
        return ga(context);
      case DialCodeResolverKey.gm$:
        return gm(context);
      case DialCodeResolverKey.ge$:
        return ge(context);
      case DialCodeResolverKey.de$:
        return de(context);
      case DialCodeResolverKey.gh$:
        return gh(context);
      case DialCodeResolverKey.gi$:
        return gi(context);
      case DialCodeResolverKey.gr$:
        return gr(context);
      case DialCodeResolverKey.gl$:
        return gl(context);
      case DialCodeResolverKey.gd$:
        return gd(context);
      case DialCodeResolverKey.gp$:
        return gp(context);
      case DialCodeResolverKey.gu$:
        return gu(context);
      case DialCodeResolverKey.gt$:
        return gt(context);
      case DialCodeResolverKey.gg$:
        return gg(context);
      case DialCodeResolverKey.gn$:
        return gn(context);
      case DialCodeResolverKey.gw$:
        return gw(context);
      case DialCodeResolverKey.gy$:
        return gy(context);
      case DialCodeResolverKey.ht$:
        return ht(context);
      case DialCodeResolverKey.va$:
        return va(context);
      case DialCodeResolverKey.hn$:
        return hn(context);
      case DialCodeResolverKey.hk$:
        return hk(context);
      case DialCodeResolverKey.hu$:
        return hu(context);
      case DialCodeResolverKey.is1$:
        return is1(context);
      case DialCodeResolverKey.in1$:
        return in1(context);
      case DialCodeResolverKey.id$:
        return id(context);
      case DialCodeResolverKey.ir$:
        return ir(context);
      case DialCodeResolverKey.iq$:
        return iq(context);
      case DialCodeResolverKey.ie$:
        return ie(context);
      case DialCodeResolverKey.im$:
        return im(context);
      case DialCodeResolverKey.il$:
        return il(context);
      case DialCodeResolverKey.it$:
        return it(context);
      case DialCodeResolverKey.jm$:
        return jm(context);
      case DialCodeResolverKey.jp$:
        return jp(context);
      case DialCodeResolverKey.je$:
        return je(context);
      case DialCodeResolverKey.jo$:
        return jo(context);
      case DialCodeResolverKey.kz$:
        return kz(context);
      case DialCodeResolverKey.ke$:
        return ke(context);
      case DialCodeResolverKey.ki$:
        return ki(context);
      case DialCodeResolverKey.kp$:
        return kp(context);
      case DialCodeResolverKey.kr$:
        return kr(context);
      case DialCodeResolverKey.xk$:
        return xk(context);
      case DialCodeResolverKey.kw$:
        return kw(context);
      case DialCodeResolverKey.kg$:
        return kg(context);
      case DialCodeResolverKey.la$:
        return la(context);
      case DialCodeResolverKey.lv$:
        return lv(context);
      case DialCodeResolverKey.lb$:
        return lb(context);
      case DialCodeResolverKey.ls$:
        return ls(context);
      case DialCodeResolverKey.lr$:
        return lr(context);
      case DialCodeResolverKey.ly$:
        return ly(context);
      case DialCodeResolverKey.li$:
        return li(context);
      case DialCodeResolverKey.lt$:
        return lt(context);
      case DialCodeResolverKey.lu$:
        return lu(context);
      case DialCodeResolverKey.mo$:
        return mo(context);
      case DialCodeResolverKey.mk$:
        return mk(context);
      case DialCodeResolverKey.mg$:
        return mg(context);
      case DialCodeResolverKey.mw$:
        return mw(context);
      case DialCodeResolverKey.my$:
        return my(context);
      case DialCodeResolverKey.mv$:
        return mv(context);
      case DialCodeResolverKey.ml$:
        return ml(context);
      case DialCodeResolverKey.mt$:
        return mt(context);
      case DialCodeResolverKey.mh$:
        return mh(context);
      case DialCodeResolverKey.mq$:
        return mq(context);
      case DialCodeResolverKey.mr$:
        return mr(context);
      case DialCodeResolverKey.mu$:
        return mu(context);
      case DialCodeResolverKey.yt$:
        return yt(context);
      case DialCodeResolverKey.mx$:
        return mx(context);
      case DialCodeResolverKey.fm$:
        return fm(context);
      case DialCodeResolverKey.md$:
        return md(context);
      case DialCodeResolverKey.mc$:
        return mc(context);
      case DialCodeResolverKey.mn$:
        return mn(context);
      case DialCodeResolverKey.me$:
        return me(context);
      case DialCodeResolverKey.ms$:
        return ms(context);
      case DialCodeResolverKey.ma$:
        return ma(context);
      case DialCodeResolverKey.mz$:
        return mz(context);
      case DialCodeResolverKey.mm$:
        return mm(context);
      case DialCodeResolverKey.na$:
        return na(context);
      case DialCodeResolverKey.nr$:
        return nr(context);
      case DialCodeResolverKey.np$:
        return np(context);
      case DialCodeResolverKey.nl$:
        return nl(context);
      case DialCodeResolverKey.nc$:
        return nc(context);
      case DialCodeResolverKey.nz$:
        return nz(context);
      case DialCodeResolverKey.ni$:
        return ni(context);
      case DialCodeResolverKey.ne$:
        return ne(context);
      case DialCodeResolverKey.ng$:
        return ng(context);
      case DialCodeResolverKey.nu$:
        return nu(context);
      case DialCodeResolverKey.nf$:
        return nf(context);
      case DialCodeResolverKey.mp$:
        return mp(context);
      case DialCodeResolverKey.no$:
        return no(context);
      case DialCodeResolverKey.om$:
        return om(context);
      case DialCodeResolverKey.pk$:
        return pk(context);
      case DialCodeResolverKey.pw$:
        return pw(context);
      case DialCodeResolverKey.ps$:
        return ps(context);
      case DialCodeResolverKey.pa$:
        return pa(context);
      case DialCodeResolverKey.pg$:
        return pg(context);
      case DialCodeResolverKey.py$:
        return py(context);
      case DialCodeResolverKey.pe$:
        return pe(context);
      case DialCodeResolverKey.ph$:
        return ph(context);
      case DialCodeResolverKey.pn$:
        return pn(context);
      case DialCodeResolverKey.pl$:
        return pl(context);
      case DialCodeResolverKey.pt$:
        return pt(context);
      case DialCodeResolverKey.pr$:
        return pr(context);
      case DialCodeResolverKey.qa$:
        return qa(context);
      case DialCodeResolverKey.re$:
        return re(context);
      case DialCodeResolverKey.ro$:
        return ro(context);
      case DialCodeResolverKey.ru$:
        return ru(context);
      case DialCodeResolverKey.rw$:
        return rw(context);
      case DialCodeResolverKey.bl$:
        return bl(context);
      case DialCodeResolverKey.sh$:
        return sh(context);
      case DialCodeResolverKey.kn$:
        return kn(context);
      case DialCodeResolverKey.lc$:
        return lc(context);
      case DialCodeResolverKey.mf$:
        return mf(context);
      case DialCodeResolverKey.pm$:
        return pm(context);
      case DialCodeResolverKey.vc$:
        return vc(context);
      case DialCodeResolverKey.ws$:
        return ws(context);
      case DialCodeResolverKey.sm$:
        return sm(context);
      case DialCodeResolverKey.st$:
        return st(context);
      case DialCodeResolverKey.sa$:
        return sa(context);
      case DialCodeResolverKey.sn$:
        return sn(context);
      case DialCodeResolverKey.rs$:
        return rs(context);
      case DialCodeResolverKey.sc$:
        return sc(context);
      case DialCodeResolverKey.sl$:
        return sl(context);
      case DialCodeResolverKey.sg$:
        return sg(context);
      case DialCodeResolverKey.sk$:
        return sk(context);
      case DialCodeResolverKey.si$:
        return si(context);
      case DialCodeResolverKey.sb$:
        return sb(context);
      case DialCodeResolverKey.so$:
        return so(context);
      case DialCodeResolverKey.za$:
        return za(context);
      case DialCodeResolverKey.gs$:
        return gs(context);
      case DialCodeResolverKey.ss$:
        return ss(context);
      case DialCodeResolverKey.es$:
        return es(context);
      case DialCodeResolverKey.lk$:
        return lk(context);
      case DialCodeResolverKey.sd$:
        return sd(context);
      case DialCodeResolverKey.sr$:
        return sr(context);
      case DialCodeResolverKey.sj$:
        return sj(context);
      case DialCodeResolverKey.se$:
        return se(context);
      case DialCodeResolverKey.ch$:
        return ch(context);
      case DialCodeResolverKey.sy$:
        return sy(context);
      case DialCodeResolverKey.tw$:
        return tw(context);
      case DialCodeResolverKey.tj$:
        return tj(context);
      case DialCodeResolverKey.tz$:
        return tz(context);
      case DialCodeResolverKey.th$:
        return th(context);
      case DialCodeResolverKey.tl$:
        return tl(context);
      case DialCodeResolverKey.tg$:
        return tg(context);
      case DialCodeResolverKey.tk$:
        return tk(context);
      case DialCodeResolverKey.to$:
        return to(context);
      case DialCodeResolverKey.tt$:
        return tt(context);
      case DialCodeResolverKey.tn$:
        return tn(context);
      case DialCodeResolverKey.tr$:
        return tr(context);
      case DialCodeResolverKey.tm$:
        return tm(context);
      case DialCodeResolverKey.tc$:
        return tc(context);
      case DialCodeResolverKey.tv$:
        return tv(context);
      case DialCodeResolverKey.ug$:
        return ug(context);
      case DialCodeResolverKey.ua$:
        return ua(context);
      case DialCodeResolverKey.ae$:
        return ae(context);
      case DialCodeResolverKey.gb$:
        return gb(context);
      case DialCodeResolverKey.um$:
        return um(context);
      case DialCodeResolverKey.us$:
        return us(context);
      case DialCodeResolverKey.uy$:
        return uy(context);
      case DialCodeResolverKey.uz$:
        return uz(context);
      case DialCodeResolverKey.vu$:
        return vu(context);
      case DialCodeResolverKey.ve$:
        return ve(context);
      case DialCodeResolverKey.vn$:
        return vn(context);
      case DialCodeResolverKey.vg$:
        return vg(context);
      case DialCodeResolverKey.vi$:
        return vi(context);
      case DialCodeResolverKey.wf$:
        return wf(context);
      case DialCodeResolverKey.ye$:
        return ye(context);
      case DialCodeResolverKey.zm$:
        return zm(context);
      case DialCodeResolverKey.zw$:
        return zw(context);
    }
  }
}
