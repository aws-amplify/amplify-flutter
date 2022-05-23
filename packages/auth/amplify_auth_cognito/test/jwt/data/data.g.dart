// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// This is a generated file. DO NOT EDIT.
/// Run `script/generate_data.dart` to regenerate this data.

// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars

import 'package:amplify_auth_cognito/src/jwt/jwt.dart';

import 'test_case.dart';

const HS256_private_jwk = '''
  {
  "use": "sig",
  "kty": "oct",
  "alg": "HS256",
  "k": "VUdkaUg5WjJUUkphUWhBOU92ckpUT2pJeTR0SlRCTnc"
}
  ''';

const HS256_public_jwk = '''
  {
  "use": "sig",
  "kty": "oct",
  "alg": "HS256",
  "k": "VUdkaUg5WjJUUkphUWhBOU92ckpUT2pJeTR0SlRCTnc"
}
  ''';

const HS384_private_jwk = '''
  {
  "use": "sig",
  "kty": "oct",
  "alg": "HS384",
  "k": "eU9KZDJLczNveDllQjFzbGxPSEhwWFBHMXBKcUJ0NDU"
}
  ''';

const HS384_public_jwk = '''
  {
  "use": "sig",
  "kty": "oct",
  "alg": "HS384",
  "k": "eU9KZDJLczNveDllQjFzbGxPSEhwWFBHMXBKcUJ0NDU"
}
  ''';

const HS512_private_jwk = '''
  {
  "use": "sig",
  "kty": "oct",
  "alg": "HS512",
  "k": "NkxjeDY0Y1JPemVSNnoxZ29lZ3hCbkgxWDNEdktTZk8"
}
  ''';

const HS512_public_jwk = '''
  {
  "use": "sig",
  "kty": "oct",
  "alg": "HS512",
  "k": "NkxjeDY0Y1JPemVSNnoxZ29lZ3hCbkgxWDNEdktTZk8"
}
  ''';

const RS256_private_jwk = '''
  {
  "use": "sig",
  "kty": "RSA",
  "kid": "UX85WKq9T7XauzcZKsmZISLy0c1w7ULBe8r_Ui-7qio",
  "alg": "RS256",
  "n": "0hq-BwK3SEejgAZf4vTzyfGpF2eK8tEXtMiJISXL4ZApDxfNKXwLZZvkd43VesYvykkGYC33FxMKt2eZSAfVG_TfZ2dY4PPWLxEKB88MWFQ7NlraerC-Zb7NvPrbIg2wVo7HSw7GZK3EvPkPw3qSQzNv2mlWEkGRTEnocfjGsgpMuctl_lK9UIopLCVb2W-ntgqXpXAv5myLPVY1YtrBHLdrTzSYuOC6tPx49v6oah-DRtPvURjANWwV6nQqKPSbyEY2G-JASkl3pnOmiAmZsxoW9MN_Hpm4ecm98ThrPbkEbRIDhbV4pIQVfzU0AQEHWZSmyvXEtNuoVXVQKUnGpQ",
  "e": "AQAB",
  "d": "gqwPM90EkPe9QIq2aDlgxmB-ggfr60kQLWfroaoYO5mlb7Wl6_8yN2fVmGWmOE26u1zfkkIEQ12cdKUCOEJm0JRjvbQRGxeMRomaa3DihK0ehpfK-jOitzUMUFTUpUFOQwdZ-9ycl1Fb4wwkObep8BG1p2mMFp6g94mgAAJx0Zhlnl5QOaCi7MZmLxmydnq91x5O51nY3-lsfTjNHooGk_uAMFao9rIokmpYMnRw75R324xlaFcEad2IqfJ7mh2MHpL49z5pwtcH5jLkDirQ1_RYRpiJh6yR9KC2xI7MjEHjlCJ5sfhqxjzh-tcSki2hO-z1q-PoOflLo_U4gV3YoQ",
  "p": "30Jis6KplT7-hCnbus3p9tK_qe1zmSCPB5G1melH4Fqp86lWg8WMnWUwbobUKL27xZZIi9OLcEIFA9GM2XKwCOUQ8fSyGdbaKcSDnBC-f78OC_WpOoOBEUpGGbJ8mGWiMZByGz3cI49tCegSCDTUliQFzbNLer-hSZv45hQZh7s",
  "q": "8Op_EJGEszbRt93cSRB2vbBRX1aOZkZtvbZYveWoJlw-FCNWXGp9rAetOVZPjvkUjs-E5qa5swdwMw-9OZ7YqGq5t0BQjVhytCY0G_HZTUlhm_xvO2jc5rAs_06GqDeDzo2Z117MPR-xphi2qEwyjPwwbU-UDfpxp6XVrB0wFR8",
  "dp": "1KsMEkm0eLKVB5hH8t4LLE78vAWwxAC7vl4SOxZ4nUI_-hcojkUz-QpW5DITDuwNXd4WJPvSK5D37fdC0C_rd82cIp8QuIRtNLQ5GgTpMg7wdnwAQ_jYjXvO4tOe1BycL9KEn2aBuG37VCB4bNDGYG7YCGXuVHMOVGv64E_tMdk",
  "dq": "Z-J2UEqvkif9Xu_IYak7yqgRLq9AUFHmWHwc4CX70C7OhhiG0OsKrffRdnwFan11o-9QO7WBNfXrJ9mNmx8oBdefpamSEqElNRGUPsiXD4CpGn5L6K5bMw6dGKpf3oGx0Iu23uv93g2gqSLXANN6qNjGeRxrl2t7PvN_o-wiI7k",
  "qi": "PG_QmwNgvpWkqGalYPwmRyro8liPXMM-xs6EuwppQC56wOIi-rTiI6TtxMAn8fyjXBOtJVsasRV-kRjCI1YlbuTOogbQL5GdD4Lx23KTQ1Vdu4LFLTzbQ1-SCfrU72OKCMgV0YE-_NVeqxLtZeWptttliligXaoVhLmOLBmHlE8"
}
  ''';

const RS256_public_jwk = '''
  {
  "use": "sig",
  "kty": "RSA",
  "kid": "UX85WKq9T7XauzcZKsmZISLy0c1w7ULBe8r_Ui-7qio",
  "alg": "RS256",
  "n": "0hq-BwK3SEejgAZf4vTzyfGpF2eK8tEXtMiJISXL4ZApDxfNKXwLZZvkd43VesYvykkGYC33FxMKt2eZSAfVG_TfZ2dY4PPWLxEKB88MWFQ7NlraerC-Zb7NvPrbIg2wVo7HSw7GZK3EvPkPw3qSQzNv2mlWEkGRTEnocfjGsgpMuctl_lK9UIopLCVb2W-ntgqXpXAv5myLPVY1YtrBHLdrTzSYuOC6tPx49v6oah-DRtPvURjANWwV6nQqKPSbyEY2G-JASkl3pnOmiAmZsxoW9MN_Hpm4ecm98ThrPbkEbRIDhbV4pIQVfzU0AQEHWZSmyvXEtNuoVXVQKUnGpQ",
  "e": "AQAB"
}
  ''';

