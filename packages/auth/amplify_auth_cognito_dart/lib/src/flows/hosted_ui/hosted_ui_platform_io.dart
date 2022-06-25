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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@macro amplify_auth_cognito.hosted_ui_platform}
class HostedUiPlatformImpl extends HostedUiPlatform {
  /// {@macro amplify_auth_cognito.hosted_ui_platform}
  HostedUiPlatformImpl(super.dependencyManager) : super.protected();

  static String _html(String title, String message) => '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>$title</title>
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
      <h2>$message</h2>
    </center>
  </body>
</html>''';

  String _htmlForParams(Map<String, String> parameters) {
    if (parameters.containsKey('error')) {
      return _html(
        'Error',
        'An unknown error occurred.<br> '
            'Please return to the application for more info.',
      );
    }
    return _html(
      'Success!',
      'Success! You can now close this window.',
    );
  }

  Never _noSuitableRedirect({required bool signIn}) {
    final inOut = signIn ? 'in' : 'out';
    throw InvalidUserPoolConfigurationException(
      message: 'No sign $inOut redirect URLs registered for localhost. '
          'Add one or more sign $inOut redirect URLs that '
          'start with "http://localhost:" followed by a random port greater '
          'than 1024, for example: "http://localhost:3084/". See the docs for '
          'more info: '
          'https://docs.amplify.aws/lib/auth/signin_web_ui/q/platform/flutter/',
    );
  }

  @override
  Uri get signInRedirectUri => config.signInRedirectUris.firstWhere(
        (uri) =>
            uri.scheme == 'http' &&
            (uri.host == 'localhost' || uri.host == '127.0.0.1'),
        orElse: () => _noSuitableRedirect(signIn: true),
      );

  @override
  Uri get signOutRedirectUri => config.signOutRedirectUris.firstWhere(
        (uri) =>
            uri.scheme == 'http' &&
            (uri.host == 'localhost' || uri.host == '127.0.0.1'),
        orElse: () => _noSuitableRedirect(signIn: false),
      );

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

    final arguments = Platform.isWindows ? ['start-process', '"$url"'] : [url];
    final couldNotLaunch = '"$command ${arguments.join(' ')}" command failed';
    try {
      final res = await Process.run(
        command,
        arguments,
        stdoutEncoding: utf8,
        stderrEncoding: utf8,
      );
      if (res.exitCode != 0) {
        throw UrlLauncherException(
          couldNotLaunch,
          underlyingException: '${res.stdout}\n${res.stderr}',
        );
      }
    } on Exception catch (e) {
      throw UrlLauncherException(
        couldNotLaunch,
        underlyingException: e.toString(),
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
      throw UrlLauncherException(
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
      _noSuitableRedirect(signIn: true);
    }

    final localServer = await _localConnect(signInUris);
    final listenServer = localServer.server;
    try {
      final signInUrl = getSignInUri(
        provider: provider,
        redirectUri: localServer.uri,
      ).toString();
      await launchUrl(signInUrl);

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
          continue;
        }
        final queryParams = request.uri.queryParameters;
        if ((!queryParams.containsKey('code') &&
                !queryParams.containsKey('error')) ||
            !queryParams.containsKey('state')) {
          await _respond(
            request,
            HttpStatus.badRequest,
            'Missing parameter',
          );
          continue;
        }
        dispatcher.dispatch(
          HostedUiEvent.exchange(
            OAuthParameters.fromJson(queryParams),
          ),
        );
        await _respond(
          request,
          HttpStatus.ok,
          _htmlForParams(queryParams),
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

  @override
  Future<void> signOut({
    required CognitoSignOutWithWebUIOptions options,
  }) async {
    final signOutUris = config.signOutRedirectUris.where(
      (uri) =>
          uri.scheme == 'http' &&
          (uri.host == 'localhost' || uri.host == '127.0.0.1'),
    );
    if (signOutUris.isEmpty) {
      _noSuitableRedirect(signIn: false);
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
          continue;
        }
        final queryParams = request.uri.queryParameters;
        await _respond(
          request,
          HttpStatus.ok,
          _htmlForParams(queryParams),
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
