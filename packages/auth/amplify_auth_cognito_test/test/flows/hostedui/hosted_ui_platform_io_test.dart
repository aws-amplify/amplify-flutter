// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('windows || mac-os || linux')

import 'dart:async';
import 'dart:io';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_io.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

import '../../common/mock_config.dart';
import '../../common/mock_dispatcher.dart';
import '../../common/mock_hosted_ui.dart';
import '../../common/mock_secure_storage.dart';

class MockHostedUiPlatform extends HostedUiPlatformImpl {
  MockHostedUiPlatform(super.dependencyManager);

  LocalServer? _localServer;

  @override
  Future<void> launchUrl(String url) async {}

  @override
  Future<LocalServer> localConnect(Iterable<Uri> uris) async {
    return _localServer = await super.localConnect(uris);
  }

  @override
  Future<void> close() async {
    _localServer = null;
    await super.close();
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
          options: const CognitoSignInWithWebUIOptions(),
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
            options: const CognitoSignInWithWebUIOptions(),
          ),
          completes,
        );
        await expectLater(
          platform(dependencyManager).signIn(
            options: const CognitoSignInWithWebUIOptions(),
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
          options: const CognitoSignInWithWebUIOptions(),
        );
      });
    });

    group('signIn', () {
      test('completes', () async {
        final client = http.Client();
        final dispatcher = DispatchListener(
          onDispatch: expectAsync1((event) {
            expect(event, isA<HostedUiExchange>());
          }),
        );
        dependencyManager
          ..addInstance(client)
          ..addInstance(mockConfig)
          ..addInstance(hostedUiConfig)
          ..addInstance<Dispatcher>(dispatcher);
        final hostedUiPlatform = MockHostedUiPlatform(dependencyManager);

        final redirect = Uri.parse(redirectUri);
        expect(hostedUiPlatform.signInRedirectUri, redirect);
        expect(hostedUiPlatform.signOutRedirectUri, redirect);

        unawaited(
          hostedUiPlatform.signIn(
            options: const CognitoSignInWithWebUIOptions(),
          ),
        );

        await expectLater(client.get(redirect), completes);
        expect(
          hostedUiPlatform._localServer,
          isNotNull,
          reason: "Server won't close until a valid redirect is performed",
        );

        await expectLater(
          client.get(
            redirect.replace(
              queryParameters: {'state': 'state', 'code': 'code'},
            ),
          ),
          completes,
        );
        await Future<void>.delayed(Duration.zero);
        expect(
          hostedUiPlatform._localServer,
          isNull,
          reason: 'A valid redirect includes state + code/error',
        );
      });
    });
  });
}
