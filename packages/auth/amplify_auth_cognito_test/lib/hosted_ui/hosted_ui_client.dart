// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_test/hosted_ui/hosted_ui_common.dart';
import 'package:amplify_auth_cognito_test/hosted_ui/hosted_ui_server.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// A client for interacting with a [HostedUiServer].
class HostedUiClient implements Closeable {
  HostedUiClient._(this._client);

  /// Connects to a running [HostedUiServer].
  static Future<HostedUiClient> connect(String amplifyConfig) async {
    final socket = WebSocketChannel.connect(rpcUri);
    final client = Client(socket.cast<String>());
    unawaited(client.listen());

    _logger.debug('Configuring...');
    await client.sendRequest('configure', {
      'config': amplifyConfig,
    });
    _logger.debug('Successfully configured');
    return HostedUiClient._(client);
  }

  static final AWSLogger _logger = AWSLogger().createChild('HostedUiClient');
  final Client _client;

  /// Signs in using Hosted UI and returns the sign in URL.
  Future<String> signInWithWebUI() async {
    _logger.debug('Signing in...');
    final resp = await _client.sendRequest('signInWithWebUI', {
      'provider': AuthProvider.cognito.toJson(),
    });
    _logger.debug('Got sign-in response: $resp');
    if (resp is! String) {
      throw Exception('Invalid response: $resp');
    }
    return resp;
  }

  /// Retrieves credentials directly from the store without refreshing.
  Future<CredentialStoreData> getCredentials() async {
    _logger.debug('Getting credentials...');
    final resp = await _client.sendRequest('getCredentials');
    _logger.debug('Got credentials response: $resp');
    if (resp is! Map<Object?, Object?>) {
      throw Exception('Invalid response: $resp');
    }
    return CredentialStoreData.fromJson(resp.cast());
  }

  /// Signs out using Hosted UI and returns the sign out URL.
  Future<String> signOutWithWebUI({bool globalSignOut = false}) async {
    _logger.debug('Signing out (globalSignOut: $globalSignOut)...');
    final resp = await _client.sendRequest('signOutWithWebUI', {
      'globalSignOut': globalSignOut,
    });
    _logger.debug('Got sign-out response: $resp');
    if (resp is! String) {
      throw Exception('Invalid response: $resp');
    }
    return resp;
  }

  @override
  Future<void> close() async {
    _logger.debug('Closing client...');
    await _client.close();
    _logger.debug('Closed client');
  }
}
