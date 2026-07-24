// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Live e2e harness for the amplify_connect_client_dart core against a deployed
// backend-notifications construct. NOT part of the package — a scratch tool.
// Drives the REAL AmplifyConnectClient; AWS credentials are supplied
// out-of-band via environment variables so the harness stays pure-Dart.
//
// Usage:
//   dart run tool/e2e_harness.dart <identify|register|remove>
//
// Required env:
//   ENDPOINT, REGION, AK, SK, ST
//   DEVICE_ID     (optional; defaults to a fixed harness id)
//   DEVICE_TOKEN  (register)

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

/// A [ConnectCredentialsProvider] returning fixed credentials from the env.
class _StaticCredentialsProvider implements ConnectCredentialsProvider {
  _StaticCredentialsProvider(this._credentials);
  final AWSCredentials _credentials;
  @override
  Future<AWSCredentials> fetchCredentials() async => _credentials;
}

/// A [DeviceIdStore] that returns a caller-supplied fixed device id.
class _FixedDeviceIdStore implements DeviceIdStore {
  _FixedDeviceIdStore(this._id);
  final String _id;
  @override
  Future<String> getOrCreateDeviceId() async => _id;
  @override
  Future<String?> readDeviceId() async => _id;
  @override
  Future<void> clear() async {}
}

AmplifyConnectClient _client() => AmplifyConnectClient(
  configuration: ConnectClientConfiguration(
    endpoint: _env('ENDPOINT'),
    region: _env('REGION'),
  ),
  credentialsProvider: _StaticCredentialsProvider(
    AWSCredentials(_env('AK'), _env('SK'), _env('ST')),
  ),
  deviceIdStore: _FixedDeviceIdStore(
    Platform.environment['DEVICE_ID'] ?? 'harness-device',
  ),
  platform: 'Android',
  appVersion: '1.0.0',
  channelType: ChannelType.gcm,
);

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    stderr.writeln(
      'usage: dart run tool/e2e_harness.dart <identify|register|remove>',
    );
    exit(2);
  }
  final flow = args.first;
  final client = _client();
  try {
    switch (flow) {
      case 'identify':
        stdout.writeln(
          'FLOW identify — POST /identify-user (SigV4 execute-api)',
        );
        await client.identifyUser(
          userProfile: const UserProfile(
            name: 'POC User',
            email: 'poc-user@example.com',
          ),
        );
        stdout.writeln('RESULT identify: returned (2xx, no exception)');

      case 'register':
        stdout.writeln(
          'FLOW register — POST /register-device (SigV4 execute-api)',
        );
        await client.registerDevice(token: _env('DEVICE_TOKEN'));
        stdout.writeln('RESULT register: returned (2xx, no exception)');

      case 'remove':
        stdout.writeln('FLOW remove — POST /remove-device (SigV4 execute-api)');
        await client.removeDevice();
        stdout.writeln('RESULT remove: returned (2xx, no exception)');

      default:
        stderr.writeln('unknown flow: $flow');
        exit(2);
    }
  } on ConnectClientException catch (e) {
    stdout.writeln('CLIENT EXCEPTION (${e.runtimeType}): $e');
    exit(1);
  }
}
