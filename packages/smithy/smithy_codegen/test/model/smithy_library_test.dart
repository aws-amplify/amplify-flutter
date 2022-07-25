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

import 'package:smithy_codegen/src/model/smithy_library.dart';
import 'package:smithy_codegen/src/service/codegen.pb.dart';
import 'package:test/test.dart';

void main() {
  const packageName = 'example';
  const serviceName = 'Foo';
  const clientName = 'FooClient';
  const modelName = 'GetFooInput';

  group('SmithyLibrary', () {
    test('valid service', () {
      final expected = SmithyLibraryX.create(
        packageName: packageName,
        serviceName: serviceName,
        libraryType: SmithyLibrary_LibraryType.SERVICE,
        filename: '$serviceName.dart',
      );

      final fromParts = SmithyLibraryX.fromParts([packageName, serviceName]);
      expect(fromParts, equals(expected));

      final fromPath = SmithyLibraryX.fromPath(packageName, serviceName);
      expect(fromPath, equals(expected));

      final fromLibraryName =
          SmithyLibraryX.fromLibraryName('$packageName.$serviceName');
      expect(fromLibraryName, equals(expected));

      expect(expected.filename, equals('foo'));
      expect(expected.libraryName, equals('example.foo'));
      expect(expected.libraryUrl, equals('package:example/foo.dart'));
      expect(expected.libRelativePath, equals('foo.dart'));
      expect(expected.projectRelativePath, equals('lib/foo.dart'));
    });

    test('valid client', () {
      const filename = '$clientName.dart';
      final expected = SmithyLibraryX.create(
        packageName: packageName,
        serviceName: serviceName,
        libraryType: SmithyLibrary_LibraryType.CLIENT,
        filename: filename,
      );

      final fromParts =
          SmithyLibraryX.fromParts([packageName, serviceName, clientName]);
      expect(fromParts, equals(expected));

      final fromPath =
          SmithyLibraryX.fromPath(packageName, 'src/$serviceName/$filename');
      expect(fromPath, equals(expected));

      final fromLibraryName = SmithyLibraryX.fromLibraryName(
        '$packageName.$serviceName.$clientName',
      );
      expect(fromLibraryName, equals(expected));

      expect(expected.filename, equals('foo_client'));
      expect(expected.libraryName, equals('example.foo.foo_client'));
      expect(
        expected.libraryUrl,
        equals('package:example/src/foo/foo_client.dart'),
      );
      expect(expected.libRelativePath, equals('src/foo/foo_client.dart'));
      expect(
        expected.projectRelativePath,
        equals('lib/src/foo/foo_client.dart'),
      );
    });

    test('valid model', () {
      const filename = '$modelName.dart';
      final expected = SmithyLibraryX.create(
        packageName: packageName,
        serviceName: serviceName,
        libraryType: SmithyLibrary_LibraryType.MODEL,
        filename: filename,
      );

      final fromParts = SmithyLibraryX.fromParts([
        packageName,
        serviceName,
        'model',
        modelName,
      ]);
      expect(fromParts, equals(expected));

      final fromPath = SmithyLibraryX.fromPath(
        packageName,
        'src/$serviceName/model/$filename',
      );
      expect(fromPath, equals(expected));

      final fromLibraryName = SmithyLibraryX.fromLibraryName(
        '$packageName.$serviceName.model.$modelName',
      );
      expect(fromLibraryName, equals(expected));

      expect(expected.filename, equals('get_foo_input'));
      expect(expected.libraryName, equals('example.foo.model.get_foo_input'));
      expect(
        expected.libraryUrl,
        equals('package:example/src/foo/model/get_foo_input.dart'),
      );
      expect(
          expected.libRelativePath, equals('src/foo/model/get_foo_input.dart'));
      expect(
        expected.projectRelativePath,
        equals('lib/src/foo/model/get_foo_input.dart'),
      );
    });

    test('invalid path', () {
      // paths must begin with src/ or point to top-level libraries.
      const invalidPath = '$serviceName/$modelName.dart';
      expect(
        () => SmithyLibraryX.fromPath(packageName, invalidPath),
        throwsArgumentError,
      );
    });

    test('invalid LibraryType', () {
      // `blah` is not a valid library type.
      const invalidLibraryType = 'src/$serviceName/blah/$modelName.dart';
      expect(
        () => SmithyLibraryX.fromPath(packageName, invalidLibraryType),
        throwsStateError,
      );
    });
  });
}
