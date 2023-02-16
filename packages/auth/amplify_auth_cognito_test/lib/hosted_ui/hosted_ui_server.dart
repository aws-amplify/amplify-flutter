// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_io.dart';
import 'package:amplify_auth_cognito_test/hosted_ui/hosted_ui_common.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:shelf/shelf.dart' hide Server;
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:stream_channel/stream_channel.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// A Hosted UI server which runs a rudimentary JSON RPC service for
/// handling requests from the test driver.
///
/// This acts very similarly to `flutter_driver`.
class HostedUIServer implements Closeable {
  HostedUIServer._(this._server, this._rpcServer) {
    _rpcServer
      ..registerMethod('configure', _configure)
      ..registerMethod('signIn', _signIn)
      ..registerMethod('signInWithWebUI', _signInWithWebUI)
      ..registerMethod('getCredentials', _getCredentials)
      ..registerMethod('signOut', _signOut)
      ..registerMethod('signOutWithWebUI', _signOutWithWebUI);
    unawaited(_rpcServer.listen());
    stdout.writeln('Hosted UI server is listening...');
  }

  static final _logger = AWSLogger().createChild('HostedUIServer');

  /// Launches a Hosted UI server on the default [rpcUri].
  static Future<HostedUIServer> launch() async {
    final completer = StreamChannelCompleter<String>();
    final wsHandler = webSocketHandler((dynamic webSocket) {
      webSocket as WebSocketChannel;
      completer.setChannel(webSocket.cast());
    });
    final handler = const Pipeline().addMiddleware(
      logRequests(
        logger: (message, isError) {
          _logger.log(
            isError ? LogLevel.error : LogLevel.debug,
            message,
          );
        },
      ),
    ).addHandler(wsHandler);
    final server = await shelf_io.serve(handler, rpcUri.host, rpcUri.port);
    final rpcServer = Server(completer.channel);

    return HostedUIServer._(server, rpcServer);
  }

  final HttpServer _server;
  final Server _rpcServer;

  AmplifyAuthCognitoDart get _plugin =>
      Amplify.Auth.getPlugin(AmplifyAuthCognitoDart.pluginKey);

  late Completer<String> _urlCompleter;
  Future<void>? _currentSignIn;
  Future<void>? _currentSignOut;

  Future<void> _configure(Parameters parameters) async {
    final config = parameters['config'].asString;
    await Amplify.addPlugin(
      AmplifyAuthCognitoDart(
        credentialStorage: AmplifySecureStorageWorker(
          config: AmplifySecureStorageConfig.byNamespace(
            namespace: webDatabaseName,
          ).rebuild((config) {
            // enabling useDataProtection requires adding the app to an
            // app group, which requires setting a development team
            config.macOSOptions.useDataProtection = false;
          }),
        ),
        hostedUiPlatformFactory: (manager) => _HostedUiPlatform(manager, this),
      ),
    );
    await Amplify.configure(config);
  }

  Future<Map<String, Object?>> _signIn(Parameters parameters) async {
    final username = parameters['username'].asString;
    final password = parameters['password'].asString;
    final result = await _plugin.signIn(
      username: username,
      password: password,
    );
    return result.toJson();
  }

  Future<String> _signInWithWebUI(Parameters parameters) async {
    final provider = parameters['provider'];
    final authProvider = provider.exists
        ? AuthProvider.fromJson(provider.asMap.cast())
        : AuthProvider.cognito;
    _urlCompleter = Completer();
    unawaited(
      _currentSignIn = _plugin.signInWithWebUI(provider: authProvider),
    );
    final url = await _urlCompleter.future;
    return url;
  }

  Future<Map<String, Object?>> _getCredentials(Parameters _) async {
    try {
      await _currentSignIn;
      await _currentSignOut;
    } finally {
      _currentSignIn = null;
      _currentSignOut = null;
    }
    // ignore: invalid_use_of_protected_member
    final credentials = await _plugin.stateMachine.loadCredentials();
    return credentials.toJson();
  }

  Future<Map<String, Object?>> _signOut(Parameters parameters) async {
    final globalSignOut = parameters['globalSignOut'].asBoolOr(false);
    final result = await _plugin.signOut(
      options: SignOutOptions(globalSignOut: globalSignOut),
    );
    return result.toJson();
  }

  Future<String> _signOutWithWebUI(Parameters parameters) async {
    final globalSignOut = parameters['globalSignOut'].asBoolOr(false);
    _urlCompleter = Completer();
    unawaited(
      _currentSignOut = _plugin.signOut(
        options: SignOutOptions(globalSignOut: globalSignOut),
      ),
    );
    return _urlCompleter.future;
  }

  @override
  Future<void> close() async {
    await _rpcServer.close();
    await _server.close(force: true);
  }
}

class _HostedUiPlatform extends HostedUiPlatformImpl {
  _HostedUiPlatform(super.dependencyManager, this._server);

  final HostedUIServer _server;

  @override
  Future<void> launchUrl(String url) async {
    _server._urlCompleter.complete(url);
  }
}
