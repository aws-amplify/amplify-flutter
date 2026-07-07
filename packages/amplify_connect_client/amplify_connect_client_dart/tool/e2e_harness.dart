// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Live e2e harness for the reworked amplify_connect_client_dart core against a
// deployed backend-notifications construct. NOT part of the package — a scratch
// tool for the golden POC. Drives the REAL AmplifyConnectClient; auth material
// (Cognito access token / Identity Pool guest creds) is supplied out-of-band
// via environment variables so the harness stays pure-Dart.
//
// Usage:
//   dart run tool/e2e_harness.dart <flow>
// where <flow> is one of: authed | guest | device | merge
//
// Required env:
//   ENDPOINT, REGION
//   ACCESS_TOKEN                (authed, device, merge)
//   GUEST_AK, GUEST_SK, GUEST_ST, GUEST_ID   (guest, merge)
//   DEVICE_ID, DEVICE_TOKEN     (device, merge)

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:amplify_connect_client_dart/amplify_connect_client_dart.dart';
import 'package:aws_common/aws_common.dart';

String _env(String k) {
  final v = Platform.environment[k];
  if (v == null || v.isEmpty) {
    stderr.writeln('Missing required env var: $k');
    exit(2);
  }
  return v;
}

/// Logs the exact on-the-wire request + response status, then delegates to the
/// real network client. Concrete evidence of route, auth header, and HTTP code.
class LoggingHttpClient extends AWSBaseHttpClient {
  final AWSHttpClient _base = AWSHttpClient();

  @override
  AWSHttpClient? get baseClient => _base;

  @override
  Future<AWSBaseHttpRequest> transformRequest(
    AWSBaseHttpRequest request,
  ) async {
    stdout.writeln('  -> ${request.method.value} ${request.uri}');
    final headerKeys = request.headers.keys.toList()..sort();
    stdout.writeln('  -> header keys: ${headerKeys.join(', ')}');
    final auth = request.headers['authorization'] ?? request.headers['Authorization'];
    if (auth != null) {
      final scheme = auth.split(' ').first;
      stdout.writeln('  -> authorization scheme: $scheme');
    }
    return request;
  }

  @override
  Future<AWSBaseHttpResponse> transformResponse(
    AWSBaseHttpResponse response,
  ) async {
    stdout.writeln('  <- HTTP ${response.statusCode}');
    return response;
  }
}

/// Returns a fixed [ConnectSession] built from the supplied auth material.
class StaticCredentialsProvider implements ConnectCredentialsProvider {
  StaticCredentialsProvider(this._session);
  final ConnectSession _session;
  @override
  Future<ConnectSession> fetchSession() async => _session;
}

/// A [DeviceIdStore] that returns a caller-supplied fixed device id.
class FixedDeviceIdStore implements DeviceIdStore {
  FixedDeviceIdStore(this._id);
  final String _id;
  @override
  Future<String> getOrCreateDeviceId() async => _id;
  @override
  Future<String?> readDeviceId() async => _id;
  @override
  Future<void> clear() async {}
}

AmplifyConnectClient _client(ConnectSession session, {String? deviceId}) {
  return AmplifyConnectClient(
    configuration: ConnectClientConfiguration(
      endpoint: _env('ENDPOINT'),
      region: _env('REGION'),
    ),
    credentialsProvider: StaticCredentialsProvider(session),
    deviceIdStore: FixedDeviceIdStore(deviceId ?? 'harness-device'),
    platform: 'Android',
    appVersion: '1.0.0',
    httpClient: LoggingHttpClient(),
  );
}

ConnectSession _authedSession() =>
    ConnectSession(accessToken: _env('ACCESS_TOKEN'));

ConnectSession _guestSession() => ConnectSession(
  credentials: AWSCredentials(_env('GUEST_AK'), _env('GUEST_SK'), _env('GUEST_ST')),
  identityId: _env('GUEST_ID'),
);

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    stderr.writeln('usage: dart run tool/e2e_harness.dart <authed|guest|device|merge>');
    exit(2);
  }
  final flow = args.first;
  try {
    switch (flow) {
      case 'authed':
        final body = {
          'userProfile': const UserProfile(
            name: 'POC Authed User',
            email: 'poc-user@example.com',
            plan: 'gold',
          ).toJson(),
          'userId': 'poc-authed-1',
        };
        stdout.writeln('FLOW authed — request body:');
        stdout.writeln('  ${jsonEncode(body)}');
        await _client(_authedSession()).identifyUser(
          userId: 'poc-authed-1',
          userProfile: const UserProfile(
            name: 'POC Authed User',
            email: 'poc-user@example.com',
            plan: 'gold',
          ),
        );
        stdout.writeln('RESULT authed: identifyUser returned (2xx, no exception)');

      case 'guest':
        stdout.writeln('FLOW guest — SigV4 execute-api to /identify-user-guest');
        await _client(_guestSession()).identifyUser(
          userId: 'poc-guest-1',
          userProfile: const UserProfile(
            name: 'POC Guest User',
            plan: 'free',
          ),
        );
        stdout.writeln('RESULT guest: identifyUser returned (2xx, no exception)');

      case 'device':
        final deviceId = _env('DEVICE_ID');
        stdout.writeln('FLOW device — registerDevice folds into identifyUser options; deviceId=$deviceId');
        await _client(_authedSession(), deviceId: deviceId).registerDevice(
          deviceToken: _env('DEVICE_TOKEN'),
          channelType: ChannelType.gcm,
          userId: 'poc-authed-1',
          userProfile: const UserProfile(name: 'POC Authed User'),
        );
        stdout.writeln('RESULT device: registerDevice returned (2xx, no exception)');

      case 'merge':
        // Two-step: (1) guest registers a device, (2) authed signs in with
        // previousGuestIdentityId to fold the guest profile+device in.
        final step = args.length > 1 ? args[1] : 'both';
        final deviceId = _env('DEVICE_ID');
        if (step == 'guest' || step == 'both') {
          stdout.writeln('FLOW merge/guest — guest registers device $deviceId under identity ${_env('GUEST_ID')}');
          await _client(_guestSession(), deviceId: deviceId).registerDevice(
            deviceToken: _env('DEVICE_TOKEN'),
            channelType: ChannelType.gcm,
            userProfile: const UserProfile(name: 'POC Merge Guest'),
          );
          stdout.writeln('RESULT merge/guest: guest device registered (2xx)');
        }
        if (step == 'signin' || step == 'both') {
          stdout.writeln('FLOW merge/signin — authed identify with previousGuestIdentityId=${_env('GUEST_ID')}');
          await _client(_authedSession()).identifyUser(
            userId: 'poc-authed-1',
            userProfile: const UserProfile(name: 'POC Authed User', plan: 'gold'),
            options: IdentifyUserOptions(
              previousGuestIdentityId: _env('GUEST_ID'),
            ),
          );
          stdout.writeln('RESULT merge/signin: authed identify with merge hint returned (2xx)');
        }

      default:
        stderr.writeln('unknown flow: $flow');
        exit(2);
    }
  } on ConnectClientException catch (e) {
    stdout.writeln('CLIENT EXCEPTION (${e.runtimeType}): $e');
    exit(1);
  }
}
