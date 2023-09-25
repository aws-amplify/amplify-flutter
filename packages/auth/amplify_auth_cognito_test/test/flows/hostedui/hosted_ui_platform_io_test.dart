// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('windows || mac-os || linux')

import 'dart:async';
import 'dart:io';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_io.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_dispatcher.dart';
import 'package:amplify_auth_cognito_test/common/mock_hosted_ui.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

class MockHostedUiPlatform extends HostedUiPlatformImpl {
  MockHostedUiPlatform(super.dependencyManager);

  final launchedServer = Completer<void>();

  @override
  Future<void> launchUrl(String url) async {}

  @override
  Future<LocalServer> localConnect(Iterable<Uri> uris) async {
    final localServer = await super.localConnect(uris);
    launchedServer.complete();
    return localServer;
  }
}

void main() {
  group('HostedUIPlatform', () {
    late DependencyManager dependencyManager;

    setUp(() {
      dependencyManager = DependencyManager();
      final secureStorage = MockSecureStorage();
      dependencyManager.addInstance<SecureStorageInterface>(secureStorage);
    });

    tearDown(() {
      dependencyManager.close();
    });

    group('localConnect', () {
      final uris = [
        Uri.parse('http://localhost:10000'),
        Uri.parse('http://localhost:10001'),
        Uri.parse('http://localhost:10002'),
      ];

      test('selects from multiple URIs when a port is blocked', () async {
        final platform = createHostedUiFactory(
          signIn: expectAsync3((platform, options, provider) async {
            final boundServer =
                await (platform as HostedUiPlatformImpl).localConnect(uris);
            addTearDown(() => boundServer.server.close(force: true));
            expect(boundServer.uri, equals(uris[1]));
          }),
          signOut: (platform, options) => throw UnimplementedError(),
        );

        final server = await HttpServer.bind(
          InternetAddress.loopbackIPv4,
          uris[0].port,
        );
        addTearDown(() => server.close(force: true));
        await platform(dependencyManager).signIn(
          options: const CognitoSignInWithWebUIPluginOptions(),
        );
      });

      test('multiple calls do not fail', () async {
        final platform = createHostedUiFactory(
          signIn: expectAsync3(
            count: 2,
            (platform, options, provider) async {
              final boundServer =
                  await (platform as HostedUiPlatformImpl).localConnect(uris);
              addTearDown(() => boundServer.server.close(force: true));
            },
          ),
          signOut: (platform, options) => throw UnimplementedError(),
        );

        await expectLater(
          platform(dependencyManager).signIn(
            options: const CognitoSignInWithWebUIPluginOptions(),
          ),
          completes,
        );
        await expectLater(
          platform(dependencyManager).signIn(
            options: const CognitoSignInWithWebUIPluginOptions(),
          ),
          completes,
        );
      });

      test('fails when all ports are blocked', () async {
        final platform = createHostedUiFactory(
          signIn: expectAsync3((platform, options, provider) async {
            expect(
              (platform as HostedUiPlatformImpl).localConnect(uris),
              throwsA(isA<UrlLauncherException>()),
            );
          }),
          signOut: (platform, options) => throw UnimplementedError(),
        );

        for (final uri in uris) {
          final server = await HttpServer.bind(
            InternetAddress.loopbackIPv4,
            uri.port,
          );
          addTearDown(() => server.close(force: true));
        }
        await platform(dependencyManager).signIn(
          options: const CognitoSignInWithWebUIPluginOptions(),
        );
      });
    });

    group('signIn', () {
      test('completes', () async {
        final client = http.Client();
        final dispatcher = MockDispatcher(
          onDispatch: expectAsync1((event) {
            expect(event, isA<HostedUiExchange>());
            return null;
          }),
        );
        dependencyManager
          ..addInstance(client)
          ..addInstance(mockConfig)
          ..addInstance(hostedUiConfig)
          ..addInstance<Dispatcher<AuthEvent, AuthState>>(dispatcher);
        final hostedUiPlatform = MockHostedUiPlatform(dependencyManager);

        final redirect = Uri.parse(
          redirectUri.split(',').firstWhere((uri) => uri.contains('localhost')),
        );
        expect(hostedUiPlatform.signInRedirectUri, redirect);
        expect(hostedUiPlatform.signOutRedirectUri, redirect);

        expect(
          hostedUiPlatform.signIn(
            options: const CognitoSignInWithWebUIPluginOptions(),
          ),
          completes,
        );

        await hostedUiPlatform.launchedServer.future;

        await expectLater(
          client.get(redirect),
          completion(
            isA<http.Response>()
                .having((res) => res.statusCode, 'statusCode', isNot(200)),
          ),
          reason: 'Local server should be running and able to accept '
              'requests. Should return 4xx for anything but a success/error '
              'redirect.',
        );

        final successRedirect = redirect.replace(
          queryParameters: {'state': 'state', 'code': 'code'},
        );
        await expectLater(
          client.get(successRedirect),
          completion(
            isA<http.Response>()
                .having((res) => res.statusCode, 'statusCode', 200),
          ),
          reason: "Server won't close until a valid redirect is performed",
        );
        await expectLater(
          client.get(redirect),
          throwsA(isA<http.ClientException>()),
          reason: 'Server should be closed after successful redirect',
        );
      });
    });
  });
}