const RS384_private_jwk = '''
  {
  "use": "sig",
  "kty": "RSA",
  "kid": "Csje-j6zEFaRI39WUWPJpcJPkNcUTtr13e8y6pX2NSc",
  "alg": "RS384",
  "n": "v8jnnIhrymW4MKs8psrqNPVUKVb1-H2QLy4IHivw8XNzKac6KoaSb5hKFNOOfrTW9Ph_CMYFmp8or8RoQVzGOR9Xmeag7ZJEYtLJJyrCY3poEQKOQH5O_sdmsyKiicX4BHCJ5bqb5525tCtKTvECLjWV9Hsxl3JwVAz-N4Rnzz0PcdEB5BEZ9PinLnzdYrtKpWoF02cSqe83737PCvShSVyS3KgYYNz79FFVn42nxiwX6fXSv1PE2l150OI-0rVf16-MFEcyNjV9uBRVJugQ-VNkHmFkYnGiBipQkAq_OgSXDlTz8C_JylX_8vq78vb33fynyErewoaBFdfQnfh5Pw",
  "e": "AQAB",
  "d": "g5YvBAG-I4KjXBFBbhdvlqJ0-mBGKBbO5PAqdbkkeiYCcCPjDuaCdrsAqUV2UY12p2IQl0527d4iJmcWOTKUdwEANAI_jIF9FmkVxx_ZfDOyT2l3fNytCrZ5ypMK_oisYS9uDgd5jPN1RR8mvv8xxc7ScopMPmMwmxrHGgRozZEg7JIwvTF91Hah1AGk5dLe0PEPR3-X3tJIsshfnnM9wYcgx5ERzX6ly9OtFy9vJ5tHZhDHbXyvVXEZ9nL2IcaURKu8EwEYJDgBdF-ecLHkajsoNaNqamSncQfhWWDQCxKEdgJbqby7eUbiBD1cdW5pKh0Ihwuq_pNmHmcE64M2wQ",
  "p": "0BkIqLrOjfMv5u5wEMYlfkdUnFtByGZv1skkf5H1aakHnhL9ZR51doCdN5RDE9XTyX-uYY0dlEBySJZnc1Mh0zNKPvsFqvDOYq88z9Hn-vR866Kn21ccP5oOBQdaMP4XoySaEKr3-gK7QrzKEuomtfioga8m-mxWf_vJmIOFbS8",
  "q": "6-6QaTJbOgxNdSRZlXhvSTKN4O6ax0LQQnrvo_pIzmlpCj9EJY17zfJEJlzWbGkp0kXux4DeP4cvhn4BzMfjIOiTzIT50mQWlT4OQwzU4Tg0ROYB4lNy4zQ9zZIVH5fg-hqs6Dv7PZcESJMYWK0dMRkROjetZ7BGOgAq9lUiUPE",
  "dp": "KPYEglHi_oXz09zzKhoWnzijKvO7ixq-wORuzr2INPgUi8TpI9JPBLhkOeBxI6JfQbZkOMdyHxBgbnFMg6LFcbES2DrI7tDfjwU3TyDeLMObIzatG7uVz98fC1ZbJnGdbXty5_z_OrL28Tf__qEgZYlAgeZcIcbZb--7ys14ofk",
  "dq": "AiVFQu-mTLzX53zRI77YpD3FdIo29iDxa-laTI92IgprXiB9KipDOfg-DmtBt_Ks4rCoH0BYxRMhp4N12Lrood_7mByNeRBX9DuAPbPcK8ArGYVN9xTzMoXDGh99-a-T6DJd6C7DdiftbguIaSYJ4exsb68Z8Jt1yAlAWsUjbsE",
  "qi": "Y4S3u8Sbq8Z80RCzK9xk6b12CQqVwDOXXNnA-AuhWhNGy0s-2QaLEDwsh7rDKPreR8LR8p96ZnlpbByFIhLQoyqWrbCNkmucZGTSayPAyKfcNyKya9o0S2CVJ2DmlctTSJKO63i8f__h_wS1SLksa3QL0QF3YfYvMnssFTrCfFg"
}
  ''';

const RS384_public_jwk = '''
  {
  "use": "sig",
  "kty": "RSA",
  "kid": "Csje-j6zEFaRI39WUWPJpcJPkNcUTtr13e8y6pX2NSc",
  "alg": "RS384",
  "n": "v8jnnIhrymW4MKs8psrqNPVUKVb1-H2QLy4IHivw8XNzKac6KoaSb5hKFNOOfrTW9Ph_CMYFmp8or8RoQVzGOR9Xmeag7ZJEYtLJJyrCY3poEQKOQH5O_sdmsyKiicX4BHCJ5bqb5525tCtKTvECLjWV9Hsxl3JwVAz-N4Rnzz0PcdEB5BEZ9PinLnzdYrtKpWoF02cSqe83737PCvShSVyS3KgYYNz79FFVn42nxiwX6fXSv1PE2l150OI-0rVf16-MFEcyNjV9uBRVJugQ-VNkHmFkYnGiBipQkAq_OgSXDlTz8C_JylX_8vq78vb33fynyErewoaBFdfQnfh5Pw",
  "e": "AQAB"
}
  ''';

const RS512_private_jwk = '''
  {
  "use": "sig",
  "kty": "RSA",
  "kid": "ezb9UryK0qi_9ULNhz_K3X6VRrz9f3KZQLL5Wdobfhc",
  "alg": "RS512",
  "n": "5F9WNpipjcDjkz86QJ-bb5VvTTf9DWRVLz5mF1yahBHOjKWI9fZdINdF3kyfDt1J-Xd_keUP2bJ9k1odgL9BAG7b3xqMup6YMd1Yx5ccC0u65h2obIGtVPoSf9R3HzpU1VmKR06R8BYUdQu_EfABEWXCaHLrhWdpRYtMUGaPkq3eCyQ-mNYpvgytejhFA7s9xbVsJAZKb-cQuKhYrcVFsqy_MtzkWKGG2kBhHUN7ouf1O_HiOEOBw4S1BguKvIWtVmoHXogBQ4vke1j7Jo9Vk1ImI8Gn9Tb8KeW428WgZWlAVtX-1RHB5s625rS7iIDV6IvBoUoKtjRQuYiEkQ1NQw",
  "e": "AQAB",
  "d": "GGY_NdIVu3lyVxcYSDNFTiSvIZbryHSBzWxjR_ey4o1sfgZpna3WwV1-r4OMMvBdqPOlg5bvnJi_ZfDo2gqVDVDK2QljI8UyCZHWnGx-qI5Mx60_g2hPdpbJRzMSDxoSWkEYzwmL-hTB1seMgIQd-RfgL3ynwTcNPkrlumlayZbqPb1MQBDD9uVGeLjgIc7UK8obtGtP0ZsNFD_ZioINrFSJcWci5eUhaUq4rVZ_A-jPZDHMCb3AJg7JAZ_r5LIv6EF9UN1OYAGUVB8QGlUuDvsCnG9C8tu4EPSNAP4itb_hHNSvhDhRKcd0OQvHpL9Tm_q1i42xi9RAv356hgJzMQ",
  "p": "58nQSEckTPsfuLQC2atnGy48QJpEosI3zkLdTNvT2CxEJV5eVd9Du2fKRLZbqZNESoJ80iuQ1btU8gcuCrXpX68VGork0-JzdJUb6HwFPY1uKh4zZ54az_JbYVsopILmMmmXtK-tUahgtHQlfhh3AmqnsrgowImEFb0lhdUgB3U",
  "q": "_Dotyvsng7YVfSWVZbCNPoBuADsKQaPIBd4arwPmc_IcDO0dgz-sD4IayGH2psIQNJiCSg1dH5JaWlfSHFaHqS-nM_Yg1B9cSDSAVkDCF0kyYtn6yXCINpNb6S2UADQFePOKCAK9Fbchq49xTtJHYb1GpN_MWt0jmISkJWXTotc",
  "dp": "YnzvQnbwJsGh1fKvL1xUYElCEtU6CsppufvRWqIhnr4YaqRxgx1uA0hzusSdqC1KHDrb3NXkId0KmBiS6LwpIJ4dYnzYBGw5ULU2-Y8RDvl0cPMKNqIIlIlPaMu6NkTkmVEixATNqV_ZT3P2pmCw2NcG0LrNnhoQhMgtFHPduy0",
  "dq": "6D7F1aZnHw81QDOwGZ90nv1wzEOQ0Rn23vhBB7AGrfJbw8c9qpGhY_I_qQ0TKT993oAjT_54Jc8D5TYCINfIOI_JXL4gQlHSDiZRmZotXXWnsH_YPU2iDuam9dFi-sDr3RAao_-pjeo_VZJSGerjkWrQNpZfu7btxM01u73EHqc",
  "qi": "LklnqVZEZY-CwBiKAcw2xniH-de3ptKBku273FwV2QGHlsG6U5AoAee3VFBFO3e_TtawTXL_Ber1leaootl5X2waSzQK5EPgOnp5oRNtGVmzkIyCxTW1uE_Ai6wU9UaC0qAEe6bDZFrHKos6wC1BxWzpPGljrndZs_uPW4waTHY"
}
  ''';

