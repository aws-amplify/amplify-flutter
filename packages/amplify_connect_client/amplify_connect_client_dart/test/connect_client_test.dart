// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_connect_client_dart/amplify_connect_client_dart.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_common/testing.dart';
import 'package:test/test.dart';

/// Returns fixed credentials so requests can be signed in tests.
class _FakeCredentialsProvider implements ConnectCredentialsProvider {
  @override
  Future<AWSCredentials> fetchCredentials() async =>
      const AWSCredentials('akid', 'secret', 'token');
}

/// Throws to simulate an unauthenticated caller with no guest credentials.
class _NoCredentialsProvider implements ConnectCredentialsProvider {
  @override
  Future<AWSCredentials> fetchCredentials() async =>
      throw const ConnectNotSignedInException();
}

MockAWSHttpClient _mock({
  required List<AWSHttpRequest> capture,
  int status = 200,
  Map<String, dynamic> body = const {},
}) {
  return MockAWSHttpClient((request, isCancelled) async {
    capture.add(request);
    return AWSHttpResponse(
      statusCode: status,
      body: utf8.encode(jsonEncode(body)),
      headers: const {'content-type': 'application/json'},
    );
  });
}

AmplifyConnectClient _client({
  required MockAWSHttpClient httpClient,
  ConnectCredentialsProvider? credentialsProvider,
  DeviceIdStore? deviceIdStore,
  ChannelType? channelType = ChannelType.gcm,
}) {
  return AmplifyConnectClient(
    configuration: ConnectClientConfiguration(
      endpoint: 'https://abc123.execute-api.us-west-2.amazonaws.com',
      region: 'us-west-2',
    ),
    credentialsProvider: credentialsProvider ?? _FakeCredentialsProvider(),
    deviceIdStore: deviceIdStore ?? InMemoryDeviceIdStore(),
    platform: 'Android',
    appVersion: '1.2.3',
    channelType: channelType,
    httpClient: httpClient,
  );
}

Map<String, dynamic> _bodyOf(AWSHttpRequest request) =>
    jsonDecode(utf8.decode(request.bodyBytes)) as Map<String, dynamic>;

void _expectSigV4(AWSHttpRequest request) {
  final auth =
      request.headers['Authorization'] ?? request.headers['authorization'];
  expect(auth, isNotNull);
  expect(auth, startsWith('AWS4-HMAC-SHA256'));
  expect(auth, contains('/execute-api/aws4_request'));
}

