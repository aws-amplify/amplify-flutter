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

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:test/test.dart';

const _canonicalString = '''
GET
/maps/v0/maps/mapb6ded86f-dev/glyphs/Arial%2520Italic/0-255.pbf
X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIA2JQDT5EVOUE6P25M%2F20210907%2Fus-west-2%2Fgeo%2Faws4_request&X-Amz-Date=20210907T012110Z&X-Amz-Expires=600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEDoaCXVzLXdlc3QtMiJIMEYCIQCyxCndevdCHMMr%2FPtf2XxTOAPQmIYdxQeiUSG3fCyZkAIhAK%2BlUN4OZMjD9qMPako0sUNNO9PXJ86FFQCaH1blELZSKpoGCIL%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQARoMNzA3NjAzNDU4MzQ2IgwAaJhUgiJn173WfyAq7gVSotx2HW9NaCfxksewFHK5h8Hc5CKQovcoJg5Y8ajd4d%2F7l%2F%2B9ki%2FkX0zpMQ4jlsGI%2FEMQm6J7ALguawIIxXpAhW2s7bCfg%2FpwSAXD%2FQz2Naw8WRBOgYF5LiK7l3wY9sLPfRG4CwSAn2fZ6vuyeQBL03hbZkV5b2Mg1p%2FlphqSmbbb4ZlHzeVsvIj1q9RGx04fOXZeYHJcE%2F0mVj4boHoOUguTAPN5WQ3n%2BpcKrlPPd17jwv%2BAvW7yGkIFMWQjzTQaKCghj6u3w94KG2MnwQb08iWzbMBs2W5%2BNdmL%2B1EXeETVvZFl1Toxf0ty5%2Fin5Ey6Dz%2F6PkBPxlpibwq50OC6ycXP%2Fks3dnSZ5%2BnHd26BHTbZlm3H5oqv3zc4T%2FGReZlWEqVQCAWb98OED15u%2BXMqV8nHMY7ajgMaYsyD1RutfRukS%2BprjHFfBvFekMTep5mOYesT3HMPGOD9Zn0jMgMQfKFHSSfKXIPYCUZWOC8Oqj6QKb%2F1zqpGH2ZPTCWDTAKGGmKeGpS0j3I%2FB0nZi01zNwqUdqgkCOw4Uh6wCKQuV8zPqeE0DSSLf6hk5mQz%2B5hp3UB8O0GVZgHIAdbWil%2BQjRV%2FKOgskq8264ckRY4GhsVZDADbUntEVoT2xGC0PpgG4rntwX4Ac8qPy%2FMyXhgn9ABcgHmTpz0X68JOE73qUw1uekDF21Lrku%2Bv1jZvJU5cObiuD8dnYC05h0QL4q9ikXkLTC0Gdj7%2BT61P90AoPEG0SVyCj8FFan0UjaKZcY25pOF6a3k7be0iwep%2B%2F1ZDSZOTjHxLh%2B6SNMGzTDMpe8OFlEalokWiYACXUq%2B6fRh0M4kOeEOnDMDEIf6t%2BCbsaDSv%2Bz5ucX8Tc8Inn0YhTAGepEhzRQOqluZXh4VMSW0iAOFfZF7iupJEvPBOzUrPM1Lv%2B3nkvdmMd%2BG7WYfhD7ikrQRPQv0TooWrJNlx%2F82218QKjLwork%2FAAQg%2F15x%2F6RXRsNevfLK97SqRwcQwpfzaiQY6hgKo2IXaWqEGWy9dOEPnuehz0hnRL%2Bl22fJknh5%2BmU3VJ2gld0HNhhDXi1CjfjrQ0y84bpflOvzYhZ00q9Tf8%2BFWLBLi9uRUa9QYTLUVKgBSEmQgw%2B3EZKibUedgz%2BittT6JamDB4QrIBb7lJLVAgdbuaix0yqijQIJMDSugeAOkiD7q9SP%2BA4JNXMUx6R8xxNszWfG0PQzGXawyeu7%2FySPci0bwh63wFdQ6tTxR5aJKaJ16g6bUn3MUWAE2FyHuEuvnstjYtpIxhO6ZElcyQ2jJUwUGS7%2FUr3DDtKGd7esDV5NJutd7HScNEn2fn5h3gcYCTRcv%2Bwc39wXqf7Xzu9t9pLQLbtqj&X-Amz-SignedHeaders=host
host:maps.geo.us-west-2.amazonaws.com

host
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855''';

const _stringToSign = '''
AWS4-HMAC-SHA256
20210907T012110Z
20210907/us-west-2/geo/aws4_request
0c2303ddeb0f2a2cb315e1cc72be3878920741df664e266c8a1ab351198e9f26''';