const RS512_public_jwk = '''
  {
  "use": "sig",
  "kty": "RSA",
  "kid": "ezb9UryK0qi_9ULNhz_K3X6VRrz9f3KZQLL5Wdobfhc",
  "alg": "RS512",
  "n": "5F9WNpipjcDjkz86QJ-bb5VvTTf9DWRVLz5mF1yahBHOjKWI9fZdINdF3kyfDt1J-Xd_keUP2bJ9k1odgL9BAG7b3xqMup6YMd1Yx5ccC0u65h2obIGtVPoSf9R3HzpU1VmKR06R8BYUdQu_EfABEWXCaHLrhWdpRYtMUGaPkq3eCyQ-mNYpvgytejhFA7s9xbVsJAZKb-cQuKhYrcVFsqy_MtzkWKGG2kBhHUN7ouf1O_HiOEOBw4S1BguKvIWtVmoHXogBQ4vke1j7Jo9Vk1ImI8Gn9Tb8KeW428WgZWlAVtX-1RHB5s625rS7iIDV6IvBoUoKtjRQuYiEkQ1NQw",
  "e": "AQAB"
}
  ''';

const ES256_private_jwk = '''
  {
  "use": "sig",
  "kty": "EC",
  "kid": "sj3Bg8QkO7TEGHh-pUSiPtReebn3XpFnH139DYdMn4E",
  "crv": "P-256",
  "alg": "ES256",
  "x": "Ly42lWPXjbhZ_LQ-KjFHAYx0MucBOjI_kiThSxAtuZg",
  "y": "qa1ECXlvWDpHFaLhJckyW5IPgOekO756xscQtT-QMQ4",
  "d": "5wX2I3EBozO5jSvtuJ6CMWI8hN92fdc70tMsNfwBJ-s"
}
  ''';

const ES256_public_jwk = '''
  {
  "use": "sig",
  "kty": "EC",
  "kid": "sj3Bg8QkO7TEGHh-pUSiPtReebn3XpFnH139DYdMn4E",
  "crv": "P-256",
  "alg": "ES256",
  "x": "Ly42lWPXjbhZ_LQ-KjFHAYx0MucBOjI_kiThSxAtuZg",
  "y": "qa1ECXlvWDpHFaLhJckyW5IPgOekO756xscQtT-QMQ4"
}
  ''';

const ES384_private_jwk = '''
  {
  "use": "sig",
  "kty": "EC",
  "kid": "Q5C2GGwpyLBnLN-V4BAK3edT3X0s6vOsXc0_ctPaKk0",
  "crv": "P-384",
  "alg": "ES384",
  "x": "QxZGykZzjYvHf8DcHh9xnAfjIM53c7qiQDs0it0Ln38iZVwgCnQpEFsrV46ZtJK8",
  "y": "zqT38CV3rcHQhosOLOAGCIJQ9bC_nfA8yuWOQKhYmtZbVi7uMyIGTpKbqbZH3HTI",
  "d": "ZM3FXgnbHfOfFgOl0q3MHaA8TA8OXJ4SxYwlU9H4jUpycOCeiHO5F-Vd1QU4u51S"
}
  ''';

const ES384_public_jwk = '''
  {
  "use": "sig",
  "kty": "EC",
  "kid": "Q5C2GGwpyLBnLN-V4BAK3edT3X0s6vOsXc0_ctPaKk0",
  "crv": "P-384",
  "alg": "ES384",
  "x": "QxZGykZzjYvHf8DcHh9xnAfjIM53c7qiQDs0it0Ln38iZVwgCnQpEFsrV46ZtJK8",
  "y": "zqT38CV3rcHQhosOLOAGCIJQ9bC_nfA8yuWOQKhYmtZbVi7uMyIGTpKbqbZH3HTI"
}
  ''';

const ES512_private_jwk = '''
  {
  "use": "sig",
  "kty": "EC",
  "kid": "ShrnMaXtQ70I2BeNZwuqORT6YCIkjyVqDma_V6aNiJc",
  "crv": "P-521",
  "alg": "ES512",
  "x": "AekpBQ8ST8a8VcfVOTNl353vSrDCLLJXmPk06wTjxrrjcBpXp5EOnYG_NjFZ6OvLFV1jSfS9tsz4qUxcWceqwQGk",
  "y": "ADSmRA43Z1DSNx_RvcLI87cdL07l6jQyyBXMoxVg_l2Th-x3S1WDhjDly79ajL4Kkd0AZMaZmh9ubmf63e3kyMj2",
  "d": "AY5pb7A0UFiB3RELSD64fTLOSV_jazdF7fLYyuTw8lOfRhWg6Y6rUrPAxerEzgdRhajnu0ferB0d53vM9mE15j2C"
}
  ''';

const ES512_public_jwk = '''
  {
  "use": "sig",
  "kty": "EC",
  "kid": "ShrnMaXtQ70I2BeNZwuqORT6YCIkjyVqDma_V6aNiJc",
  "crv": "P-521",
  "alg": "ES512",
  "x": "AekpBQ8ST8a8VcfVOTNl353vSrDCLLJXmPk06wTjxrrjcBpXp5EOnYG_NjFZ6OvLFV1jSfS9tsz4qUxcWceqwQGk",
  "y": "ADSmRA43Z1DSNx_RvcLI87cdL07l6jQyyBXMoxVg_l2Th-x3S1WDhjDly79ajL4Kkd0AZMaZmh9ubmf63e3kyMj2"
}
  ''';

