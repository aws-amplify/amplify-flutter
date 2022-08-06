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

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/crypto/crypto.dart';
import 'package:amplify_auth_cognito_dart/src/crypto/hkdf.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_result.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:crypto/crypto.dart';

/// Helper utilities for the SRP flow.
///
/// See:
/// - [SRP Design](http://srp.stanford.edu/design.html)
/// - [AWS SDK .NET Reference](https://github.com/aws/aws-sdk-net-extensions-cognito/blob/d326aebc065dea704db63091d677316f0bc82e6c/src/Amazon.Extensions.CognitoAuthentication/Util/AuthenticationHelper.cs)
class SrpHelper {
  SrpHelper._();

  static const _derivedKeySizeBytes = 16;
  static const _derivedKeyInfo = 'Caldera Derived Key';

  static const _largePrime =
      'FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF';

  /// SRP generator.
  static final g = BigInt.two;

  /// SRP large prime.
  static final N = BigInt.parse(_largePrime, radix: 16);

  /// SRP multiplier parameter.
  static final k = () {
    final digest = DigestSink();
    sha256.startChunkedConversion(digest)
      ..add(encodeBigInt(N))
      ..add(encodeBigInt(g))
      ..close();
    return decodeBigInt(Uint8List.fromList(digest.bytes));
  }();

  /// Creates the parameters for the `InitiateAuth` call in the SRP flow.
  static SrpInitResult deriveEphemeralValues() {
    const privateKeyLength = 128;
    final aBytes = getRandomBytes(privateKeyLength);
    final a = decodeBigInt(aBytes);
    final A = g.modPow(a, N);
    return SrpInitResult(
      (b) => b
        ..privateA = a
        ..publicA = A,
    );
  }

  /// Generates the claim for authenticating the user via the SRP protocol.
  static String authenticateUser(
    String userId,
    SignInParameters parameters,
    SrpInitResult initResult,
    String poolName,
    BigInt salt,
    BigInt publicB,
    String encodedSecretBlock,
    String formattedTimestamp,
  ) {
    final secretBlock = base64Decode(encodedSecretBlock);
    final passwordAuthKey = getAuthenticationKey(
      initResult,
      publicB,
      salt,
      privateKeyIdentifier(poolName, userId, parameters.password!),
    );

    final hmac = Hmac(sha256, passwordAuthKey);
    final claim = DigestSink();
    hmac.startChunkedConversion(claim)
      ..add(utf8.encode(poolName))
      ..add(utf8.encode(userId))
      ..add(secretBlock)
      ..add(utf8.encode(formattedTimestamp))
      ..close();
    return base64Encode(claim.bytes);
  }

  /// Generates the claim for authenticating the device via the SRP protocol.
  static String authenticateDevice({
    required String deviceKey,
    required String deviceGroup,
    required String devicePassword,
    required String username,
    required SrpInitResult initResult,
    required BigInt salt,
    required BigInt publicB,
    required String encodedSecretBlock,
    required String formattedTimestamp,
  }) {
    final secretBlock = base64Decode(encodedSecretBlock);
    final passwordAuthKey = getAuthenticationKey(
      initResult,
      publicB,
      salt,
      privateKeyIdentifier(deviceGroup, deviceKey, devicePassword),
    );

    final hmac = Hmac(sha256, passwordAuthKey);
    final claim = DigestSink();
    hmac.startChunkedConversion(claim)
      ..add(utf8.encode(deviceGroup))
      ..add(utf8.encode(deviceKey))
      ..add(secretBlock)
      ..add(utf8.encode(formattedTimestamp))
      ..close();
    return base64Encode(claim.bytes);
  }

  /// Caclulates H(identifier | username | ":" | password)
  static Uint8List privateKeyIdentifier(
    String identifier,
    String username,
    String password,
  ) {
    final content = DigestSink();
    sha256.startChunkedConversion(content)
      ..add(utf8.encode(identifier))
      ..add(utf8.encode(username))
      ..add(':'.codeUnits)
      ..add(utf8.encode(password))
      ..close();
    return Uint8List.fromList(content.bytes);
  }