void main() {
  group('identifyUser', () {
    test('SigV4-POSTs userProfile to /identify-user', () async {
      final capture = <AWSHttpRequest>[];
      final client = _client(httpClient: _mock(capture: capture));

      await client.identifyUser(
        userProfile: const UserProfile(
          email: 'ada@example.com',
          name: 'Ada Lovelace',
          phone: '555-555-5555',
          customAttributes: {'plan': 'gold'},
          location: Location(city: 'London', country: 'UK'),
        ),
      );

      expect(capture, hasLength(1));
      final req = capture.single;
      expect(req.method, AWSHttpMethod.post);
      expect(req.uri.path, '/identify-user');
      _expectSigV4(req);

      final body = _bodyOf(req);
      expect(body.keys, ['userProfile']);
      final profile = body['userProfile'] as Map<String, dynamic>;
      expect(profile['email'], 'ada@example.com');
      expect(profile['name'], 'Ada Lovelace');
      expect(profile['phone'], '555-555-5555');
      expect(profile['customAttributes'], {'plan': 'gold'});
      expect(profile['location'], {'city': 'London', 'country': 'UK'});
    });
  });

  group('registerDevice', () {
    test('SigV4-POSTs the device to /register-device', () async {
      final capture = <AWSHttpRequest>[];
      final store = InMemoryDeviceIdStore();
      final client = _client(
        httpClient: _mock(capture: capture),
        deviceIdStore: store,
        channelType: ChannelType.apnsSandbox,
      );

      await client.registerDevice(token: 'push-token-abc');

      final req = capture.single;
      expect(req.uri.path, '/register-device');
      _expectSigV4(req);

      final device = _bodyOf(req)['device'] as Map<String, dynamic>;
      expect(device['token'], 'push-token-abc');
      expect(device['channelType'], 'APNS_SANDBOX');
      expect(device['platform'], 'Android');
      expect(device['appVersion'], '1.2.3');
      expect(device['deviceId'], await store.readDeviceId());
      expect(device['deviceId'], isNotEmpty);
    });

    test('throws on platforms without a push channel', () async {
      final capture = <AWSHttpRequest>[];
      final client = _client(
        httpClient: _mock(capture: capture),
        channelType: null,
      );

      await expectLater(
        client.registerDevice(token: 'push-token-abc'),
        throwsA(isA<ConnectUnsupportedOperationException>()),
      );
      expect(capture, isEmpty);
    });
  });

  group('removeDevice', () {
    test('SigV4-POSTs the deviceId to /remove-device', () async {
      final capture = <AWSHttpRequest>[];
      final store = InMemoryDeviceIdStore();
      final client = _client(
        httpClient: _mock(capture: capture),
        deviceIdStore: store,
      );

      await client.removeDevice();

      final req = capture.single;
      expect(req.uri.path, '/remove-device');
      _expectSigV4(req);
      expect(_bodyOf(req)['deviceId'], await store.readDeviceId());
    });
  });

  group('errors', () {
    test('missing credentials surface as NotSignedIn', () async {
      final capture = <AWSHttpRequest>[];
      final client = _client(
        httpClient: _mock(capture: capture),
        credentialsProvider: _NoCredentialsProvider(),
      );

      await expectLater(
        client.identifyUser(userProfile: const UserProfile()),
        throwsA(isA<ConnectNotSignedInException>()),
      );
      expect(capture, isEmpty);
    });

    test('403 maps to AccessDenied', () async {
      final capture = <AWSHttpRequest>[];
      final client = _client(httpClient: _mock(capture: capture, status: 403));

      await expectLater(
        client.identifyUser(userProfile: const UserProfile()),
        throwsA(isA<ConnectAccessDeniedException>()),
      );
    });

    test('400 maps to Validation and keeps the message', () async {
      final capture = <AWSHttpRequest>[];
      final client = _client(
        httpClient: _mock(
          capture: capture,
          status: 400,
          body: const {'message': 'bad input'},
        ),
      );

      await expectLater(
        client.identifyUser(userProfile: const UserProfile()),
        throwsA(
          isA<ConnectValidationException>().having(
            (e) => e.message,
            'message',
            'bad input',
          ),
        ),
      );
    });
  });

  group('response classifier', () {
    test('maps status codes and reads the message field', () {
      expect(
        connectExceptionFromResponse(429, const {}),
        isA<ConnectThrottlingException>(),
      );
      expect(
        connectExceptionFromResponse(401, const {}),
        isA<ConnectAccessDeniedException>(),
      );
      expect(
        connectExceptionFromResponse(500, const {'message': 'boom'}).message,
        'boom',
      );
    });
  });

  group('channel type wire values', () {
    test('map to the expected strings', () {
      expect(ChannelType.gcm.value, 'GCM');
      expect(ChannelType.apns.value, 'APNS');
      expect(ChannelType.apnsSandbox.value, 'APNS_SANDBOX');
      expect(ChannelType.values, hasLength(3));
    });
  });

  group('input length bounds (255)', () {
    final ok = 'a' * 255;
    final tooLong = 'a' * 256;

    test('all fields at 255 characters are accepted', () async {
      final capture = <AWSHttpRequest>[];
      final client = _client(httpClient: _mock(capture: capture));

      await client.identifyUser(
        userProfile: UserProfile(
          email: ok,
          name: ok,
          phone: ok,
          customAttributes: {ok: ok},
          location: Location(city: ok, country: ok, postalCode: ok, region: ok),
        ),
      );
      expect(capture, hasLength(1));
    });

    Future<void> identify(UserProfile profile) => _client(
      httpClient: _mock(capture: []),
    ).identifyUser(userProfile: profile);

    final overLimitProfiles = <String, UserProfile>{
      'email': UserProfile(email: tooLong),
      'name': UserProfile(name: tooLong),
      'phone': UserProfile(phone: tooLong),
      'location.city': UserProfile(location: Location(city: tooLong)),
      'location.country': UserProfile(location: Location(country: tooLong)),
      'location.postalCode': UserProfile(
        location: Location(postalCode: tooLong),
      ),
      'location.region': UserProfile(location: Location(region: tooLong)),
      'customAttributes key': UserProfile(customAttributes: {tooLong: 'v'}),
      'customAttributes value': UserProfile(customAttributes: {'k': tooLong}),
    };

    for (final entry in overLimitProfiles.entries) {
      test('256-char ${entry.key} throws a validation exception', () {
        expect(
          () => identify(entry.value),
          throwsA(isA<ConnectValidationException>()),
        );
      });
    }

    test('256-char device token throws a validation exception', () async {
      final capture = <AWSHttpRequest>[];
      final client = _client(httpClient: _mock(capture: capture));

      await expectLater(
        client.registerDevice(token: tooLong),
        throwsA(isA<ConnectValidationException>()),
      );
      expect(capture, isEmpty);
    });
  });
}
