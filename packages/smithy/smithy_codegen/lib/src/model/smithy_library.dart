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

import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:smithy_codegen/smithy_codegen.dart';

extension SmithyLibraryX on SmithyLibrary {
  /// Creates a [SmithyLibrary] with sanitized inputs.
  static SmithyLibrary create({
    required String packageName,
    required String serviceName,
    required SmithyLibrary_LibraryType libraryType,
    required String filename,
    String? basePath,
  }) =>
      SmithyLibrary(
        packageName: _sanitize(packageName),
        serviceName: _sanitize(serviceName),
        libraryType: libraryType,
        filename: _sanitizeFilename(libraryType, filename),
        basePath: basePath != null && !basePath.endsWith('/')
            ? '$basePath/'
            : basePath,
      );

  /// Creates a [SmithyLibrary] from a [libraryName].
  static SmithyLibrary fromLibraryName(
    String libraryName, {
    String? basePath,
  }) {
    final parts = libraryName.split('.');
    return fromParts(
      parts,
      basePath: basePath,
    );
  }

  /// Creates a [SmithyLibrary] from the segments of its library name.
  static SmithyLibrary fromParts(
    List<String> parts, {
    String? basePath,
  }) {
    switch (parts.length) {
      case 2:
        const libraryType = SmithyLibrary_LibraryType.SERVICE;
        return SmithyLibrary(
          packageName: _sanitize(parts[0]),
          serviceName: _sanitize(parts[1]),
          libraryType: libraryType,
          filename: _sanitizeFilename(libraryType, parts[1]),
          basePath: basePath,
        );
      case 3:
        final libraryType = _clientRegex.hasMatch(parts[2])
            ? SmithyLibrary_LibraryType.CLIENT
            : SmithyLibrary_LibraryType.SERVER;
        return SmithyLibrary(
          packageName: _sanitize(parts[0]),
          serviceName: _sanitize(parts[1]),
          libraryType: libraryType,
          filename: _sanitizeFilename(libraryType, parts[2]),
          basePath: basePath,
        );
      case 4:
        var libraryType = SmithyLibrary_LibraryType.values
            .firstWhere((el) => _sanitize(el.name) == _sanitize(parts[2]));
        final filename = _sanitizeFilename(libraryType, parts[3]);
        if (libraryType == SmithyLibrary_LibraryType.OPERATION &&
            filename.contains('waiters')) {
          libraryType = SmithyLibrary_LibraryType.WAITERS;
        }
        return SmithyLibrary(
          packageName: _sanitize(parts[0]),
          serviceName: _sanitize(parts[1]),
          libraryType: libraryType,
          filename: filename,
          basePath: basePath,
        );
      default:
        throw ArgumentError('Cannot parse path: ${parts.join('.')}');
    }
  }

  // Used to match client filenames and library names.
  static final _clientRegex =
      RegExp(r'client(?:\.dart)?$', caseSensitive: false);

  /// Creates a [SmithyLibrary] from a `lib/`-relative [path].
  static SmithyLibrary fromPath(
    String packageName,
    String path, {
    String? basePath,
  }) {
    final formattedPath = path.replaceAll(RegExp(r'\.dart$'), '');
    final parts = formattedPath.split('/');

    if (parts.length > 1 && parts.first != 'src') {
      throw ArgumentError.value(
        path,
        'path',
        'Invalid path. Paths must be to top-level library files, or begin with src/.',
      );
    }

    final basePathLength = (basePath ?? '').split('/').length;
    return fromParts(
      [
        packageName,
        ...parts.whereIndexed((index, part) {
          return index > basePathLength || part != 'src';
        }),
      ],
      basePath: basePath,
    );
  }

