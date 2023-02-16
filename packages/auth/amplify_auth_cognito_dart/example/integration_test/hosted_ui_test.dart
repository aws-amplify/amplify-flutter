// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:checks/checks.dart';
import 'package:io/io.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:test/test.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:webdriver/async_io.dart';

import 'common.dart';

final ProcessManager manager = ProcessManager();

Future<RpcServer> runApp() async {
  if (!isCI) {
    await manager.spawnBackgroundInTest('chromedriver', [
      '--port=$chromedriverPort',
    ]);
  }
  final application = await manager.spawnBackgroundInTest(
    'dart',
    ['integration_test/hosted_ui.dart'],
  );
  await application.stdout.first;
  return RpcServer.connect();
}

class RpcServer {
  RpcServer._(this._client);

  static Future<RpcServer> connect() async {
    final socket = WebSocketChannel.connect(rpcUri);
    final client = Client(socket.cast<String>());
    unawaited(client.listen());

    await client.sendRequest('configure', {
      'environmentName': 'hosted-ui',
    });
    return RpcServer._(client);
  }

  final Client _client;

  Future<String> signInWithWebUI() async {
    final resp = await _client.sendRequest('signInWithWebUI', {
      'provider': AuthProvider.cognito.toJson(),
    });
    if (resp is! String) {
      throw Exception('Invalid response: $resp');
    }
    return resp;
  }

  Future<CredentialStoreData> getCredentials() async {
    final resp = await _client.sendRequest('getCredentials');
    if (resp is! Map<Object?, Object?>) {
      throw Exception('Invalid response: $resp');
    }
    return CredentialStoreData.fromJson(resp.cast());
  }

  Future<String> signOutWithWebUI({bool globalSignOut = false}) async {
    final resp = await _client.sendRequest('signOutWithWebUI', {
      'globalSignOut': globalSignOut,
    });
    if (resp is! String) {
      throw Exception('Invalid response: $resp');
    }
    return resp;
  }
}

/// Tests Hosted UI on VM by driving `hosted_ui.dart` via an RPC server.
///
/// To test:
/// ```
/// dart test integration_test/hosted_ui_test.dart
/// ```
void main() {
  group(
    'HostedUI',
    () {
      group('VM', () {
        late RpcServer application;
        late WebDriver driver;
        late String username;
        late String password;

        setUp(() async {
          application = await runApp();

          await Amplify.configure(jsonEncode(config));
          addTearDown(Amplify.reset);

          username = generateUsername();
          password = generatePassword();

          logger.debug('Creating user $username...');
          await adminCreateUser(username, password, autoConfirm: true);
          addTearDown(() => deleteUser(username));

          driver = await launchChrome();
        });

        test('sign in / sign out', () async {
          // Launch Hosted UI
          final signInUrl = await application.signInWithWebUI();
          logger.info('Launching URL: $signInUrl');
          await driver.get(signInUrl);

          await driver.signInCognito(username: username, password: password);
          {
            final credentials = await application.getCredentials();
            check(
              because: 'User should be logged in after redirect',
              credentials.userPoolTokens,
            ).isNotNull();
          }

          final signOutUrl = await application.signOutWithWebUI();
          logger.info('Launching URL: $signOutUrl');
          await driver.get(signOutUrl);
          {
            final credentials = await application.getCredentials();

            check(
              because: 'User should be signed out without redirecting',
              credentials,
            )
              ..has((creds) => creds.awsCredentials, 'awsCredentials').isNull()
              ..has((creds) => creds.identityId, 'identityId').isNull()
              ..has((creds) => creds.userPoolTokens, 'userPoolTokens').isNull();
          }
        });
      });
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
