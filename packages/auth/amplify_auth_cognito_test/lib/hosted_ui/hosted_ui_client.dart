import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_test/hosted_ui/hosted_ui_common.dart';
import 'package:amplify_auth_cognito_test/hosted_ui/hosted_ui_server.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// A client for interacting with a [HostedUIServer].
class HostedUIClient {
  HostedUIClient._(this._client);

  /// Connects to a running [HostedUIServer].
  static Future<HostedUIClient> connect(String amplifyConfig) async {
    final socket = WebSocketChannel.connect(rpcUri);
    final client = Client(socket.cast<String>());
    unawaited(client.listen());

    await client.sendRequest('configure', {
      'config': amplifyConfig,
    });
    return HostedUIClient._(client);
  }

  final Client _client;

  /// Signs in using Hosted UI and returns the sign in URL.
  Future<String> signInWithWebUI() async {
    final resp = await _client.sendRequest('signInWithWebUI', {
      'provider': AuthProvider.cognito.toJson(),
    });
    if (resp is! String) {
      throw Exception('Invalid response: $resp');
    }
    return resp;
  }

  /// Retrieves credentials directly from the store without refreshing.
  Future<CredentialStoreData> getCredentials() async {
    final resp = await _client.sendRequest('getCredentials');
    if (resp is! Map<Object?, Object?>) {
      throw Exception('Invalid response: $resp');
    }
    return CredentialStoreData.fromJson(resp.cast());
  }

  /// Signs out using Hosted UI and returns the sign out URL.
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
