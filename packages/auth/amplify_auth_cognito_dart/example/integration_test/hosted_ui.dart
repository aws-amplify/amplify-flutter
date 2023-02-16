// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_io.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:cognito_example/common.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:stream_channel/stream_channel.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'common.dart';

/// A Hosted UI VM client which runs a rudimentary JSON RPC service for
/// handling requests from the test driver.
///
/// This acts very similarly to `flutter_driver`.
Future<void> main() async {
  final completer = StreamChannelCompleter<String>();
  final handler = webSocketHandler((dynamic webSocket) {
    webSocket as WebSocketChannel;
    completer.setChannel(webSocket.cast());
  });
  final server = Server(completer.channel);

  server
    ..registerMethod('configure', _configure)
    ..registerMethod('signIn', _signIn)
    ..registerMethod('signInWithWebUI', _signInWithWebUI)
    ..registerMethod('getCredentials', _getCredentials)
    ..registerMethod('signOut', _signOut)
    ..registerMethod('signOutWithWebUI', _signOutWithWebUI);

  unawaited(shelf_io.serve(handler, rpcUri.host, rpcUri.port));
  unawaited(server.listen());
  stdout.writeln('RPC server is listening...');
}

late Completer<String> _urlCompleter;
Future<void>? _currentSignIn;
Future<void>? _currentSignOut;

Future<void> _configure(Parameters parameters) async {
  final environmentName = parameters['environmentName'].asStringOr('main');
  await configure(
    environmentName: environmentName,
    hostedUiPlatformFactory: HostedUiPlatform.new,
  );
}

Future<Map<String, Object?>> _signIn(Parameters parameters) async {
  final username = parameters['username'].asString;
  final password = parameters['password'].asString;
  final result = await signIn(
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
    _currentSignIn = hostedSignIn(provider: authProvider),
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
  final credentials =
      await Amplify.Auth.getPlugin(AmplifyAuthCognitoDart.pluginKey)
          // ignore: invalid_use_of_protected_member
          .stateMachine
          .loadCredentials();
  return credentials.toJson();
}

Future<Map<String, Object?>> _signOut(Parameters parameters) async {
  final globalSignOut = parameters['globalSignOut'].asBoolOr(false);
  final result = await signOut(globalSignOut: globalSignOut);
  return result.toJson();
}

Future<String> _signOutWithWebUI(Parameters parameters) async {
  final globalSignOut = parameters['globalSignOut'].asBoolOr(false);
  _urlCompleter = Completer();
  unawaited(
    _currentSignOut = signOut(globalSignOut: globalSignOut),
  );
  return _urlCompleter.future;
}

class HostedUiPlatform extends HostedUiPlatformImpl {
  HostedUiPlatform(super.dependencyManager);

  @override
  Future<void> launchUrl(String url) async {
    _urlCompleter.complete(url);
  }
}