const PS256_private_jwk = '''
  {
  "use": "sig",
  "kty": "RSA",
  "kid": "5xcyREdLTWN-y09BzuINkYUR4F5ib7Vd_kmL_WHzY9U",
  "alg": "PS256",
  "n": "oprsD9Gs9NPhZww67eqoVH7a04r0gDtuVu3if0RvIBwkrwakGYYa4J2vkSwjyH9DbCvWXY8Zj3K-guMSjLUY_QtxlqnxO3WMfQjzErWICdEyNzXyqpdVMeayXioZfcWb0R6ve1Sl_-szJx4OFJuwTPGAj9mQ7QNwT0VObLh0cqcJZTu9HKPr7wZE1I_4mH_RdOjPZ8rsVunawKTMby4MHH29PIMw2qZNADgHhuUdKGkU8_hLnWxrFPOrucJiAi_iF7h1qK1-NCIZkuiCC0SIIsAW3tcDRAs16xRWbMZMBYEErGsWYpIWK5vH-Lt-oLPJoW5LSaAfFojbDqVfpoUCOw",
  "e": "AQAB",
  "d": "CAYhE_7CzCoQe2dNGSR1PgYsgjffLNzB6yQ-Aw27dhgtbz2ip2fIt8DQQxeshF5TU2kuYNuI5V1CLW9LIQpmu0XvSwID121Li3f_lrLCjcl28uaEnQput9Gsh50IOP6hW8Zp3mok7uYKVinThAzSvFlGgNK5phh_WEoRPqgzhtzHIMgPtf_hr-V0nBrO_Qr7jxpodIgSNWunOSYzY10NFlpaXXb9i0Wj40B41O-3_1NRxd8AUieK2JWMj_YSNywApb-arRfsdqNzxcmBo0-DryLpdBbBCGEczkmiHkd4ykPtUqnflKGOG-s-3s31Oab8_5TRKSX9Mq1xA_uMvOoNwQ",
  "p": "w-RMxfHYMVxRt2bJ0uGJLN8IwBhF4RZ73MMNrCucyV7BDXJZATriYhgt4vRXDBQzJcKxi24eFqMryxLtOiuFXtOt3aFTqfPUyOUoG5z3R0O0IMu7ejWE-tFdjQSteKVqoKRPp7g98lMeNqJkHmxIHGHaMU1x0nO0HSgOY92EvrE",
  "q": "1H_jr5pIqpm9OEnhxDPg590e8mwiMevmGr2s7m2lLE6kaD6UVmQk3-lvnjUalD3nAU4HaIskI1scK5MmrOKuU6G-4mIFAXxPqEno-ZoQifZuOt0a0DXGkooVvs5nG79WisXV6VJfUm7JBdryNVTb32PZEcFamdeomGzMcBywQqs",
  "dp": "MDT-r7fUfFE7yuaAxGS8XU6F2MAgckQWNz3JH5Wb__JRj_2T6bmT_I_2uuNmiJJwA9rl1mpC_U8qd88wkiAjsjJllyUccbaPpuC9_g2izObcbTW17V0-XHspioqcJhSPKPlGoP-2Puw1gzxzZwk-tb1e9MMaP7A5ovM4l1rsUAE",
  "dq": "cXFw8O9RudnnXWR75Y24lK_EdLDrtHD2X_JAnuzkD_pP5OL7t_8wfGUX1IMPFHLTnyuz4sjdWw6pxE2DiSpe3IDt8ddYSsm9kN8cRBxOlgh8ImqlhOAgiVy0bS-tde-42M7y-uOhxdUk9j5DrdsGooSgfs0VfCnYdL8oiPWX148",
  "qi": "jLHxKo9Q5-XbcDSKIALvPx-hCq333-r41yBls47hYwd62h9EOF7JN6tgPp57VKyuoiAVS16YHjfwveVC11S7squAwOHeIVCmpSjloU6f_Mvk1aLX8aW5W6aaRiuthj8gvu2XmTEl1Rh86XL-5SicH17VxdiioEVpzxDBi-Kiwl4"
}
  ''';

const PS256_public_jwk = '''
  {
  "use": "sig",
  "kty": "RSA",
  "kid": "5xcyREdLTWN-y09BzuINkYUR4F5ib7Vd_kmL_WHzY9U",
  "alg": "PS256",
  "n": "oprsD9Gs9NPhZww67eqoVH7a04r0gDtuVu3if0RvIBwkrwakGYYa4J2vkSwjyH9DbCvWXY8Zj3K-guMSjLUY_QtxlqnxO3WMfQjzErWICdEyNzXyqpdVMeayXioZfcWb0R6ve1Sl_-szJx4OFJuwTPGAj9mQ7QNwT0VObLh0cqcJZTu9HKPr7wZE1I_4mH_RdOjPZ8rsVunawKTMby4MHH29PIMw2qZNADgHhuUdKGkU8_hLnWxrFPOrucJiAi_iF7h1qK1-NCIZkuiCC0SIIsAW3tcDRAs16xRWbMZMBYEErGsWYpIWK5vH-Lt-oLPJoW5LSaAfFojbDqVfpoUCOw",
  "e": "AQAB"
}
  ''';

const PS384_private_jwk = '''
  {
  "use": "sig",
  "kty": "RSA",
  "kid": "uSDqhUe4DSLSKFhAL5n94eD40xLMaNV6wPLrbRxsTlw",
  "alg": "PS384",
  "n": "tcXNkpXx0pdGzZPGJMK8cCZL70M0uPKfJyyBaI2-xQ9c_HplNls1_03xSOMAGPaAOdYf1UNR8nvxsYut-U_vdTMZYH46FdAf_I4UCWB6Qt6qQUVUjp0hc_b5XEkBhJTOc2rFFQlhX0X8uHiUsXKLPKYlxgz1FmIcYrsXA5p7tnL92As2eT4oWM4crM9-MwqAkR6_2u9K8vFdPDFWx3z5tYCFPAsH98WxSDEmf2xjec7ynsCt93XcYhFxEsImSecyLdTLZKBDua9RA4qkwHrGBsM8JtVX_Em1L6SV70ZlagTxhzRYJCIiIKPxU2g6q0ovciqlQ6eNzneWcd-NuHvzFw",
  "e": "AQAB",
  "d": "OG0Gu5JAVxcOq5JL1-17gXTh7Yv3OdJXBVoTcdlOdu2l99omwRDfWjlfxThyN02N0GZfy1vyfEttY6fwgYwG0WLjZcjJTywkQcn4_lAso8VrJIfZD8xHLjBkh_lBt15aGAn00-rthx26rakAv3THNDR_VVOAYUpjdWKOalfyP1g83tDwD0JIw7-CISqyz0qDjl1IUZvqZz1De_4YWioxlQZ7Q6aSi4WhGxMk0_-AxaVd7-NqO6v0TUJKxTr97DJgnVd9GMl3CDBHKhfg6bt2OYr9xOtwGiL6WWPfTsHE997cuJgz4iuciSlN3Tx9zWxVrJjyR2sAEroYqhwQ8TqMQQ",
  "p": "z8e7gb6udF6txtH3vAgidJN6MVBcJbpPkcOo0ekLYUdJ5v51Vp76EDZ4tQYPQr0NTjpbRDNIGtcvqffiRYEfSQmMbfGUoIuUg_PRKqBTZBS0RGfhA2IxkhvpFifj_1vgC8BqqK-kGGoMuJE00ZKQbqfpzPzhCxwvXrRnbcazYT0",
  "q": "3_T1BI5wZRPk3fM-l3WJFKMhmojpKp4cLGYXUB2H5Y1rdyeD5asKFgmDSqB4Jc5_W3Ep_fY72ZZGciWS07UlkpICkjI7qJhrWA4Gc1xMbdyzkcUUezBAwCpnu_IN5BJS8ipjP8ioVcIx3Fz_1HxcSzKQL40tTKqA2fb9-bl3QuM",
  "dp": "lLflIcyVmX1a7H_EzbUU1FPqlflquyZLZY2h-_zNxGb-InPnEIThf1E9vHQF4ELojyF9yaba6Ts0RnfCYPU2q1RGSzsqom7FclzFTblLdsrK7Ftd1solqOqJPu52ZoQgLMkgjnSJA2CEkmZ8Y7R_5HQTCEHH4efej-6YSR57rhE",
  "dq": "gsdKZPTAkWXCmhE3Fb7e45w3PUSB1A8sKIkdR_1WpCem_5eln_H3G9NGRcfbIUiqej1k5hZp8K-eR33FdbcsT6DPu4t15wfKd0sJXUgioWzlt1O8mAsfZJfep5O7pNlGcn9qIY8NLbcO4r2z7uMICilmpT3tm_1c7OsceD1jdT0",
  "qi": "nK0QQEk2mA96ePpb1BuIm8JgMhhRx57nWg8U-_Xwb4c5XYOs6L6PbUHQkkOwrFOu-RsSxvhHGrBvSJmybQWcZq8ornwtTjcERwlSZmwEAdW3IjxP0ZFM7M3K6JnRnx_BoDAV26SCkxVrVNBVfZwtzLNzbmyuGEIfsUugZKG_Jq0"
}
  ''';

const PS384_public_jwk = '''
  {
  "use": "sig",
  "kty": "RSA",
  "kid": "uSDqhUe4DSLSKFhAL5n94eD40xLMaNV6wPLrbRxsTlw",
  "alg": "PS384",
  "n": "tcXNkpXx0pdGzZPGJMK8cCZL70M0uPKfJyyBaI2-xQ9c_HplNls1_03xSOMAGPaAOdYf1UNR8nvxsYut-U_vdTMZYH46FdAf_I4UCWB6Qt6qQUVUjp0hc_b5XEkBhJTOc2rFFQlhX0X8uHiUsXKLPKYlxgz1FmIcYrsXA5p7tnL92As2eT4oWM4crM9-MwqAkR6_2u9K8vFdPDFWx3z5tYCFPAsH98WxSDEmf2xjec7ynsCt93XcYhFxEsImSecyLdTLZKBDua9RA4qkwHrGBsM8JtVX_Em1L6SV70ZlagTxhzRYJCIiIKPxU2g6q0ovciqlQ6eNzneWcd-NuHvzFw",
  "e": "AQAB"
}
  ''';