  static String _sanitizeFilename(
    SmithyLibrary_LibraryType libraryType,
    String filename,
  ) {
    filename = _sanitize(filename);
    switch (libraryType) {
      case SmithyLibrary_LibraryType.OPERATION:
        if (!filename.endsWith('_operation')) {
          filename = '${filename}_operation';
        }
        break;
      case SmithyLibrary_LibraryType.TEST:
        if (!filename.endsWith('_test')) {
          filename = '${filename}_test';
        }
        break;
      default:
        break;
    }
    return filename;
  }

  static String _sanitize(String name) {
    var sanitized = name.replaceAll(RegExp(r'\.dart$'), '').snakeCase;
    if (name.startsWith('_') && !sanitized.startsWith('_')) {
      sanitized = '_$sanitized';
    }
    return sanitized;
  }

  /// The sanitized filename.
  String get sanitizedFilename => _sanitizeFilename(libraryType, filename);

  /// The `lib/`-relative path.
  String get libRelativePath {
    final basePath = hasBasePath() ? this.basePath : '';
    final serviceName = _sanitize(this.serviceName);
    final filename = sanitizedFilename;
    switch (libraryType) {
      case SmithyLibrary_LibraryType.CLIENT:
      case SmithyLibrary_LibraryType.SERVER:
        return '${basePath}src/$serviceName/$filename.dart';
      case SmithyLibrary_LibraryType.MODEL:
        return '${basePath}src/$serviceName/model/$filename.dart';
      case SmithyLibrary_LibraryType.OPERATION:
        return '${basePath}src/$serviceName/operation/$filename.dart';
      case SmithyLibrary_LibraryType.WAITERS:
        return '${basePath}src/$serviceName/operation/${filename}_waiters.dart';
      case SmithyLibrary_LibraryType.SERVICE:
        return '$basePath$filename.dart';
      case SmithyLibrary_LibraryType.COMMON:
        return '${basePath}src/$serviceName/common/$filename.dart';
      case SmithyLibrary_LibraryType.TEST:
        break;
    }
    throw ArgumentError('Invalid library type: $libraryType');
  }

  /// The path relative to the project root.
  String get projectRelativePath {
    final filename = sanitizedFilename;
    switch (libraryType) {
      case SmithyLibrary_LibraryType.CLIENT:
      case SmithyLibrary_LibraryType.SERVER:
      case SmithyLibrary_LibraryType.MODEL:
      case SmithyLibrary_LibraryType.OPERATION:
      case SmithyLibrary_LibraryType.SERVICE:
      case SmithyLibrary_LibraryType.COMMON:
      case SmithyLibrary_LibraryType.WAITERS:
        return 'lib/$libRelativePath';
      case SmithyLibrary_LibraryType.TEST:
        return 'test/$serviceName/$filename.dart';
    }
    throw ArgumentError('Invalid library type: $libraryType');
  }

  /// Renders `this` as a library name.
  String get libraryName {
    final packageName = _sanitize(this.packageName);
    final serviceName = _sanitize(this.serviceName);
    final filename = sanitizedFilename;
    switch (libraryType) {
      case SmithyLibrary_LibraryType.CLIENT:
      case SmithyLibrary_LibraryType.SERVER:
        return '$packageName.$serviceName.$filename';
      case SmithyLibrary_LibraryType.MODEL:
        return '$packageName.$serviceName.model.$filename';
      case SmithyLibrary_LibraryType.OPERATION:
        return '$packageName.$serviceName.operation.$filename';
      case SmithyLibrary_LibraryType.WAITERS:
        return '$packageName.$serviceName.operation.${filename}_waiters';
      case SmithyLibrary_LibraryType.SERVICE:
        return '$packageName.$serviceName';
      case SmithyLibrary_LibraryType.COMMON:
        return '$packageName.$serviceName.common.$filename';
      case SmithyLibrary_LibraryType.TEST:
        return '$packageName.$serviceName.test.$filename';
    }
    throw ArgumentError('Invalid library type: $libraryType');
  }

  /// The absolute `package` URL.
  String get libraryUrl => 'package:$packageName/$libRelativePath';
}