  /// Creates the password authentication key for the SRP flow.
  static List<int> getAuthenticationKey(
    SrpInitResult initResult,
    BigInt publicB,
    BigInt salt,
    List<int> privateKeyIdentifier,
  ) {
    // u = H(A, B)
    final contentDigest = DigestSink();
    sha256.startChunkedConversion(contentDigest)
      ..add(encodeBigInt(initResult.publicA))
      ..add(encodeBigInt(publicB))
      ..close();

    final u = decodeBigInt(Uint8List.fromList(contentDigest.bytes));

    // The user will abort if he receives B == 0 (mod N) or u == 0.
    if (u == BigInt.zero) {
      throw const SrpSignInCalculationException(
        'Hash of A and B cannot be zero',
      );
    }

    // x = H(salt | H(poolName | userId | ":" | password))
    // or
    // x = H(salt | H(deviceGroupKey | deviceKey | ":" | devicePassword))
    //  for device auth flow
    final xDigest = DigestSink();
    sha256.startChunkedConversion(xDigest)
      ..add(encodeBigInt(salt))
      ..add(privateKeyIdentifier)
      ..close();
    final x = decodeBigInt(Uint8List.fromList(xDigest.bytes));

    // Calculate the session key:
    // S = (B - kg^x) ^ (a + ux)
    final first = (publicB - k * g.modPow(x, N)) % N;
    final second = first.modPow(initResult.privateA + u * x, N);

    // Use HKDF to get final password authentication key
    // K = H(S)
    final hkdf = HkdfSha256(
      encodeBigInt(u),
      encodeBigInt(second),
    );
    return hkdf.expand(
      utf8.encode(_derivedKeyInfo),
      _derivedKeySizeBytes,
    );
  }

  /// Creates the device password verifier claim, or signature, for the SRP
  /// flow.
  static String createDeviceClaim({
    required String deviceKey,
    required CognitoDeviceSecrets deviceSecrets,
    required String username,
    required SrpInitResult initResult,
    required String encodedSalt,
    required String encodedB,
    required String secretBlock,
    required String formattedTimestamp,
  }) {
    final salt = BigInt.parse(encodedSalt, radix: 16);
    final publicB = BigInt.parse(encodedB, radix: 16);

    // The user will abort if he receives B == 0 (mod N) or u == 0.
    if (publicB % N == BigInt.zero) {
      throw StateError('B mod N cannot equal 0');
    }

    return authenticateDevice(
      deviceKey: deviceKey,
      deviceGroup: deviceSecrets.deviceGroupKey,
      devicePassword: deviceSecrets.devicePassword,
      username: username,
      initResult: initResult,
      salt: salt,
      publicB: publicB,
      encodedSecretBlock: secretBlock,
      formattedTimestamp: formattedTimestamp,
    );
  }

  /// Creates the password verifier claim, or signature, for the SRP flow.
  static String createPasswordClaim(
    String userId,
    SignInParameters parameters,
    SrpInitResult initResult,
    String encodedSalt,
    String encodedB,
    String poolName,
    String secretBlock,
    String formattedTimestamp,
  ) {
    final salt = BigInt.parse(encodedSalt, radix: 16);
    final publicB = BigInt.parse(encodedB, radix: 16);

    // The user will abort if he receives B == 0 (mod N) or u == 0.
    if (publicB % N == BigInt.zero) {
      throw const SrpSignInCalculationException(
        'Hash of A and B cannot be zero',
      );
    }

    return authenticateUser(
      userId,
      parameters,
      initResult,
      poolName,
      salt,
      publicB,
      secretBlock,
      formattedTimestamp,
    );
  }

  /// Calculates the device verifier for the `ConfirmDevice` call, given the
  /// [salt] and [deviceKeyHash].
  static BigInt calculateDeviceVerifier(
    Uint8List salt,
    Uint8List deviceKeyHash,
  ) {
    final digest = DigestSink();
    sha256.startChunkedConversion(digest)
      ..add(salt)
      ..add(deviceKeyHash)
      ..close();
    final x = decodeBigInt(Uint8List.fromList(digest.bytes));
    return g.modPow(x, N);
  }
}
