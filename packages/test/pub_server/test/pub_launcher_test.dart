// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:pub_api_client/pub_api_client.dart';
import 'package:pub_server/pub_server.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:test/test.dart';

import 'common.dart';

void main() {
  group('PubLauncher', () {
    late HttpServer server;
    late Directory tmpDir;
    late PubClient client;
    late Uri pubServerUri;

    setUp(() async {
      final pubServer = PubServer.test();
      server = await io.serve(pubServer.handler, 'localhost', 0);
      pubServerUri = Uri.parse('http://localhost:${server.port}');
      client = PubClient(pubUrl: pubServerUri.toString());
      tmpDir = await Directory.systemTemp.createTemp('pub_launcher_test_');
    });

    tearDown(() async {
      await tmpDir.delete(recursive: true);
      await server.close(force: true);
    });

    test('can launch a local repo', () async {
      await createPackage(
        'pkg_a',
        workingDirectory: tmpDir.path,
        pubServerUri: pubServerUri,
      );
      await createPackage(
        'pkg_b',
        dependencies: ['pkg_a'],
        workingDirectory: tmpDir.path,
        pubServerUri: pubServerUri,
      );
      await createPackage(
        'no_publish',
        publishTo: 'none',
        workingDirectory: tmpDir.path,
        pubServerUri: pubServerUri,
      );
      final launcher = await PubLauncher.local(
        pubServer: pubServerUri,
        path: tmpDir.path,
      );
      await launcher.run();

      final pkgA = await client.packageInfo('pkg_a');
      expect(pkgA.name, 'pkg_a');
      expect(pkgA.latest.version, '1.0.0');
      expect(pkgA.versions.map((v) => v.version), ['1.0.0']);

      final pkgB = await client.packageInfo('pkg_b');
      expect(pkgB.name, 'pkg_b');
      expect(pkgB.latestPubspec.dependencies, contains('pkg_a'));
      expect(pkgB.latest.version, '1.0.0');
      expect(pkgB.versions.map((v) => v.version), ['1.0.0']);

      await expectLater(
        client.packageInfo('no_publish'),
        throwsA(isA<PubClientException>()),
        reason: 'Package should not be published',
      );
    });
  });
}