const PS512_private_jwk = '''
  {
  "use": "sig",
  "kty": "RSA",
  "kid": "vLawXgLmtwJhJ5vBm0dgmQI1ZMuCytpoi863b75aLys",
  "alg": "PS512",
  "n": "oSnCJ5PKHo9TefVy_8Ra5lGTddrE1vvi1CREM7EJzxFOooUgKNgIJ2yjFOFOJLs5NKGe_Qdsua-c2JOLNwYJKF_s6WWtIIgdb6tW7eTFEdh8KmApcwsjjmXk0b8_lvVA4SmKYofJh0cZSBpYp4Gp0flsUGdUBEQuBJH2s5hOoIA9HKZnAHQ0OzpUMroiFm1Wsasl1w6t723O6kTwroXamIVqeZn_VLhdBdyKiCdRZyRQkDGFhWXXruiN6VUpT7YG3hfX0V9Ahy5RMTS83TkmJw7tst_LQc4ED_ZgLRcaE9KhRwGVnUEJdaCjAn8Gt-g9SGjW0lxU-rMHtinzeb_5dQ",
  "e": "AQAB",
  "d": "I77nWW_mPLD9iuduAlzC7KLbWiCT2Ds2LGd-2RhDXLIyBsoQP_7qkBQAd_khI_SC07GlWenzq5vP5hmTnzivf00Hdx0eMUD_hm0ycsFzFGo34A5EI0gtMsBW6E7LA-iR418bWo9Tm7WhXeS6FS0lRXVVGOBSOkAFFO5rEZqOlfqBbyBUBaLCI3JKyiHfkwnt4vO-3MUqqLez3yOHn0Hy_i0JVJ5gWtNyYvXZ8owV1DSXmC0kaXPIrmh8xA21Ht4Tt1Jrr3TLvBXVDcoDXgNzJVamfaE3HtyLf5HPl-gBmkS8PgAxuVHyBKkipr6tQHobQyt1Cl4I_6LWPLoHMzk8AQ",
  "p": "0Q1LQCAU7GFc1Ym-OnvSDw8WQMsEUuWjErM4EzC97hYTz7uDsc-T-48H7YZhKTeWHc-XhWPI5iiTnXcvMVKtScJA1sZptl3LA0enidknyZzvRaNzeAUDz4kd3nUQjmbd2MzVweYYl4ArnBoIFhPTXA4vLPRbcNBVAdSju7zq8pU",
  "q": "xVtD_X183zNA2rmrALytBA_ifngIiLlxMDBwW0In-Ofim7MaTROEPHAQQ9DHRwkwuF_d1Fa5yeVFqsP2d7JOJxri7UjxZcvO7OpFvzPZ1GylS49bncSLd4THnU2o032BRztBY2Xwl-IZdaalFQGBBMez9CfGyN-gj648LjSVE2E",
  "dp": "JGcAN4ZenlrF45k8uspc5apm4Zl4g0bhgpwao5zVNeQ6Ru4MHKZcym05oC7KNHcteLtxUxTxIsLmEYFzgk83RaTBzaR3O_5RH50Wm3Zo6z6cm6--p6OX6keiH96ap3FaKCpi_oSmu5rh_Si7R7zkDR-bL2TNl3NvmgYBDOv0rZE",
  "dq": "m8dISYSN1lhMbtlzIyfKoZQwQYdZpSJLN7BkX4Q-rPfMJP4gWop3LIWAMSdQxL96V25EWOED0VtJvFrl5uE1UySjzoxvDtzqvpLE7wFshYIkjxnfRQ7ozzRdo8qy4g0EyEb7fAvw9tIfKoCZeZUwU6eWYbgr7k6mHAN5uTcEHME",
  "qi": "ihDF9CHmTfg629BvXWKK-B7n_77VAPzgiJxqAtVM11kFkMtHWBSLVLYNMKwR7pMMCyCVmSzxWaSh94tWYSZaZIp7avkD_Bp_CaxHE3KvQV9A6bx8OluA4lQa7kx7SSf8tIaSH15r06rbPn37I2Kp6_v987fUDeYv5DDNGZsAi3M"
}
  ''';

const PS512_public_jwk = '''
  {
  "use": "sig",
  "kty": "RSA",
  "kid": "vLawXgLmtwJhJ5vBm0dgmQI1ZMuCytpoi863b75aLys",
  "alg": "PS512",
  "n": "oSnCJ5PKHo9TefVy_8Ra5lGTddrE1vvi1CREM7EJzxFOooUgKNgIJ2yjFOFOJLs5NKGe_Qdsua-c2JOLNwYJKF_s6WWtIIgdb6tW7eTFEdh8KmApcwsjjmXk0b8_lvVA4SmKYofJh0cZSBpYp4Gp0flsUGdUBEQuBJH2s5hOoIA9HKZnAHQ0OzpUMroiFm1Wsasl1w6t723O6kTwroXamIVqeZn_VLhdBdyKiCdRZyRQkDGFhWXXruiN6VUpT7YG3hfX0V9Ahy5RMTS83TkmJw7tst_LQc4ED_ZgLRcaE9KhRwGVnUEJdaCjAn8Gt-g9SGjW0lxU-rMHtinzeb_5dQ",
  "e": "AQAB"
}
  ''';

const HS256_jwt =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJ0ZXN0IiwiZXhwIjoxNjQ2OTU4NTU3LCJpYXQiOjE2NDY5NTc2NTcsImlzcyI6ImZ0YXV0aC5pbyIsImp0aSI6IjYzOTVlNjg1Y2FjMjRlNzk1NjkxMmE1Yzg2OTE5MTNmZmJkNzRiNTZmYzEyNGExM2VhMTYxODZlNzZiM2E3MjkiLCJuYmYiOjE2NDY5NTc2NTcsInN1YiI6InRlc3QifQ.WkJMCGAFfewXlfxRiSyBZMVKzZSvKqk8FFRodedxNpk';

const HS384_jwt =
    'eyJhbGciOiJIUzM4NCIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJ0ZXN0IiwiZXhwIjoxNjQ2OTU4NTU3LCJpYXQiOjE2NDY5NTc2NTcsImlzcyI6ImZ0YXV0aC5pbyIsImp0aSI6ImY4NTc3OWY4ZDZlMWUyNzkzYWIyZGFmNDRhZDc2NTQwOGUyMDdiNWNiMzVkZDBjYTQ3YWM2YWZiNDUzNTg2MmUiLCJuYmYiOjE2NDY5NTc2NTcsInN1YiI6InRlc3QifQ.3UvSrFcBSO5btQWZ6jw7jaslMfO01AA_SKLeHuqkUJLzKXg_lrKlLhOLJ7PBjS1m';

const HS512_jwt =
    'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJ0ZXN0IiwiZXhwIjoxNjQ2OTU4NTU3LCJpYXQiOjE2NDY5NTc2NTcsImlzcyI6ImZ0YXV0aC5pbyIsImp0aSI6IjgwNGZiNzRmZjM0NzVjZTE2N2E3MTg3Y2QwYzFhYjIxNTJlYzliNTg5OTNhNWI4MGJhMTkzMjVlODJlMGE1N2QiLCJuYmYiOjE2NDY5NTc2NTcsInN1YiI6InRlc3QifQ.P56Py5egOGszFZAAbFTZj2TVVWoz317wQ8-Xg9-MwSPfzDPTXGRROj_BhpaZPk9IM2nicIit4AzHnEVZ3qlc8Q';

