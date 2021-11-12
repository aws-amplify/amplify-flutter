// ignore_for_file: constant_identifier_names, non_constant_identifier_names

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
  an$,
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
  ro$,
  ru$,
  rw$,
  re$,
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
  ss$,
  gs$,
  es$,
  lk$,
  sd$,
  sr$,
  sj$,
  sz$,
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

  String af$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).af;
  }

  String ax$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ax;
  }

  String al$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).al;
  }

  String dz$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).dz;
  }

  String as1$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).as1;
  }

  String ad$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ad;
  }

  String ao$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ao;
  }

  String ai$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ai;
  }

  String aq$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).aq;
  }

  String ag$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ag;
  }

  String ar$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ar;
  }

  String am$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).am;
  }

  String aw$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).aw;
  }

  String au$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).au;
  }

  String at$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).at;
  }

  String az$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).az;
  }

  String bs$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bs;
  }

  String bh$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bh;
  }

  String bd$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bd;
  }

  String bb$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bb;
  }

  String by$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).by;
  }

  String be$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).be;
  }

  String bz$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bz;
  }

  String bj$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bj;
  }

  String bm$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bm;
  }

  String bt$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bt;
  }

  String bo$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bo;
  }

  String ba$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ba;
  }

  String bw$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bw;
  }

  String br$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).br;
  }

  String io$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).io;
  }

  String bn$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bn;
  }

  String bg$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bg;
  }

  String bf$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bf;
  }

  String bi$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bi;
  }

  String kh$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kh;
  }

  String cm$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cm;
  }

  String ca$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ca;
  }

  String cv$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cv;
  }

  String ky$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ky;
  }

  String cf$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cf;
  }

  String td$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).td;
  }

  String cl$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cl;
  }

  String cn$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cn;
  }

  String cx$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cx;
  }

  String cc$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cc;
  }

  String co$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).co;
  }

  String km$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).km;
  }

  String cg$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cg;
  }

  String cd$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cd;
  }

  String ck$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ck;
  }

  String cr$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cr;
  }

  String ci$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ci;
  }

  String hr$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).hr;
  }

  String cu$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cu;
  }

  String cy$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cy;
  }

  String cz$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).cz;
  }

  String dk$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).dk;
  }

  String dj$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).dj;
  }

  String dm$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).dm;
  }

  String do1$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).do1;
  }

  String ec$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ec;
  }

  String eg$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).eg;
  }

  String sv$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sv;
  }

  String gq$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gq;
  }

  String er$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).er;
  }

  String ee$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ee;
  }

  String et$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).et;
  }

  String fk$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).fk;
  }

  String fo$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).fo;
  }

  String fj$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).fj;
  }

  String fi$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).fi;
  }

  String fr$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).fr;
  }

  String gf$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gf;
  }

  String pf$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pf;
  }

  String ga$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ga;
  }

  String gm$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gm;
  }

  String ge$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ge;
  }

  String de$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).de;
  }

  String gh$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gh;
  }

  String gi$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gi;
  }

  String gr$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gr;
  }

  String gl$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gl;
  }

  String gd$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gd;
  }

  String gp$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gp;
  }

  String gu$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gu;
  }

  String gt$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gt;
  }

  String gg$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gg;
  }

  String gn$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gn;
  }

  String gw$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gw;
  }

  String gy$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gy;
  }

  String ht$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ht;
  }

  String va$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).va;
  }

  String hn$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).hn;
  }

  String hk$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).hk;
  }

  String hu$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).hu;
  }

  String is1$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).is1;
  }

  String in1$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).in1;
  }

  String id$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).id;
  }

  String ir$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ir;
  }

  String iq$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).iq;
  }

  String ie$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ie;
  }

  String im$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).im;
  }

  String il$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).il;
  }

  String it$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).it;
  }

  String jm$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).jm;
  }

  String jp$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).jp;
  }

  String je$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).je;
  }

  String jo$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).jo;
  }

  String kz$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kz;
  }

  String ke$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ke;
  }

  String ki$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ki;
  }

  String kp$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kp;
  }

  String kr$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kr;
  }

  String kw$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kw;
  }

  String kg$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kg;
  }

  String la$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).la;
  }

  String lv$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lv;
  }

  String lb$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lb;
  }

  String ls$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ls;
  }

  String lr$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lr;
  }

  String ly$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ly;
  }

  String li$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).li;
  }

  String lt$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lt;
  }

  String lu$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lu;
  }

  String mo$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mo;
  }

  String mk$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mk;
  }

  String mg$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mg;
  }

  String mw$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mw;
  }

  String my$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).my;
  }

  String mv$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mv;
  }

  String ml$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ml;
  }

  String mt$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mt;
  }

  String mh$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mh;
  }

  String mq$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mq;
  }

  String mr$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mr;
  }

  String mu$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mu;
  }

  String yt$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).yt;
  }

  String mx$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mx;
  }

  String fm$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).fm;
  }

  String md$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).md;
  }

  String mc$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mc;
  }

  String mn$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mn;
  }

  String me$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).me;
  }

  String ms$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ms;
  }

  String ma$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ma;
  }

  String mz$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mz;
  }

  String mm$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mm;
  }

  String na$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).na;
  }

  String nr$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nr;
  }

  String np$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).np;
  }

  String nl$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nl;
  }

  String an$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).an;
  }

  String nc$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nc;
  }

  String nz$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nz;
  }

  String ni$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ni;
  }

  String ne$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ne;
  }

  String ng$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ng;
  }

  String nu$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nu;
  }

  String nf$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).nf;
  }

  String mp$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mp;
  }

  String no$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).no;
  }

  String om$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).om;
  }

  String pk$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pk;
  }

  String pw$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pw;
  }

  String ps$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ps;
  }

  String pa$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pa;
  }

  String pg$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pg;
  }

  String py$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).py;
  }

  String pe$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pe;
  }

  String ph$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ph;
  }

  String pn$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pn;
  }

  String pl$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pl;
  }

  String pt$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pt;
  }

  String pr$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pr;
  }

  String qa$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).qa;
  }

  String ro$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ro;
  }

  String ru$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ru;
  }

  String rw$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).rw;
  }

  String re$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).re;
  }

  String bl$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).bl;
  }

  String sh$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sh;
  }

  String kn$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).kn;
  }

  String lc$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lc;
  }

  String mf$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).mf;
  }

  String pm$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).pm;
  }

  String vc$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).vc;
  }

  String ws$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ws;
  }

  String sm$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sm;
  }

  String st$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).st;
  }

  String sa$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sa;
  }

  String sn$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sn;
  }

  String rs$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).rs;
  }

  String sc$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sc;
  }

  String sl$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sl;
  }

  String sg$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sg;
  }

  String sk$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sk;
  }

  String si$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).si;
  }

  String sb$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sb;
  }

  String so$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).so;
  }

  String za$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).za;
  }

  String ss$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ss;
  }

  String gs$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gs;
  }

  String es$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).es;
  }

  String lk$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).lk;
  }

  String sd$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sd;
  }

  String sr$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sr;
  }

  String sj$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sj;
  }

  String sz$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sz;
  }

  String se$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).se;
  }

  String ch$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ch;
  }

  String sy$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).sy;
  }

  String tw$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tw;
  }

  String tj$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tj;
  }

  String tz$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tz;
  }

  String th$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).th;
  }

  String tl$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tl;
  }

  String tg$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tg;
  }

  String tk$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tk;
  }

  String to$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).to;
  }

  String tt$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tt;
  }

  String tn$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tn;
  }

  String tr$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tr;
  }

  String tm$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tm;
  }

  String tc$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tc;
  }

  String tv$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).tv;
  }

  String ug$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ug;
  }

  String ua$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ua;
  }

  String ae$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ae;
  }

  String gb$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).gb;
  }

  String us$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).us;
  }

  String uy$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).uy;
  }

  String uz$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).uz;
  }

  String vu$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).vu;
  }

  String ve$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ve;
  }

  String vn$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).vn;
  }

  String vg$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).vg;
  }

  String vi$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).vi;
  }

  String wf$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).wf;
  }

  String ye$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).ye;
  }

  String zm$(BuildContext context) {
    return AuthenticatorLocalizations.countriesOf(context).zm;
  }

  String zw$(BuildContext context) {
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
        return af$(context);
      case CountryResolverKey.ax$:
        return ax$(context);
      case CountryResolverKey.al$:
        return al$(context);
      case CountryResolverKey.dz$:
        return dz$(context);
      case CountryResolverKey.as1$:
        return as1$(context);
      case CountryResolverKey.ad$:
        return ad$(context);
      case CountryResolverKey.ao$:
        return ao$(context);
      case CountryResolverKey.ai$:
        return ai$(context);
      case CountryResolverKey.aq$:
        return aq$(context);
      case CountryResolverKey.ag$:
        return ag$(context);
      case CountryResolverKey.ar$:
        return ar$(context);
      case CountryResolverKey.am$:
        return am$(context);
      case CountryResolverKey.aw$:
        return aw$(context);
      case CountryResolverKey.au$:
        return au$(context);
      case CountryResolverKey.at$:
        return at$(context);
      case CountryResolverKey.az$:
        return az$(context);
      case CountryResolverKey.bs$:
        return bs$(context);
      case CountryResolverKey.bh$:
        return bh$(context);
      case CountryResolverKey.bd$:
        return bd$(context);
      case CountryResolverKey.bb$:
        return bb$(context);
      case CountryResolverKey.by$:
        return by$(context);
      case CountryResolverKey.be$:
        return be$(context);
      case CountryResolverKey.bz$:
        return bz$(context);
      case CountryResolverKey.bj$:
        return bj$(context);
      case CountryResolverKey.bm$:
        return bm$(context);
      case CountryResolverKey.bt$:
        return bt$(context);
      case CountryResolverKey.bo$:
        return bo$(context);
      case CountryResolverKey.ba$:
        return ba$(context);
      case CountryResolverKey.bw$:
        return bw$(context);
      case CountryResolverKey.br$:
        return br$(context);
      case CountryResolverKey.io$:
        return io$(context);
      case CountryResolverKey.bn$:
        return bn$(context);
      case CountryResolverKey.bg$:
        return bg$(context);
      case CountryResolverKey.bf$:
        return bf$(context);
      case CountryResolverKey.bi$:
        return bi$(context);
      case CountryResolverKey.kh$:
        return kh$(context);
      case CountryResolverKey.cm$:
        return cm$(context);
      case CountryResolverKey.ca$:
        return ca$(context);
      case CountryResolverKey.cv$:
        return cv$(context);
      case CountryResolverKey.ky$:
        return ky$(context);
      case CountryResolverKey.cf$:
        return cf$(context);
      case CountryResolverKey.td$:
        return td$(context);
      case CountryResolverKey.cl$:
        return cl$(context);
      case CountryResolverKey.cn$:
        return cn$(context);
      case CountryResolverKey.cx$:
        return cx$(context);
      case CountryResolverKey.cc$:
        return cc$(context);
      case CountryResolverKey.co$:
        return co$(context);
      case CountryResolverKey.km$:
        return km$(context);
      case CountryResolverKey.cg$:
        return cg$(context);
      case CountryResolverKey.cd$:
        return cd$(context);
      case CountryResolverKey.ck$:
        return ck$(context);
      case CountryResolverKey.cr$:
        return cr$(context);
      case CountryResolverKey.ci$:
        return ci$(context);
      case CountryResolverKey.hr$:
        return hr$(context);
      case CountryResolverKey.cu$:
        return cu$(context);
      case CountryResolverKey.cy$:
        return cy$(context);
      case CountryResolverKey.cz$:
        return cz$(context);
      case CountryResolverKey.dk$:
        return dk$(context);
      case CountryResolverKey.dj$:
        return dj$(context);
      case CountryResolverKey.dm$:
        return dm$(context);
      case CountryResolverKey.do1$:
        return do1$(context);
      case CountryResolverKey.ec$:
        return ec$(context);
      case CountryResolverKey.eg$:
        return eg$(context);
      case CountryResolverKey.sv$:
        return sv$(context);
      case CountryResolverKey.gq$:
        return gq$(context);
      case CountryResolverKey.er$:
        return er$(context);
      case CountryResolverKey.ee$:
        return ee$(context);
      case CountryResolverKey.et$:
        return et$(context);
      case CountryResolverKey.fk$:
        return fk$(context);
      case CountryResolverKey.fo$:
        return fo$(context);
      case CountryResolverKey.fj$:
        return fj$(context);
      case CountryResolverKey.fi$:
        return fi$(context);
      case CountryResolverKey.fr$:
        return fr$(context);
      case CountryResolverKey.gf$:
        return gf$(context);
      case CountryResolverKey.pf$:
        return pf$(context);
      case CountryResolverKey.ga$:
        return ga$(context);
      case CountryResolverKey.gm$:
        return gm$(context);
      case CountryResolverKey.ge$:
        return ge$(context);
      case CountryResolverKey.de$:
        return de$(context);
      case CountryResolverKey.gh$:
        return gh$(context);
      case CountryResolverKey.gi$:
        return gi$(context);
      case CountryResolverKey.gr$:
        return gr$(context);
      case CountryResolverKey.gl$:
        return gl$(context);
      case CountryResolverKey.gd$:
        return gd$(context);
      case CountryResolverKey.gp$:
        return gp$(context);
      case CountryResolverKey.gu$:
        return gu$(context);
      case CountryResolverKey.gt$:
        return gt$(context);
      case CountryResolverKey.gg$:
        return gg$(context);
      case CountryResolverKey.gn$:
        return gn$(context);
      case CountryResolverKey.gw$:
        return gw$(context);
      case CountryResolverKey.gy$:
        return gy$(context);
      case CountryResolverKey.ht$:
        return ht$(context);
      case CountryResolverKey.va$:
        return va$(context);
      case CountryResolverKey.hn$:
        return hn$(context);
      case CountryResolverKey.hk$:
        return hk$(context);
      case CountryResolverKey.hu$:
        return hu$(context);
      case CountryResolverKey.is1$:
        return is1$(context);
      case CountryResolverKey.in1$:
        return in1$(context);
      case CountryResolverKey.id$:
        return id$(context);
      case CountryResolverKey.ir$:
        return ir$(context);
      case CountryResolverKey.iq$:
        return iq$(context);
      case CountryResolverKey.ie$:
        return ie$(context);
      case CountryResolverKey.im$:
        return im$(context);
      case CountryResolverKey.il$:
        return il$(context);
      case CountryResolverKey.it$:
        return it$(context);
      case CountryResolverKey.jm$:
        return jm$(context);
      case CountryResolverKey.jp$:
        return jp$(context);
      case CountryResolverKey.je$:
        return je$(context);
      case CountryResolverKey.jo$:
        return jo$(context);
      case CountryResolverKey.kz$:
        return kz$(context);
      case CountryResolverKey.ke$:
        return ke$(context);
      case CountryResolverKey.ki$:
        return ki$(context);
      case CountryResolverKey.kp$:
        return kp$(context);
      case CountryResolverKey.kr$:
        return kr$(context);
      case CountryResolverKey.kw$:
        return kw$(context);
      case CountryResolverKey.kg$:
        return kg$(context);
      case CountryResolverKey.la$:
        return la$(context);
      case CountryResolverKey.lv$:
        return lv$(context);
      case CountryResolverKey.lb$:
        return lb$(context);
      case CountryResolverKey.ls$:
        return ls$(context);
      case CountryResolverKey.lr$:
        return lr$(context);
      case CountryResolverKey.ly$:
        return ly$(context);
      case CountryResolverKey.li$:
        return li$(context);
      case CountryResolverKey.lt$:
        return lt$(context);
      case CountryResolverKey.lu$:
        return lu$(context);
      case CountryResolverKey.mo$:
        return mo$(context);
      case CountryResolverKey.mk$:
        return mk$(context);
      case CountryResolverKey.mg$:
        return mg$(context);
      case CountryResolverKey.mw$:
        return mw$(context);
      case CountryResolverKey.my$:
        return my$(context);
      case CountryResolverKey.mv$:
        return mv$(context);
      case CountryResolverKey.ml$:
        return ml$(context);
      case CountryResolverKey.mt$:
        return mt$(context);
      case CountryResolverKey.mh$:
        return mh$(context);
      case CountryResolverKey.mq$:
        return mq$(context);
      case CountryResolverKey.mr$:
        return mr$(context);
      case CountryResolverKey.mu$:
        return mu$(context);
      case CountryResolverKey.yt$:
        return yt$(context);
      case CountryResolverKey.mx$:
        return mx$(context);
      case CountryResolverKey.fm$:
        return fm$(context);
      case CountryResolverKey.md$:
        return md$(context);
      case CountryResolverKey.mc$:
        return mc$(context);
      case CountryResolverKey.mn$:
        return mn$(context);
      case CountryResolverKey.me$:
        return me$(context);
      case CountryResolverKey.ms$:
        return ms$(context);
      case CountryResolverKey.ma$:
        return ma$(context);
      case CountryResolverKey.mz$:
        return mz$(context);
      case CountryResolverKey.mm$:
        return mm$(context);
      case CountryResolverKey.na$:
        return na$(context);
      case CountryResolverKey.nr$:
        return nr$(context);
      case CountryResolverKey.np$:
        return np$(context);
      case CountryResolverKey.nl$:
        return nl$(context);
      case CountryResolverKey.an$:
        return an$(context);
      case CountryResolverKey.nc$:
        return nc$(context);
      case CountryResolverKey.nz$:
        return nz$(context);
      case CountryResolverKey.ni$:
        return ni$(context);
      case CountryResolverKey.ne$:
        return ne$(context);
      case CountryResolverKey.ng$:
        return ng$(context);
      case CountryResolverKey.nu$:
        return nu$(context);
      case CountryResolverKey.nf$:
        return nf$(context);
      case CountryResolverKey.mp$:
        return mp$(context);
      case CountryResolverKey.no$:
        return no$(context);
      case CountryResolverKey.om$:
        return om$(context);
      case CountryResolverKey.pk$:
        return pk$(context);
      case CountryResolverKey.pw$:
        return pw$(context);
      case CountryResolverKey.ps$:
        return ps$(context);
      case CountryResolverKey.pa$:
        return pa$(context);
      case CountryResolverKey.pg$:
        return pg$(context);
      case CountryResolverKey.py$:
        return py$(context);
      case CountryResolverKey.pe$:
        return pe$(context);
      case CountryResolverKey.ph$:
        return ph$(context);
      case CountryResolverKey.pn$:
        return pn$(context);
      case CountryResolverKey.pl$:
        return pl$(context);
      case CountryResolverKey.pt$:
        return pt$(context);
      case CountryResolverKey.pr$:
        return pr$(context);
      case CountryResolverKey.qa$:
        return qa$(context);
      case CountryResolverKey.ro$:
        return ro$(context);
      case CountryResolverKey.ru$:
        return ru$(context);
      case CountryResolverKey.rw$:
        return rw$(context);
      case CountryResolverKey.re$:
        return re$(context);
      case CountryResolverKey.bl$:
        return bl$(context);
      case CountryResolverKey.sh$:
        return sh$(context);
      case CountryResolverKey.kn$:
        return kn$(context);
      case CountryResolverKey.lc$:
        return lc$(context);
      case CountryResolverKey.mf$:
        return mf$(context);
      case CountryResolverKey.pm$:
        return pm$(context);
      case CountryResolverKey.vc$:
        return vc$(context);
      case CountryResolverKey.ws$:
        return ws$(context);
      case CountryResolverKey.sm$:
        return sm$(context);
      case CountryResolverKey.st$:
        return st$(context);
      case CountryResolverKey.sa$:
        return sa$(context);
      case CountryResolverKey.sn$:
        return sn$(context);
      case CountryResolverKey.rs$:
        return rs$(context);
      case CountryResolverKey.sc$:
        return sc$(context);
      case CountryResolverKey.sl$:
        return sl$(context);
      case CountryResolverKey.sg$:
        return sg$(context);
      case CountryResolverKey.sk$:
        return sk$(context);
      case CountryResolverKey.si$:
        return si$(context);
      case CountryResolverKey.sb$:
        return sb$(context);
      case CountryResolverKey.so$:
        return so$(context);
      case CountryResolverKey.za$:
        return za$(context);
      case CountryResolverKey.ss$:
        return ss$(context);
      case CountryResolverKey.gs$:
        return gs$(context);
      case CountryResolverKey.es$:
        return es$(context);
      case CountryResolverKey.lk$:
        return lk$(context);
      case CountryResolverKey.sd$:
        return sd$(context);
      case CountryResolverKey.sr$:
        return sr$(context);
      case CountryResolverKey.sj$:
        return sj$(context);
      case CountryResolverKey.sz$:
        return sz$(context);
      case CountryResolverKey.se$:
        return se$(context);
      case CountryResolverKey.ch$:
        return ch$(context);
      case CountryResolverKey.sy$:
        return sy$(context);
      case CountryResolverKey.tw$:
        return tw$(context);
      case CountryResolverKey.tj$:
        return tj$(context);
      case CountryResolverKey.tz$:
        return tz$(context);
      case CountryResolverKey.th$:
        return th$(context);
      case CountryResolverKey.tl$:
        return tl$(context);
      case CountryResolverKey.tg$:
        return tg$(context);
      case CountryResolverKey.tk$:
        return tk$(context);
      case CountryResolverKey.to$:
        return to$(context);
      case CountryResolverKey.tt$:
        return tt$(context);
      case CountryResolverKey.tn$:
        return tn$(context);
      case CountryResolverKey.tr$:
        return tr$(context);
      case CountryResolverKey.tm$:
        return tm$(context);
      case CountryResolverKey.tc$:
        return tc$(context);
      case CountryResolverKey.tv$:
        return tv$(context);
      case CountryResolverKey.ug$:
        return ug$(context);
      case CountryResolverKey.ua$:
        return ua$(context);
      case CountryResolverKey.ae$:
        return ae$(context);
      case CountryResolverKey.gb$:
        return gb$(context);
      case CountryResolverKey.us$:
        return us$(context);
      case CountryResolverKey.uy$:
        return uy$(context);
      case CountryResolverKey.uz$:
        return uz$(context);
      case CountryResolverKey.vu$:
        return vu$(context);
      case CountryResolverKey.ve$:
        return ve$(context);
      case CountryResolverKey.vn$:
        return vn$(context);
      case CountryResolverKey.vg$:
        return vg$(context);
      case CountryResolverKey.vi$:
        return vi$(context);
      case CountryResolverKey.wf$:
        return wf$(context);
      case CountryResolverKey.ye$:
        return ye$(context);
      case CountryResolverKey.zm$:
        return zm$(context);
      case CountryResolverKey.zw$:
        return zw$(context);
    }
  }
}
