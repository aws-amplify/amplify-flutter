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

@TestOn('windows || mac-os || linux')

import 'dart:io';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_io.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:test/test.dart';

import '../../common/mock_hosted_ui.dart';
import '../../common/mock_secure_storage.dart';

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
  });
}
