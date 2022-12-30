// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/l10n/resolver.dart';
import 'package:flutter/material.dart';

enum CountryResolverKey {
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
  zw$
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
  String resolve(BuildContext context, CountryResolverKey key) {
    switch (key) {
      case CountryResolverKey.selectDialCode:
        return selectDialCode(context);
      case CountryResolverKey.noDialCodeSearchResults:
        return noDialCodeSearchResults(context);
      case CountryResolverKey.af$:
        return af(context);
      case CountryResolverKey.ax$:
        return ax(context);
      case CountryResolverKey.al$:
        return al(context);
      case CountryResolverKey.dz$:
        return dz(context);
      case CountryResolverKey.as1$:
        return as1(context);
      case CountryResolverKey.ad$:
        return ad(context);
      case CountryResolverKey.ao$:
        return ao(context);
      case CountryResolverKey.ai$:
        return ai(context);
      case CountryResolverKey.aq$:
        return aq(context);
      case CountryResolverKey.ag$:
        return ag(context);
      case CountryResolverKey.ar$:
        return ar(context);
      case CountryResolverKey.am$:
        return am(context);
      case CountryResolverKey.aw$:
        return aw(context);
      case CountryResolverKey.au$:
        return au(context);
      case CountryResolverKey.at$:
        return at(context);
      case CountryResolverKey.az$:
        return az(context);
      case CountryResolverKey.bs$:
        return bs(context);
      case CountryResolverKey.bh$:
        return bh(context);
      case CountryResolverKey.bd$:
        return bd(context);
      case CountryResolverKey.bb$:
        return bb(context);
      case CountryResolverKey.by$:
        return by(context);
      case CountryResolverKey.be$:
        return be(context);
      case CountryResolverKey.bz$:
        return bz(context);
      case CountryResolverKey.bj$:
        return bj(context);
      case CountryResolverKey.bm$:
        return bm(context);
      case CountryResolverKey.bt$:
        return bt(context);
      case CountryResolverKey.bo$:
        return bo(context);
      case CountryResolverKey.bq$:
        return bq(context);
      case CountryResolverKey.ba$:
        return ba(context);
      case CountryResolverKey.bw$:
        return bw(context);
      case CountryResolverKey.br$:
        return br(context);
      case CountryResolverKey.io$:
        return io(context);
      case CountryResolverKey.bn$:
        return bn(context);
      case CountryResolverKey.bg$:
        return bg(context);
      case CountryResolverKey.bf$:
        return bf(context);
      case CountryResolverKey.bi$:
        return bi(context);
      case CountryResolverKey.kh$:
        return kh(context);
      case CountryResolverKey.cm$:
        return cm(context);
      case CountryResolverKey.ca$:
        return ca(context);
      case CountryResolverKey.cv$:
        return cv(context);
      case CountryResolverKey.ky$:
        return ky(context);
      case CountryResolverKey.cf$:
        return cf(context);
      case CountryResolverKey.td$:
        return td(context);
      case CountryResolverKey.cl$:
        return cl(context);
      case CountryResolverKey.cn$:
        return cn(context);
      case CountryResolverKey.cx$:
        return cx(context);
      case CountryResolverKey.cc$:
        return cc(context);
      case CountryResolverKey.co$:
        return co(context);
      case CountryResolverKey.km$:
        return km(context);
      case CountryResolverKey.cg$:
        return cg(context);
      case CountryResolverKey.cd$:
        return cd(context);
      case CountryResolverKey.ck$:
        return ck(context);
      case CountryResolverKey.cr$:
        return cr(context);
      case CountryResolverKey.ci$:
        return ci(context);
      case CountryResolverKey.hr$:
        return hr(context);
      case CountryResolverKey.cu$:
        return cu(context);
      case CountryResolverKey.cy$:
        return cy(context);
      case CountryResolverKey.cz$:
        return cz(context);
      case CountryResolverKey.dk$:
        return dk(context);
      case CountryResolverKey.dj$:
        return dj(context);
      case CountryResolverKey.dm$:
        return dm(context);
      case CountryResolverKey.do1$:
        return do1(context);
      case CountryResolverKey.ec$:
        return ec(context);
      case CountryResolverKey.eg$:
        return eg(context);
      case CountryResolverKey.sv$:
        return sv(context);
      case CountryResolverKey.gq$:
        return gq(context);
      case CountryResolverKey.er$:
        return er(context);
      case CountryResolverKey.ee$:
        return ee(context);
      case CountryResolverKey.sz$:
        return sz(context);
      case CountryResolverKey.et$:
        return et(context);
      case CountryResolverKey.fk$:
        return fk(context);
      case CountryResolverKey.fo$:
        return fo(context);
      case CountryResolverKey.fj$:
        return fj(context);
      case CountryResolverKey.fi$:
        return fi(context);
      case CountryResolverKey.fr$:
        return fr(context);
      case CountryResolverKey.gf$:
        return gf(context);
      case CountryResolverKey.pf$:
        return pf(context);
      case CountryResolverKey.ga$:
        return ga(context);
      case CountryResolverKey.gm$:
        return gm(context);
      case CountryResolverKey.ge$:
        return ge(context);
      case CountryResolverKey.de$:
        return de(context);
      case CountryResolverKey.gh$:
        return gh(context);
      case CountryResolverKey.gi$:
        return gi(context);
      case CountryResolverKey.gr$:
        return gr(context);
      case CountryResolverKey.gl$:
        return gl(context);
      case CountryResolverKey.gd$:
        return gd(context);
      case CountryResolverKey.gp$:
        return gp(context);
      case CountryResolverKey.gu$:
        return gu(context);
      case CountryResolverKey.gt$:
        return gt(context);
      case CountryResolverKey.gg$:
        return gg(context);
      case CountryResolverKey.gn$:
        return gn(context);
      case CountryResolverKey.gw$:
        return gw(context);
      case CountryResolverKey.gy$:
        return gy(context);
      case CountryResolverKey.ht$:
        return ht(context);
      case CountryResolverKey.va$:
        return va(context);
      case CountryResolverKey.hn$:
        return hn(context);
      case CountryResolverKey.hk$:
        return hk(context);
      case CountryResolverKey.hu$:
        return hu(context);
      case CountryResolverKey.is1$:
        return is1(context);
      case CountryResolverKey.in1$:
        return in1(context);
      case CountryResolverKey.id$:
        return id(context);
      case CountryResolverKey.ir$:
        return ir(context);
      case CountryResolverKey.iq$:
        return iq(context);
      case CountryResolverKey.ie$:
        return ie(context);
      case CountryResolverKey.im$:
        return im(context);
      case CountryResolverKey.il$:
        return il(context);
      case CountryResolverKey.it$:
        return it(context);
      case CountryResolverKey.jm$:
        return jm(context);
      case CountryResolverKey.jp$:
        return jp(context);
      case CountryResolverKey.je$:
        return je(context);
      case CountryResolverKey.jo$:
        return jo(context);
      case CountryResolverKey.kz$:
        return kz(context);
      case CountryResolverKey.ke$:
        return ke(context);
      case CountryResolverKey.ki$:
        return ki(context);
      case CountryResolverKey.kp$:
        return kp(context);
      case CountryResolverKey.kr$:
        return kr(context);
      case CountryResolverKey.xk$:
        return xk(context);
      case CountryResolverKey.kw$:
        return kw(context);
      case CountryResolverKey.kg$:
        return kg(context);
      case CountryResolverKey.la$:
        return la(context);
      case CountryResolverKey.lv$:
        return lv(context);
      case CountryResolverKey.lb$:
        return lb(context);
      case CountryResolverKey.ls$:
        return ls(context);
      case CountryResolverKey.lr$:
        return lr(context);
      case CountryResolverKey.ly$:
        return ly(context);
      case CountryResolverKey.li$:
        return li(context);
      case CountryResolverKey.lt$:
        return lt(context);
      case CountryResolverKey.lu$:
        return lu(context);
      case CountryResolverKey.mo$:
        return mo(context);
      case CountryResolverKey.mk$:
        return mk(context);
      case CountryResolverKey.mg$:
        return mg(context);
      case CountryResolverKey.mw$:
        return mw(context);
      case CountryResolverKey.my$:
        return my(context);
      case CountryResolverKey.mv$:
        return mv(context);
      case CountryResolverKey.ml$:
        return ml(context);
      case CountryResolverKey.mt$:
        return mt(context);
      case CountryResolverKey.mh$:
        return mh(context);
      case CountryResolverKey.mq$:
        return mq(context);
      case CountryResolverKey.mr$:
        return mr(context);
      case CountryResolverKey.mu$:
        return mu(context);
      case CountryResolverKey.yt$:
        return yt(context);
      case CountryResolverKey.mx$:
        return mx(context);
      case CountryResolverKey.fm$:
        return fm(context);
      case CountryResolverKey.md$:
        return md(context);
      case CountryResolverKey.mc$:
        return mc(context);
      case CountryResolverKey.mn$:
        return mn(context);
      case CountryResolverKey.me$:
        return me(context);
      case CountryResolverKey.ms$:
        return ms(context);
      case CountryResolverKey.ma$:
        return ma(context);
      case CountryResolverKey.mz$:
        return mz(context);
      case CountryResolverKey.mm$:
        return mm(context);
      case CountryResolverKey.na$:
        return na(context);
      case CountryResolverKey.nr$:
        return nr(context);
      case CountryResolverKey.np$:
        return np(context);
      case CountryResolverKey.nl$:
        return nl(context);
      case CountryResolverKey.nc$:
        return nc(context);
      case CountryResolverKey.nz$:
        return nz(context);
      case CountryResolverKey.ni$:
        return ni(context);
      case CountryResolverKey.ne$:
        return ne(context);
      case CountryResolverKey.ng$:
        return ng(context);
      case CountryResolverKey.nu$:
        return nu(context);
      case CountryResolverKey.nf$:
        return nf(context);
      case CountryResolverKey.mp$:
        return mp(context);
      case CountryResolverKey.no$:
        return no(context);
      case CountryResolverKey.om$:
        return om(context);
      case CountryResolverKey.pk$:
        return pk(context);
      case CountryResolverKey.pw$:
        return pw(context);
      case CountryResolverKey.ps$:
        return ps(context);
      case CountryResolverKey.pa$:
        return pa(context);
      case CountryResolverKey.pg$:
        return pg(context);
      case CountryResolverKey.py$:
        return py(context);
      case CountryResolverKey.pe$:
        return pe(context);
      case CountryResolverKey.ph$:
        return ph(context);
      case CountryResolverKey.pn$:
        return pn(context);
      case CountryResolverKey.pl$:
        return pl(context);
      case CountryResolverKey.pt$:
        return pt(context);
      case CountryResolverKey.pr$:
        return pr(context);
      case CountryResolverKey.qa$:
        return qa(context);
      case CountryResolverKey.re$:
        return re(context);
      case CountryResolverKey.ro$:
        return ro(context);
      case CountryResolverKey.ru$:
        return ru(context);
      case CountryResolverKey.rw$:
        return rw(context);
      case CountryResolverKey.bl$:
        return bl(context);
      case CountryResolverKey.sh$:
        return sh(context);
      case CountryResolverKey.kn$:
        return kn(context);
      case CountryResolverKey.lc$:
        return lc(context);
      case CountryResolverKey.mf$:
        return mf(context);
      case CountryResolverKey.pm$:
        return pm(context);
      case CountryResolverKey.vc$:
        return vc(context);
      case CountryResolverKey.ws$:
        return ws(context);
      case CountryResolverKey.sm$:
        return sm(context);
      case CountryResolverKey.st$:
        return st(context);
      case CountryResolverKey.sa$:
        return sa(context);
      case CountryResolverKey.sn$:
        return sn(context);
      case CountryResolverKey.rs$:
        return rs(context);
      case CountryResolverKey.sc$:
        return sc(context);
      case CountryResolverKey.sl$:
        return sl(context);
      case CountryResolverKey.sg$:
        return sg(context);
      case CountryResolverKey.sk$:
        return sk(context);
      case CountryResolverKey.si$:
        return si(context);
      case CountryResolverKey.sb$:
        return sb(context);
      case CountryResolverKey.so$:
        return so(context);
      case CountryResolverKey.za$:
        return za(context);
      case CountryResolverKey.gs$:
        return gs(context);
      case CountryResolverKey.ss$:
        return ss(context);
      case CountryResolverKey.es$:
        return es(context);
      case CountryResolverKey.lk$:
        return lk(context);
      case CountryResolverKey.sd$:
        return sd(context);
      case CountryResolverKey.sr$:
        return sr(context);
      case CountryResolverKey.sj$:
        return sj(context);
      case CountryResolverKey.se$:
        return se(context);
      case CountryResolverKey.ch$:
        return ch(context);
      case CountryResolverKey.sy$:
        return sy(context);
      case CountryResolverKey.tw$:
        return tw(context);
      case CountryResolverKey.tj$:
        return tj(context);
      case CountryResolverKey.tz$:
        return tz(context);
      case CountryResolverKey.th$:
        return th(context);
      case CountryResolverKey.tl$:
        return tl(context);
      case CountryResolverKey.tg$:
        return tg(context);
      case CountryResolverKey.tk$:
        return tk(context);
      case CountryResolverKey.to$:
        return to(context);
      case CountryResolverKey.tt$:
        return tt(context);
      case CountryResolverKey.tn$:
        return tn(context);
      case CountryResolverKey.tr$:
        return tr(context);
      case CountryResolverKey.tm$:
        return tm(context);
      case CountryResolverKey.tc$:
        return tc(context);
      case CountryResolverKey.tv$:
        return tv(context);
      case CountryResolverKey.ug$:
        return ug(context);
      case CountryResolverKey.ua$:
        return ua(context);
      case CountryResolverKey.ae$:
        return ae(context);
      case CountryResolverKey.gb$:
        return gb(context);
      case CountryResolverKey.um$:
        return um(context);
      case CountryResolverKey.us$:
        return us(context);
      case CountryResolverKey.uy$:
        return uy(context);
      case CountryResolverKey.uz$:
        return uz(context);
      case CountryResolverKey.vu$:
        return vu(context);
      case CountryResolverKey.ve$:
        return ve(context);
      case CountryResolverKey.vn$:
        return vn(context);
      case CountryResolverKey.vg$:
        return vg(context);
      case CountryResolverKey.vi$:
        return vi(context);
      case CountryResolverKey.wf$:
        return wf(context);
      case CountryResolverKey.ye$:
        return ye(context);
      case CountryResolverKey.zm$:
        return zm(context);
      case CountryResolverKey.zw$:
        return zw(context);
    }
  }
}
