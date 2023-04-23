// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pub_api_client/pub_api_client.dart';
import 'package:pub_server/pub_server.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:test/test.dart';

import 'common.dart';

void main() {
  group('PubServer', () {
    late PubServer pubServer;
    late HttpServer server;
    late PubClient client;
    late Directory tmpDir;
    late Uri pubServerUri;

    setUp(() async {
      pubServer = PubServer.test();
      server = await io.serve(pubServer.handler, 'localhost', 0);
      pubServerUri = Uri.parse('http://localhost:${server.port}');
      client = PubClient(pubUrl: pubServerUri.toString());
      tmpDir = await Directory.systemTemp.createTemp('pub_server_test_');
    });

    tearDown(() async {
      await tmpDir.delete(recursive: true);
      await server.close(force: true);
    });

    test('can publish + update a package', () async {
      await createPackage(
        'pkg_a',
        workingDirectory: tmpDir.path,
        pubServerUri: pubServerUri,
      );
      final pkgA = p.join(tmpDir.path, 'pkg_a');
      await runProcess(
        'dart',
        ['pub', 'publish', '--force'],
        workingDirectory: pkgA,
        pubServerUri: pubServerUri,
      );
      final package = await client.packageInfo('pkg_a');
      expect(package.name, 'pkg_a');
      expect(package.latest.version, '1.0.0');
      expect(package.versions.map((v) => v.version), ['1.0.0']);

      final pubspecFile = File(p.join(pkgA, 'pubspec.yaml'));
      final pubspec = await pubspecFile.readAsString();
      final updatedPubspec = pubspec.replaceFirst(
        'version: 1.0.0',
        'version: 1.0.1',
      );
      await pubspecFile.writeAsString(updatedPubspec);
      await runProcess(
        'dart',
        ['pub', 'publish', '--force'],
        workingDirectory: pkgA,
        pubServerUri: pubServerUri,
      );
      final updatedPackage = await client.packageInfo('pkg_a');
      expect(updatedPackage.name, 'pkg_a');
      expect(updatedPackage.latest.version, '1.0.1');
      expect(updatedPackage.versions.map((v) => v.version), ['1.0.1', '1.0.0']);
    });
  });
}