const RS256_jwt =
    'eyJhbGciOiJSUzI1NiIsImtpZCI6IlVYODVXS3E5VDdYYXV6Y1pLc21aSVNMeTBjMXc3VUxCZThyX1VpLTdxaW8iLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJ0ZXN0IiwiZXhwIjoxNjQ2OTU4NTU3LCJpYXQiOjE2NDY5NTc2NTcsImlzcyI6ImZ0YXV0aC5pbyIsImp0aSI6IjQ1ZjU3OGYxM2E0YTEyNWY1MTdkMDlhMzNhNWJmMzAxZGY5NzA1MTQ5OWYzOTljNWY1MDJiOWE4MTg1ZjQ1MGMiLCJuYmYiOjE2NDY5NTc2NTcsInN1YiI6InRlc3QifQ.K2cMdL6ctDchi8bUbEXnwwWinkrJDPN6RbKS66nLy10mfFYRyhbAt6L5iyaHC-z6Jo0Kwur2uWcf2MymaF5JI3XQx-r-olomJAPzvcyRXKPed5BFWdDr4a9Q-uoSwLVnJEYkMWQGM3_NxYG0XcoapqiDtnjqi8FaJE5LVOB3qZySoLhEy0-ZslwFsQeBvroirqiMoLbc0I3iOkJ1FWWqjIDulix6DqULcuVhGlKJUvp6HRGRF7WhH6Qzhpi1jbRfTSq6a4w8-h4bNVefslLQ09VuQKM16gHwaJ9acA1-jeqM5SDeqCM5gcNMXWjJpQvGdQX0ICv_jJd33BgP0eDvLw';

const RS384_jwt =
    'eyJhbGciOiJSUzM4NCIsImtpZCI6IkNzamUtajZ6RUZhUkkzOVdVV1BKcGNKUGtOY1VUdHIxM2U4eTZwWDJOU2MiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJ0ZXN0IiwiZXhwIjoxNjQ2OTU4NTU3LCJpYXQiOjE2NDY5NTc2NTcsImlzcyI6ImZ0YXV0aC5pbyIsImp0aSI6IjQzOTg2YTI0OWNjNWVmMzUwZGEwOTBmNDYyYTUwZWQ0ZTAxZmRmOTNhMTNjMWQyMWZjMzY2MTIzMTJkZjA3YzQiLCJuYmYiOjE2NDY5NTc2NTcsInN1YiI6InRlc3QifQ.O_HP5yoBd99HxP-7m5T7oHoEiBsXtJV75fOJlcHJyEa0omXd2L1Cdp3cUx-2VpHcsSoKSFcJ2tqxwmwhuAJBHm8gVlpuEZKY-w6f3Vtgpu84xMufk3rXC5huifHLaE4hzuAqN2taDw4NXvmTik0AfNWco-0OZgsAqvLauupOqrUT4TXIg0Ew2Ra0PAdnPbhQCuJt2kC_8uZVAnfLr8s18ydD90sTnYwhUFC2zHdJ0CmWj8pvmKH3-Wz9FZXg6KKYGKwbWtWiH_7IG1DQ7dC-Y_hAnNKdynuWw6M0omMgqqcXjFMOVXIdjv7xbFoTgVH6_1yOBWdAPg2QrZpX5TyJZg';

const RS512_jwt =
    'eyJhbGciOiJSUzUxMiIsImtpZCI6ImV6YjlVcnlLMHFpXzlVTE5oel9LM1g2VlJyejlmM0taUUxMNVdkb2JmaGMiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJ0ZXN0IiwiZXhwIjoxNjQ2OTU4NTU3LCJpYXQiOjE2NDY5NTc2NTcsImlzcyI6ImZ0YXV0aC5pbyIsImp0aSI6ImMzYzMyMjA3ZDM2MDhkNGVkNWQ1MjNjNzFhNWQ3YjllMjkwN2Y4M2E3MGVlMjljMmVkMWQ5NmY3ZGEzMDdmNmQiLCJuYmYiOjE2NDY5NTc2NTcsInN1YiI6InRlc3QifQ.GSlXDDWDx2nB8DrIBskq4-PJchok7ZoVy8fFgSk81LcIl1qvZVZhDbcPTOobvjRmvMEjYcmUZieWLA53pk9Plr-R_zqbCNqFRMxFzNiOQIrxHOLFKYOCtNIHvckD9Rl9sveQ2wxBIW34mVZAQjB0Hh5t046ptBQrerG_sp6w5N53KBjZQTcLExvNPSu_LZEpCSwLCfHhMVdHvX7GbvQYneEhzpm6btn1lMIOWs8uKnxyToA1jX95Px-JGC0N5_VanXGk1KMAYI38PYIq9W7mhYU7No0cfMHicp1BgwDR4VEiCqsggfc5L0VFAtzp2T1expqvyE5eqbmof4a0VwVoCQ';

const ES256_jwt =
    'eyJhbGciOiJFUzI1NiIsImtpZCI6InNqM0JnOFFrTzdURUdIaC1wVVNpUHRSZWVibjNYcEZuSDEzOURZZE1uNEUiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJ0ZXN0IiwiZXhwIjoxNjQ2OTU4NTU3LCJpYXQiOjE2NDY5NTc2NTcsImlzcyI6ImZ0YXV0aC5pbyIsImp0aSI6ImI3N2MwZmFjZTFkZWNlMWM2NWExN2RkNDIyNDQ5ZDI4YTJiODMzYjQzMWZiZjI0ODBlZDIwNDdiYTgyYWExMGYiLCJuYmYiOjE2NDY5NTc2NTcsInN1YiI6InRlc3QifQ.giYYnUsEO5_uELwmVpYfcW0oZR1XFFkb3_MBW1HpNbnkYWm1CaDy9Opl8nLFCbPDZmcqUg1ZErb1Cx9KgZPA1g';

const ES384_jwt =
    'eyJhbGciOiJFUzM4NCIsImtpZCI6IlE1QzJHR3dweUxCbkxOLVY0QkFLM2VkVDNYMHM2dk9zWGMwX2N0UGFLazAiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJ0ZXN0IiwiZXhwIjoxNjQ2OTU4NTU3LCJpYXQiOjE2NDY5NTc2NTcsImlzcyI6ImZ0YXV0aC5pbyIsImp0aSI6ImZlOGM2ZjE4YjY3YWM1NWU0YTMzNTM3MTZjNmMyYzI1NDk4OWU2MDNiZmRjOTY2MmQ2YWZiNGU2NDJkZjM1MGEiLCJuYmYiOjE2NDY5NTc2NTcsInN1YiI6InRlc3QifQ.zmC_XEpEJqmhH4aXVfvqDPM8R9X0uL47HkKcOxTEj2rZRQrMjh9U1EVR_s6UzPO8QY-wme_OebQZjvnJwGJF-kHBteKMaRGxAvSon3z-VqKM_-uYFJQ5VcGy-QjXKj-W';

const ES512_jwt =
    'eyJhbGciOiJFUzUxMiIsImtpZCI6IlNocm5NYVh0UTcwSTJCZU5ad3VxT1JUNllDSWtqeVZxRG1hX1Y2YU5pSmMiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJ0ZXN0IiwiZXhwIjoxNjQ2OTU4NTU3LCJpYXQiOjE2NDY5NTc2NTcsImlzcyI6ImZ0YXV0aC5pbyIsImp0aSI6IjQ0ODJmY2M3NTRjMGI4NmVhYzFiYzcxYWYzMTVmZDUzMDRhYjNjYzYxNjNkZTg0MmYwYjVhZmI3NzE5Y2RiYjUiLCJuYmYiOjE2NDY5NTc2NTcsInN1YiI6InRlc3QifQ.ABF-KFkrvh4-wbfO4z02CzEbHpLOhQP9l2cwINzjg0_s21xTs6vbZhGRgqBR9JQrxzmJj6IhPOVIfaXnmtpx5OmxAViIPKnRSR2ssNHuss2z55DPgOPa-uDzs1jM5JyEdpcbba6sChYZhNpfWIeYPrKh7eneVyBdWe7ynaUN0Ch7-ZLm';

