// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_auth_cognito_dart/src/crypto/crypto.dart';
import 'package:amplify_auth_cognito_dart/src/exception/srp_error.dart';
import 'package:amplify_auth_cognito_dart/src/flows/helpers.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_helper.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_result.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:test/test.dart';

// From aws-sdk-net-extensions-cognito:
// https://github.com/aws/aws-sdk-net-extensions-cognito/blob/9743362173a09af846d626dbecdd9a5f80e76ce7/test/Amazon.Extensions.CognitoAuthentication.UnitTests/AuthenticationCryptoTests.cs

SrpInitResult get initResult => SrpInitResult((b) {
      final bytes = List.filled(1024, 2)..[1023] = 0;
      final a = decodeBigInt(Uint8List.fromList(bytes));
      b
        ..privateA = a
        ..publicA = SrpHelper.g.modPow(a, SrpHelper.N);
    });

const srpUsername = 'User5';
const srpPassword = 'Password1!';
const poolName = 'Pj8nlkpKR';
const salt = 'b704a27deb8cf5efec43a40eac5b60d2';
const publicB =
    'f6c76f03232c3a93a634f5e49a74efbfffcd2b81f0dacb2bce0274ae68601b3d'
    '42a98feb96ba6a310cc2d4183edac62d571d0d220258d8753a80c4f8815a1095'
    '3a21964f19c824916f46417f46d921d7956bf5c10c63e7b1c84ce6e2bc407b4e'
    '0a103a529313f439182c6450ed434d049e0d9dd5da8cf3a1d1f6f2839f55754a'
    '7b17444b8c55ff6b13bf63f61e473ad6fad9f4a1a0b2541b200de07c10296d67'
    '9b36bf683245cee039842ad9579031e26cb0931ac202fe713fa2c64f920a9830'
    '722f708d5ede7ab0521363e45fb2ad0afefbd65264c39f46d0c4011e2e8dbf8d'
    '6c53764719599a359b17bcd4d7e37c76e9e68adde0dc586a29f835a2decab335'
    'a49408fbc8452d2696743f4465d12748851889d405d7287296e93f9abfb9f118'
    '06235bb588e8381a0060a174f5b0959eedba81b94eb383e80465323b1fc85478'
    'edcca4b67403a45b73ccbdcd9eaeacebd5f2ca32c7344fdbbc15a2a3d060c2b8'
    '22851a282370a8dacbbfedbc511376a6e8ad95a5ce28fc2b9c37751c8d4314b9';
const secretBlock =
    'iZY+s7lYj4/5me1dgBZ9QR0vYOoatfBhec3Rc3kqPFAGIWAwxmaoXkOR1+kEvm0A'
    'ic/CxgXe0KHTTZuyKpsMfjbo2J2YweeAtj47z6HCgVScBHeJ5il4NUhGJ6ehqWPl'
    's5ub233161UU/SxKAZYySbB8NNHIQidPNxEvBycU5gOeO9cOv4dlm3dwSRNFlg8O'
    'WJysI7+ZXUgSWdfUBqog90wkIfLr7HirXnd3axiqpHqAApu4Ls7JFvgXxJa74ZJL'
    'tFobED/qSc4ALtRiAPwhKkomxhSXDF1S3dD+LcTQaR0/gJY1+p1CuyTCQNBTVz5i'
    'dOq8NhG/mMupKow7i54xWJp3gWCeRLMRYD5Od/b7QSgtBYZeLT2rDPb6T8oy8qSc'
    'K4gq+1Ye6KmXTtmdc7XBhwtyCk4xA8YBjeXO/Gq3G+rzpqMOS9e8P/EZ1xldkcme'
    '0qYesbUiKSVO30N2lPKo3qzWyq6zFi0pINpCiWLD+qdWa9Arofsml2IYgCxZwmoI'
    'RVk8vd/+UdhErVRFdOmMZWQVLki0K09UgrnvLLBcMxc4wq8myUmMivVpxg8vSaex'
    'rxGxDVnKZHgfl0jFCEWIYyMvPAspOo9bBT1l+oQlVpf6RPKWlxgE4JSiWd9LD3PM'
    'dtETsyrWv1IxtktyzGI27UVanj0gGfesM56/FNImaxh+eoTBq4fJWxvfN0FvB90I'
    'b/ZV+oJZ3jj8pKrZmDohutOQZqEIP5mme3UMGbkeF1zVnBuPT/Ujyb94RayMB4qv'
    'qnZap87o8gJ4iv0yp+HMAAxvPSvYJSr/dny/jEdsWM8aKU+a9+n3aMPo/97DSIyi'
    'w2E3jcorR2emlichUHqdwDg/GAACUMTmV6peecDdhuF/KNZXBF4GEsoutDzPSsaX'
    'nQ11qKejULZt//fQ/e5JzWbUVhWXBOiRr4JmbPdmWo9WIORrg/yrAlSe9RNnJOW+'
    'OCsAKLZYEHfuueUQYaxOpBTst+YQXzbwNYyX47H8nUDVXRLiA0zAoQHeTMXN8lL6'
    '88MTICEUNaJW9QWjrNIaTPic0oJ6CxVM/ayd8qv28EQ9BhyyE5yEreC9y+bpUQjT'
    'wxe62H/j0NiMsE5806dhx2RzxBlEYl51hs1aqwpQ6NGn51bwZPZ5O7YitLyYdAoE'
    'dTo0hCXTKF2ITbSy8ZDv5cxQSv5zyXeHRfa/o1GSHWPawy3lYjHChVVj/ALBjpFV'
    'PJJwByQZqgXsrvuknWk7QFAi21acQxm/4pqPVtFNVW7yZ51FawlQu6rKKfu1kyTJ'
    '6CKlcdXuJFv/NxQLPLq/to4b0UHNaD/mymwr0GSEn9GxpVB4fjhL4L2BRxCpt4lf'
    'Ltx1KMiTivUMIhrVShnrgUy2mpd/jooMsSf17GSvCYReg9dsaqvZXqbEMv6P2BX+'
    'RNXicLSfeDO9NyZhtuWZxyLJ5IlagOpVNbtGb/HCEQy+zF8ySzho6e8vHxNodJX+'
    'xwCxRyKl6wbEdSEulWgm5WaUmsfySrNqLKassfrTdKLHyWUvjbWucEFzS0ddu+Q7'
    'j5RGaZ4MO7Qf1hN57WUE7irwXBc9UoAWI3Sggb+oDDuVKN5PMF6cL+3/yfetGX0W'
    'rh9tk34z5pizLmOgqOqkMW5yFDqw8/pRqQA4Qo+VrpHL1a4vANgmOHw98918pFiC'
    'G5lacOQn4FmA2QGWfNxU72qy6MLPnTgN/olShAFNFgckIn2F';