void main() {
  const credentials = AWSCredentials(
    'ASIA2JQDT5EVOUE6P25M',
    'D/+OSbrFiquiWX2wLeLnVWHvNEcLun3xUWvX0o+o',
    'IQoJb3JpZ2luX2VjEDoaCXVzLXdlc3QtMiJIMEYCIQCyxCndevdCHMMr/Ptf2XxTOAPQmIYdxQeiUSG3fCyZkAIhAK+lUN4OZMjD9qMPako0sUNNO9PXJ86FFQCaH1blELZSKpoGCIL//////////wEQARoMNzA3NjAzNDU4MzQ2IgwAaJhUgiJn173WfyAq7gVSotx2HW9NaCfxksewFHK5h8Hc5CKQovcoJg5Y8ajd4d/7l/+9ki/kX0zpMQ4jlsGI/EMQm6J7ALguawIIxXpAhW2s7bCfg/pwSAXD/Qz2Naw8WRBOgYF5LiK7l3wY9sLPfRG4CwSAn2fZ6vuyeQBL03hbZkV5b2Mg1p/lphqSmbbb4ZlHzeVsvIj1q9RGx04fOXZeYHJcE/0mVj4boHoOUguTAPN5WQ3n+pcKrlPPd17jwv+AvW7yGkIFMWQjzTQaKCghj6u3w94KG2MnwQb08iWzbMBs2W5+NdmL+1EXeETVvZFl1Toxf0ty5/in5Ey6Dz/6PkBPxlpibwq50OC6ycXP/ks3dnSZ5+nHd26BHTbZlm3H5oqv3zc4T/GReZlWEqVQCAWb98OED15u+XMqV8nHMY7ajgMaYsyD1RutfRukS+prjHFfBvFekMTep5mOYesT3HMPGOD9Zn0jMgMQfKFHSSfKXIPYCUZWOC8Oqj6QKb/1zqpGH2ZPTCWDTAKGGmKeGpS0j3I/B0nZi01zNwqUdqgkCOw4Uh6wCKQuV8zPqeE0DSSLf6hk5mQz+5hp3UB8O0GVZgHIAdbWil+QjRV/KOgskq8264ckRY4GhsVZDADbUntEVoT2xGC0PpgG4rntwX4Ac8qPy/MyXhgn9ABcgHmTpz0X68JOE73qUw1uekDF21Lrku+v1jZvJU5cObiuD8dnYC05h0QL4q9ikXkLTC0Gdj7+T61P90AoPEG0SVyCj8FFan0UjaKZcY25pOF6a3k7be0iwep+/1ZDSZOTjHxLh+6SNMGzTDMpe8OFlEalokWiYACXUq+6fRh0M4kOeEOnDMDEIf6t+CbsaDSv+z5ucX8Tc8Inn0YhTAGepEhzRQOqluZXh4VMSW0iAOFfZF7iupJEvPBOzUrPM1Lv+3nkvdmMd+G7WYfhD7ikrQRPQv0TooWrJNlx/82218QKjLwork/AAQg/15x/6RXRsNevfLK97SqRwcQwpfzaiQY6hgKo2IXaWqEGWy9dOEPnuehz0hnRL+l22fJknh5+mU3VJ2gld0HNhhDXi1CjfjrQ0y84bpflOvzYhZ00q9Tf8+FWLBLi9uRUa9QYTLUVKgBSEmQgw+3EZKibUedgz+ittT6JamDB4QrIBb7lJLVAgdbuaix0yqijQIJMDSugeAOkiD7q9SP+A4JNXMUx6R8xxNszWfG0PQzGXawyeu7/ySPci0bwh63wFdQ6tTxR5aJKaJ16g6bUn3MUWAE2FyHuEuvnstjYtpIxhO6ZElcyQ2jJUwUGS7/Ur3DDtKGd7esDV5NJutd7HScNEn2fn5h3gcYCTRcv+wc39wXqf7Xzu9t9pLQLbtqj',
  );
  final scope = AWSCredentialScope.raw(
    region: 'us-west-2',
    service: 'geo',
    dateTime: AWSDateTime(DateTime.parse('20210907T012110Z')),
  );
  final request = AWSHttpRequest(
    method: AWSHttpMethod.get,
    uri: Uri.https(
      'maps.geo.us-west-2.amazonaws.com',
      '/maps/v0/maps/mapb6ded86f-dev/glyphs/Arial Italic/0-255.pbf',
    ),
    headers: const {
      AWSHeaders.host: 'maps.geo.us-west-2.amazonaws.com',
    },
  );
  const signer = AWSSigV4Signer(
    credentialsProvider: AWSCredentialsProvider(credentials),
  );

  group('geo', () {
    test('Font', () {
      final canonicalRequest = CanonicalRequest.presignedUrl(
        request: request,
        credentials: credentials,
        credentialScope: scope,
        algorithm: AWSAlgorithm.hmacSha256,
        expiresIn: const Duration(minutes: 10),
      );
      expect(canonicalRequest.toString(), equals(_canonicalString));

      final sts = signer.stringToSign(
        algorithm: AWSAlgorithm.hmacSha256,
        credentialScope: scope,
        canonicalRequest: canonicalRequest,
      );
      expect(sts, equals(_stringToSign));
    });
  });
}