const PS256_jwt =
    'eyJhbGciOiJQUzI1NiIsImtpZCI6IjV4Y3lSRWRMVFdOLXkwOUJ6dUlOa1lVUjRGNWliN1ZkX2ttTF9XSHpZOVUiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJ0ZXN0IiwiZXhwIjoxNjQ2OTU4NTU3LCJpYXQiOjE2NDY5NTc2NTcsImlzcyI6ImZ0YXV0aC5pbyIsImp0aSI6ImY4ZWIyYjY2YjBkNGY2NmVlOWVjNDlkMmY5OGNhOGM0NGVhYWZkMzQzNTNhZGI5M2VhZWM5MDdlZGM2NDc3NGEiLCJuYmYiOjE2NDY5NTc2NTcsInN1YiI6InRlc3QifQ.nww-M2yWkhyz-GR1IYPxq4dWqBh3fdrod74FQwWQm40oqXfF1zVhJbm1a9VvoIluzWYhPTln_ea4mMVb2227zy7dCz-RE8vPMJWismo4oDpRxD5BCVeqykj4x39YiQKcEWuGVQr8jItJlJO7cifBQVemJpS73BL-OZ5RQyqtQlWkb42Y4_vWZ_bs81bwBZ4u2gET08mucxuBWuLlR383luXKosrRU8wlpXmjacy5fTp4jLqi2U2vPMAXbNkGwDSt0HLibcSbHQh5pzCHWOVIce5-aZTAZtR-sq__N0t6uBPZfq6IOF8MER7Fm-FeM5_G-U-4vA-sz9hHnJ5T1VYrBw';

const PS384_jwt =
    'eyJhbGciOiJQUzM4NCIsImtpZCI6InVTRHFoVWU0RFNMU0tGaEFMNW45NGVENDB4TE1hTlY2d1BMcmJSeHNUbHciLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJ0ZXN0IiwiZXhwIjoxNjQ2OTU4NTU3LCJpYXQiOjE2NDY5NTc2NTcsImlzcyI6ImZ0YXV0aC5pbyIsImp0aSI6ImY5MmMyMjNkZDE5OWUzZGFkOGM2YTI3MzhjNmI1YWFmOGZkZDA2ZDE1ZTFkZGQwNDI0NTllNzdhOTEzMjhiZDgiLCJuYmYiOjE2NDY5NTc2NTcsInN1YiI6InRlc3QifQ.PK3QJeVIq5aQ3lIFUJ3q9vnJtiKEL5lH_t-IykeEb0TCVdNbelmQT8cQjWneTpSg5U00v0KD1tflmOzO-zDIKOiCjArXGzh_-O5cMX_EYVpBM1pPP_2svpMqm9Ztly4aPub2a9VO6CtawD88TwL6TrLCk_kwykW5kcRgyNB9vrUrzvZXiGkLO5zOc626HBGedLe9tQSmd4PXBDFdyJ6qAgE9RxhmTZ_yEjXb3tsjIcWtfOWRkEt4-SjdjQ-0Btg4XcxxtlsqlTmnSSYobYv8vjBVeGQBUSk7JEI5-8ikJtZ2TdP8kDV_eeNL5Q2IbgTiPXt_MxephDMFaR0S0o19iw';

const PS512_jwt =
    'eyJhbGciOiJQUzUxMiIsImtpZCI6InZMYXdYZ0xtdHdKaEo1dkJtMGRnbVFJMVpNdUN5dHBvaTg2M2I3NWFMeXMiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJ0ZXN0IiwiZXhwIjoxNjQ2OTU4NTU3LCJpYXQiOjE2NDY5NTc2NTcsImlzcyI6ImZ0YXV0aC5pbyIsImp0aSI6ImU4NmVjZWY5NDRjZGUzNTUxYmI0OTdkYTAxM2IyN2U5ZDYwNzM3NzhkMWZlZGMxMjA0ZDEyODc1YTAwNmY2Y2MiLCJuYmYiOjE2NDY5NTc2NTcsInN1YiI6InRlc3QifQ.HyDuCWgLt5IF1jjuHc8qp50BX7KOzsgRNuwSxcsaCr2PBxZeqBSLYHQAGuK51nMHltfYJEYBJKuzaCUnjpbB_yu5hxBSh_fnEAmRXCltYNEK2JSTwOr-VrE7JXkXA36mFIcDc7KH7cNnCsRWFcDu6zO2hklbuA2G-G6caguONVfAYnpx4-9XvEonkugFaMj3E-acavicTD7gknoeCYokMpnLoumdZXd-N_QUEM6KbOapgIwykmd-N6ET8s2GDacCbncGA_kA5HlXzebgTI9fZ-HcQ2OlWxv1MxGNyXywBvrVblDzlFGTAO-UJMd6QTkKAPJQcF62KxlZYixEdo1Rjg';

const testCases = <TestCase>[
  TestCase(
    Algorithm.hmacSha256,
    HS256_private_jwk,
    HS256_public_jwk,
    HS256_jwt,
  ),
  TestCase(
    Algorithm.hmacSha384,
    HS384_private_jwk,
    HS384_public_jwk,
    HS384_jwt,
  ),
  TestCase(
    Algorithm.hmacSha512,
    HS512_private_jwk,
    HS512_public_jwk,
    HS512_jwt,
  ),
  TestCase(
    Algorithm.rsaSha256,
    RS256_private_jwk,
    RS256_public_jwk,
    RS256_jwt,
  ),
  TestCase(
    Algorithm.rsaSha384,
    RS384_private_jwk,
    RS384_public_jwk,
    RS384_jwt,
  ),
  TestCase(
    Algorithm.rsaSha512,
    RS512_private_jwk,
    RS512_public_jwk,
    RS512_jwt,
  ),
  TestCase(
    Algorithm.ecdsaSha256,
    ES256_private_jwk,
    ES256_public_jwk,
    ES256_jwt,
  ),
  TestCase(
    Algorithm.ecdsaSha384,
    ES384_private_jwk,
    ES384_public_jwk,
    ES384_jwt,
  ),
  TestCase(
    Algorithm.ecdsaSha512,
    ES512_private_jwk,
    ES512_public_jwk,
    ES512_jwt,
  ),
  TestCase(
    Algorithm.pssSha256,
    PS256_private_jwk,
    PS256_public_jwk,
    PS256_jwt,
  ),
  TestCase(
    Algorithm.pssSha384,
    PS384_private_jwk,
    PS384_public_jwk,
    PS384_jwt,
  ),
  TestCase(
    Algorithm.pssSha512,
    PS512_private_jwk,
    PS512_public_jwk,
    PS512_jwt,
  ),
];

