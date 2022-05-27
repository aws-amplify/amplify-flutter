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

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@macro amplify_auth_cognito_dart.hosted_ui_platform}
class HostedUiPlatformImpl extends HostedUiPlatform {
  /// {@macro amplify_auth_cognito_dart.hosted_ui_platform}
  HostedUiPlatformImpl(super.dependencyManager) : super.protected();

  static const _successHtml = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Success!</title>
    <style>
        body {
          font-family: -apple-system, 
                      BlinkMacSystemFont, 
                      "Segoe UI", 
                      Roboto, 
                      Oxygen,
                      Ubuntu,
                      Cantarell,
                      "Fira Sans",
                      "Droid Sans",
                      "Helvetica Neue", 
                      sans-serif;
        }
    </style>
  </head>
  <body>
    <center>
      <h2>Success! You can now close this window.</h2>
	  </center>  
  </body>
</html>''';

  /// Launches the given URL.
  Future<void> launchUrl(String url) async {
    final String command;
    if (Platform.isWindows) {
      command = 'powershell';
    } else if (Platform.isLinux) {
      command = 'xdg-open';
    } else if (Platform.isMacOS) {
      command = 'open';
    } else {
      throw UnsupportedError('Unsupported OS: ${Platform.operatingSystem}');
    }

    final arguments = [
      if (Platform.isWindows) 'start-process',
      url,
    ];

    final res = await Process.run(
      command,
      arguments,
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
    );
    if (res.exitCode != 0) {
      throw UnknownException(
        '"$command ${arguments.join(' ')}" command failed',
        underlyingException: '${res.stdout}\n${res.stderr}',
      );
    }
  }

  /// Connect to a local port by trying all the registered [uris], since some
  /// of the ports may be blocked.
  Future<_LocalServer> _localConnect(Iterable<Uri> uris) async {
    HttpServer? server;
    late Uri selectedUri;
    for (final uri in uris) {
      try {
        server = await HttpServer.bind(
          InternetAddress.loopbackIPv4,
          uri.port,
        );
        selectedUri = uri;
        break;
      } on Exception {
        continue;
      }
    }
    if (server == null) {
      throw UnknownException(
        'Could not bind to the registered localhost ports',
        underlyingException:
            'All ports were blocked: [${uris.map((uri) => uri.port).join(',')}]',
      );
    }
    return _LocalServer(server, selectedUri);
  }

  Future<void> _respond(
    HttpRequest request,
    int statusCode,
    String response, {
    Map<String, String>? headers,
  }) async {
    request.response.statusCode = statusCode;
    headers?.forEach(request.response.headers.add);
    request.response.writeln(response);
    await request.response.flush();
    await request.response.close();
  }

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIOptions options,
    AuthProvider? provider,
  }) async {
    final signInUris = config.signInRedirectUris.where(
      (uri) =>
          uri.scheme == 'http' &&
          (uri.host == 'localhost' || uri.host == '127.0.0.1'),
    );
    if (signInUris.isEmpty) {
      throw const UnknownException(
        'Cannot perform login without a localhost redirect URI registered',
        recoverySuggestion:
            'Register a redirect URI of the form `http://localhost:9999`',
      );
    }

    final localServer = await _localConnect(signInUris);
    final listenServer = localServer.server;
    try {
      final signInUrl = getSignInUri(
        provider: provider,
        redirectUri: localServer.uri,
      ).toString();
      await launchUrl(signInUrl);

      late Map<String, String> queryParams;
      await for (final request in listenServer) {
        final method = request.method;
        if (method != 'GET') {
          await _respond(
            request,
            HttpStatus.methodNotAllowed,
            'Request must be GET',
          );
          continue;
        }
        if (request.uri.path != signInRedirectUri.path) {
          await _respond(request, HttpStatus.notFound, 'Not found');
        }
        queryParams = request.uri.queryParameters;
        if ((!queryParams.containsKey('code') &&
                !queryParams.containsKey('error')) ||
            !queryParams.containsKey('state')) {
          await _respond(
            request,
            HttpStatus.badRequest,
            'Missing parameter',
          );
        }
        await _respond(
          request,
          HttpStatus.ok,
          _successHtml,
          headers: {
            AWSHeaders.contentType: 'text/html',
          },
        );
        break;
      }

      dispatcher.dispatch(
        HostedUiEvent.exchange(
          OAuthParameters.fromJson(queryParams),
        ),
      );
    } finally {
      unawaited(listenServer.close(force: true));
    }
  }

  @override
  Future<void> signOut() async {
    final signOutUris = config.signOutRedirectUris.where(
      (uri) =>
          uri.scheme == 'http' &&
          (uri.host == 'localhost' || uri.host == '127.0.0.1'),
    );
    if (signOutUris.isEmpty) {
      throw const UnknownException(
        'Cannot perform logout without a localhost redirect URI registered',
        recoverySuggestion:
            'Register a redirect URI of the form `http://localhost:9999`',
      );
    }

    final localServer = await _localConnect(signOutUris);
    final listenServer = localServer.server;
    try {
      final signOutUri = getSignOutUri(redirectUri: localServer.uri).toString();
      await launchUrl(signOutUri);

      await for (final request in listenServer) {
        final method = request.method;
        if (method != 'GET') {
          await _respond(
            request,
            HttpStatus.methodNotAllowed,
            'Request must be GET',
          );
          continue;
        }
        if (request.uri.path != signOutRedirectUri.path) {
          await _respond(request, HttpStatus.notFound, 'Not found');
        }
        await _respond(
          request,
          HttpStatus.ok,
          _successHtml,
          headers: {
            AWSHeaders.contentType: 'text/html',
          },
        );
        break;
      }
    } finally {
      unawaited(listenServer.close(force: true));
    }
  }
}

class _LocalServer {
  _LocalServer(this.server, this.uri);

  /// The HTTP server listening on the port defined by [uri].
  final HttpServer server;

  /// The URI selected when starting [server].
  final Uri uri;
}
