// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:file/memory.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pub_server/src/database.dart';
import 'package:pub_server/src/models.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_multipart/form_data.dart';
import 'package:shelf_router/shelf_router.dart';

part 'server.g.dart';

class PubServer {
  PubServer._({
    required this.db,
    required this.dataDir,
    required this.fs,
  });

  factory PubServer.prod({String? dataDir}) {
    const fs = LocalFileSystem();
    dataDir ??= fs.systemTempDirectory.createTempSync('pub_server_').path;
    final db = PubDatabase.prod(dataDir);
    return PubServer._(db: db, dataDir: dataDir, fs: fs);
  }

  PubServer.test()
      : db = PubDatabase.test(),
        fs = MemoryFileSystem.test(),
        dataDir = '';

  static final _pubUri = Uri.parse('https://pub.dev/');
  static final _logger = AWSLogger().createChild('PubServer');

  final PubDatabase db;
  final FileSystem fs;
  final String dataDir;

  Future<File?> _openFile(String path) async {
    final file = fs.file(fs.path.join(dataDir, path));
    if (!await file.exists()) {
      return null;
    }
    return file;
  }

  /// If not found locally, redirect to pub.dev for upstream lookup.
  static Response _redirectToPub(Request request) {
    final redirect = _pubUri.resolve(request.url.path);
    _logger.debug('Redirecting to $redirect');
    return Response.found(redirect);
  }

  @Route.get('/api/packages/<name>')
  Future<Response> getVersions(Request request, String name) async {
    final package = await db.getPackage(name);
    if (package == null) {
      return _redirectToPub(request);
    }
    final response = GetVersionsResponse(
      name: name,
      latest: VersionResponse.fromVersion(package.latest),
      versions: package.versions.map(VersionResponse.fromVersion).toList(),
    );
    return Response.ok(
      HttpPayload.json(response),
    );
  }

  @Route.get('/api/packages/<name>/versions/<version>')
  Future<Response> getVersion(
    Request request,
    String name,
    String version,
  ) async {
    final package = await db.getPackage(name);
    if (package == null) {
      return _redirectToPub(request);
    }
    final versionInfo = package.versions.firstWhereOrNull(
      (v) => v.version == Version.parse(version),
    );
    if (versionInfo == null) {
      return Response.notFound('Version not found');
    }
    final response = GetVersionResponse(
      name: name,
      version: VersionResponse.fromVersion(versionInfo),
    );
    return Response.ok(
      HttpPayload.json(response),
    );
  }

  @Route.get('/api/packages/versions/new')
  Future<Response> newVersion(Request request) async {
    return Response.ok(
      HttpPayload.json({
        'url': request.requestedUri
            .resolve('/api/packages/versions/newUpload')
            .toString(),
        'fields': <String, Object?>{},
      }),
    );
  }

  @Route.get('/packages/<name>/versions/<version>.tar.gz')
  Future<Response> download(
    Request request,
    String name,
    String version,
  ) async {
    final package = await db.getPackage(name);
    if (package == null) {
      return _redirectToPub(request);
    }
    final versionInfo = package.versions.firstWhereOrNull(
      (v) => v.version == Version.parse(version),
    );
    if (versionInfo == null) {
      return Response.notFound('Version not found');
    }
    final file = await _openFile('$name/$version.tar.gz');
    if (file == null) {
      return _redirectToPub(request);
    }
    return Response.ok(
      file.openRead(),
      headers: {
        'Content-Type': 'application/octet-stream',
        'Content-Length': (await file.length()).toString(),
      },
    );
  }

  @Route.post('/api/packages/versions/newUpload')
  Future<Response> upload(Request request) async {
    if (!request.isMultipartForm) {
      return Response.badRequest(
        body: 'Expected multipart request',
      );
    }

    final FormData packageTar;
    try {
      packageTar = await request.multipartFormData.singleWhere(
        (part) => part.filename == 'package.tar.gz',
      );
    } on StateError {
      _logger.error('No package.tar.gz part');
      return Response.badRequest(body: 'Missing package.tar.gz');
    }

    final bytes = await collectBytes(packageTar.part);
    final tar = gzip.decode(bytes);
    final body = TarDecoder().decodeBytes(tar);

    String? pubspecYaml;
    String? changelog;
    String? readme;
    for (final file in body) {
      _logger.verbose('Tar item: ${file.name} (file: ${file.isFile})');
      if (!file.isFile) continue;
      switch (file.name.toLowerCase()) {
        case 'pubspec.yaml':
          pubspecYaml = utf8.decode(file.content as List<int>);
          break;
        case 'readme.md':
          readme = utf8.decode(file.content as List<int>);
          break;
        case 'changelog.md':
          changelog = utf8.decode(file.content as List<int>);
          break;
      }
    }

    if (pubspecYaml == null) {
      return Response.badRequest(
        body: 'Missing pubspec.yaml',
      );
    }
    if (readme == null) {
      return Response.badRequest(
        body: 'Missing readme.md',
      );
    }
    if (changelog == null) {
      return Response.badRequest(
        body: 'Missing changelog.md',
      );
    }

    final pubspec = Pubspec.parse(pubspecYaml);
    final version = pubspec.version;
    if (version == null) {
      return Response.badRequest(
        body: 'Missing version in pubspec.yaml',
      );
    }

    final filepath = fs.path.join(dataDir, pubspec.name, '$version.tar.gz');
    try {
      final file = fs.file(filepath);
      await file.create(recursive: true);
      await file.writeAsBytes(bytes);
    } on Exception catch (e, st) {
      _logger.error('Failed to write file ($filepath): ', e, st);
      return Response.internalServerError(
        body: 'Failed to write file ($filepath)',
      );
    }

    await db.upsertPackage(
      name: pubspec.name,
      version: version,
      archiveUrl: request.requestedUri
          .resolve('/packages/${pubspec.name}/versions/$version.tar.gz')
          .toString(),
      pubspecYaml: pubspecYaml,
      readme: readme,
      changelog: changelog,
    );
    return Response.found(
      request.requestedUri
          .resolve('/api/packages/versions/newUploadFinish')
          .toString(),
    );
  }

  @Route.get('/api/packages/versions/newUploadFinish')
  Future<Response> uploadFinish(Request request) async {
    return Response.ok(
      HttpPayload.json({
        'success': {
          'message': 'Package uploaded successfully.',
        },
      }),
    );
  }

  static Middleware get _loggerMiddleware => logRequests(
        logger: (message, isError) =>
            (isError ? _logger.error : _logger.info)(message),
      );

  Handler get handler => const Pipeline()
      .addMiddleware(_loggerMiddleware)
      .addMiddleware(corsMiddleware)
      .addHandler(_$PubServerRouter(this));
}

/// Allows access from Web UI.
Handler corsMiddleware(Handler handler) {
  return (request) {
    if (request.method == 'OPTIONS') {
      return Response.ok(
        null,
        headers: {
          'Access-Control-Allow-Origin': '*',
        },
      );
    }
    return handler(request);
  };
}