const keySet = '''
  {
  "keys": [
    {
      "use": "sig",
      "kty": "oct",
      "alg": "HS256",
      "k": "VUdkaUg5WjJUUkphUWhBOU92ckpUT2pJeTR0SlRCTnc"
    },
    {
      "use": "sig",
      "kty": "oct",
      "alg": "HS384",
      "k": "eU9KZDJLczNveDllQjFzbGxPSEhwWFBHMXBKcUJ0NDU"
    },
    {
      "use": "sig",
      "kty": "oct",
      "alg": "HS512",
      "k": "NkxjeDY0Y1JPemVSNnoxZ29lZ3hCbkgxWDNEdktTZk8"
    },
    {
      "use": "sig",
      "kty": "RSA",
      "kid": "UX85WKq9T7XauzcZKsmZISLy0c1w7ULBe8r_Ui-7qio",
      "alg": "RS256",
      "n": "0hq-BwK3SEejgAZf4vTzyfGpF2eK8tEXtMiJISXL4ZApDxfNKXwLZZvkd43VesYvykkGYC33FxMKt2eZSAfVG_TfZ2dY4PPWLxEKB88MWFQ7NlraerC-Zb7NvPrbIg2wVo7HSw7GZK3EvPkPw3qSQzNv2mlWEkGRTEnocfjGsgpMuctl_lK9UIopLCVb2W-ntgqXpXAv5myLPVY1YtrBHLdrTzSYuOC6tPx49v6oah-DRtPvURjANWwV6nQqKPSbyEY2G-JASkl3pnOmiAmZsxoW9MN_Hpm4ecm98ThrPbkEbRIDhbV4pIQVfzU0AQEHWZSmyvXEtNuoVXVQKUnGpQ",
      "e": "AQAB"
    },
    {
      "use": "sig",
      "kty": "RSA",
      "kid": "Csje-j6zEFaRI39WUWPJpcJPkNcUTtr13e8y6pX2NSc",
      "alg": "RS384",
      "n": "v8jnnIhrymW4MKs8psrqNPVUKVb1-H2QLy4IHivw8XNzKac6KoaSb5hKFNOOfrTW9Ph_CMYFmp8or8RoQVzGOR9Xmeag7ZJEYtLJJyrCY3poEQKOQH5O_sdmsyKiicX4BHCJ5bqb5525tCtKTvECLjWV9Hsxl3JwVAz-N4Rnzz0PcdEB5BEZ9PinLnzdYrtKpWoF02cSqe83737PCvShSVyS3KgYYNz79FFVn42nxiwX6fXSv1PE2l150OI-0rVf16-MFEcyNjV9uBRVJugQ-VNkHmFkYnGiBipQkAq_OgSXDlTz8C_JylX_8vq78vb33fynyErewoaBFdfQnfh5Pw",
      "e": "AQAB"
    },
    {
      "use": "sig",
      "kty": "RSA",
      "kid": "ezb9UryK0qi_9ULNhz_K3X6VRrz9f3KZQLL5Wdobfhc",
      "alg": "RS512",
      "n": "5F9WNpipjcDjkz86QJ-bb5VvTTf9DWRVLz5mF1yahBHOjKWI9fZdINdF3kyfDt1J-Xd_keUP2bJ9k1odgL9BAG7b3xqMup6YMd1Yx5ccC0u65h2obIGtVPoSf9R3HzpU1VmKR06R8BYUdQu_EfABEWXCaHLrhWdpRYtMUGaPkq3eCyQ-mNYpvgytejhFA7s9xbVsJAZKb-cQuKhYrcVFsqy_MtzkWKGG2kBhHUN7ouf1O_HiOEOBw4S1BguKvIWtVmoHXogBQ4vke1j7Jo9Vk1ImI8Gn9Tb8KeW428WgZWlAVtX-1RHB5s625rS7iIDV6IvBoUoKtjRQuYiEkQ1NQw",
      "e": "AQAB"
    },
    {
      "use": "sig",
      "kty": "EC",
      "kid": "sj3Bg8QkO7TEGHh-pUSiPtReebn3XpFnH139DYdMn4E",
      "crv": "P-256",
      "alg": "ES256",
      "x": "Ly42lWPXjbhZ_LQ-KjFHAYx0MucBOjI_kiThSxAtuZg",
      "y": "qa1ECXlvWDpHFaLhJckyW5IPgOekO756xscQtT-QMQ4"
    },
    {
      "use": "sig",
      "kty": "EC",
      "kid": "Q5C2GGwpyLBnLN-V4BAK3edT3X0s6vOsXc0_ctPaKk0",
      "crv": "P-384",
      "alg": "ES384",
      "x": "QxZGykZzjYvHf8DcHh9xnAfjIM53c7qiQDs0it0Ln38iZVwgCnQpEFsrV46ZtJK8",
      "y": "zqT38CV3rcHQhosOLOAGCIJQ9bC_nfA8yuWOQKhYmtZbVi7uMyIGTpKbqbZH3HTI"
    },
    {
      "use": "sig",
      "kty": "EC",
      "kid": "ShrnMaXtQ70I2BeNZwuqORT6YCIkjyVqDma_V6aNiJc",
      "crv": "P-521",
      "alg": "ES512",
      "x": "AC40yK_l6jr64aru3h9LZATVPuT0d5jd5xKQPMk8pc04aa23EkA4zZyBnJqrNAhN-KlcIREZF56kEVfJDWwms0C_",
      "y": "AXjE27hfFcc8lGI4RYWc3aOLHDgqzaHUmd3w-BveNn7CYT0WfHSS7YSTC_DBuTORgQPbfPpMD5P_i3zus4eXOrRE"
    },
    {
      "use": "sig",
      "kty": "RSA",
      "kid": "5xcyREdLTWN-y09BzuINkYUR4F5ib7Vd_kmL_WHzY9U",
      "alg": "PS256",
      "n": "oprsD9Gs9NPhZww67eqoVH7a04r0gDtuVu3if0RvIBwkrwakGYYa4J2vkSwjyH9DbCvWXY8Zj3K-guMSjLUY_QtxlqnxO3WMfQjzErWICdEyNzXyqpdVMeayXioZfcWb0R6ve1Sl_-szJx4OFJuwTPGAj9mQ7QNwT0VObLh0cqcJZTu9HKPr7wZE1I_4mH_RdOjPZ8rsVunawKTMby4MHH29PIMw2qZNADgHhuUdKGkU8_hLnWxrFPOrucJiAi_iF7h1qK1-NCIZkuiCC0SIIsAW3tcDRAs16xRWbMZMBYEErGsWYpIWK5vH-Lt-oLPJoW5LSaAfFojbDqVfpoUCOw",
      "e": "AQAB"
    },
    {
      "use": "sig",
      "kty": "RSA",
      "kid": "uSDqhUe4DSLSKFhAL5n94eD40xLMaNV6wPLrbRxsTlw",
      "alg": "PS384",
      "n": "tcXNkpXx0pdGzZPGJMK8cCZL70M0uPKfJyyBaI2-xQ9c_HplNls1_03xSOMAGPaAOdYf1UNR8nvxsYut-U_vdTMZYH46FdAf_I4UCWB6Qt6qQUVUjp0hc_b5XEkBhJTOc2rFFQlhX0X8uHiUsXKLPKYlxgz1FmIcYrsXA5p7tnL92As2eT4oWM4crM9-MwqAkR6_2u9K8vFdPDFWx3z5tYCFPAsH98WxSDEmf2xjec7ynsCt93XcYhFxEsImSecyLdTLZKBDua9RA4qkwHrGBsM8JtVX_Em1L6SV70ZlagTxhzRYJCIiIKPxU2g6q0ovciqlQ6eNzneWcd-NuHvzFw",
      "e": "AQAB"
    },
    {
      "use": "sig",
      "kty": "RSA",
      "kid": "vLawXgLmtwJhJ5vBm0dgmQI1ZMuCytpoi863b75aLys",
      "alg": "PS512",
      "n": "oSnCJ5PKHo9TefVy_8Ra5lGTddrE1vvi1CREM7EJzxFOooUgKNgIJ2yjFOFOJLs5NKGe_Qdsua-c2JOLNwYJKF_s6WWtIIgdb6tW7eTFEdh8KmApcwsjjmXk0b8_lvVA4SmKYofJh0cZSBpYp4Gp0flsUGdUBEQuBJH2s5hOoIA9HKZnAHQ0OzpUMroiFm1Wsasl1w6t723O6kTwroXamIVqeZn_VLhdBdyKiCdRZyRQkDGFhWXXruiN6VUpT7YG3hfX0V9Ahy5RMTS83TkmJw7tst_LQc4ED_ZgLRcaE9KhRwGVnUEJdaCjAn8Gt-g9SGjW0lxU-rMHtinzeb_5dQ",
      "e": "AQAB"
    }
  ]
}
  ''';