const formattedTimestamp = 'Thu Jun 15 07:00:00 UTC 2017';

void main() {
  group('AuthenticationHelper', () {
    group('createPasswordClaim', () {
      test('authenticateUser', () {
        final claim = SrpHelper.createPasswordClaim(
          userId: srpUsername,
          parameters: SignInParameters(
            (b) => b
              ..username = srpUsername
              ..password = srpPassword,
          ),
          initResult: initResult,
          encodedSalt: salt,
          encodedB: publicB,
          poolName: poolName,
          secretBlock: secretBlock,
          formattedTimestamp: formattedTimestamp,
        );
        const expectedClaim = 'QwHbbUqF6DSSepJh2QqTWDCb1XjmqaxnnW5kDn5dz7E=';

        expect(claim, equals(expectedClaim));
      });

      test('rejects B == 0', () {
        final publicB = BigInt.zero.toRadixString(16);

        expect(
          () => SrpHelper.createPasswordClaim(
            userId: srpUsername,
            parameters: SignInParameters(
              (b) => b
                ..username = srpUsername
                ..password = srpPassword,
            ),
            initResult: initResult,
            encodedSalt: salt,
            encodedB: publicB,
            poolName: poolName,
            secretBlock: secretBlock,
            formattedTimestamp: formattedTimestamp,
          ),
          throwsA(isA<SrpError>()),
        );
      });

      test('rejects B % N == 0', () {
        final publicB = SrpHelper.N.toRadixString(16);

        expect(
          () => SrpHelper.createPasswordClaim(
            userId: srpUsername,
            parameters: SignInParameters(
              (b) => b
                ..username = srpUsername
                ..password = srpPassword,
            ),
            initResult: initResult,
            encodedSalt: salt,
            encodedB: publicB,
            poolName: poolName,
            secretBlock: secretBlock,
            formattedTimestamp: formattedTimestamp,
          ),
          throwsA(isA<SrpError>()),
        );
      });
    });

    test('getPasswordAuthenticationKey', () {
      const username = 'User5';
      const password = 'Password1!';
      const poolName = 'Pj8nlkpKR';
      const publicB =
          '8d340308265ada665b1b2c730fb65ff0b6dc746b63c2d7e9f08b8aa9306d4848'
          '268bc0c17ee4a2999173ca62af59fd74ba5d00f16c96bea082b163f2c3a0b745'
          '455d62cb9577425b4b5d4dadba163a8e7759a7c0256795f464682770588c84e8'
          '2f2c63d4701751476da8e8a7b1a131e78560fe7b56b6761fcef88dcc486f4033'
          '69a0cac2f04c25ed6d5e08b5a2f488500a0d5af4972cfa1213bfca37bbae189c'
          '8d58465b13193204f21ea01d267c7688e6e6cb5d3f5a8005db680d272308ee82'
          '3816032dd2c8fc3b95b6fd0a742feb127e3d094cd002a5e6b209415ff82f6abf'
          '50d5da43910a0336e9a6fc33dd101bf13f22f13fcb3ea3809aae4917d7c426fb'
          '8c0a894030c75d3e15f0e1078a9d89e5154391cde6111ac14fab9fa3b3a880da'
          '7dbd47fd5a055937581d26b5d225c076e82f980dcbd77b3950d270d8b622dca9'
          'c9bcd8fd6435a59b9690b3c9e2bdabf58cae3420c19066abc420145b1b66f226'
          'a6493c96588c2d53b637798fcaa573379f2251848065fe1fafb68ed5e79135e9';
      const salt = 'b704a27deb8cf5efec43a40eac5b60d2';

      final key = SrpHelper.getAuthenticationKey(
        initResult: initResult,
        publicB: BigInt.parse(publicB, radix: 16),
        salt: BigInt.parse(salt, radix: 16),
        privateKeyIdentifier: SrpHelper.privateKeyIdentifier(
          poolName,
          username,
          password,
        ),
      );
      const expectedKey = 'LmbBsy/4chqMRYOhmtmCrA==';

      expect(base64Encode(key), equals(expectedKey));
    });

    test('computeSecretHash', () {
      final hash = computeSecretHash(
        'Mess',
        'age',
        'secret',
      );
      const expectedHash = 'qnR8UCqJggD55PohusaBNviGoOJ67HC6Btry4qXLVZc=';

      expect(hash, equals(expectedHash));
    });
  });
}
