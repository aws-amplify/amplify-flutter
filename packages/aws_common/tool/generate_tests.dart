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

import 'dart:convert';
import 'dart:io';

import 'test_models.dart';

Future<void> main() async {
  await generateParserTests();
  await generateFileLocationTests();
  await generateProfileTests();
}

Future<void> generateParserTests() async {
  const inputFilepath = 'tool/tests/parser-tests.json';
  const outputFilepath = 'test/config/profile_file_parser_test.dart';
  final file = File(inputFilepath);
  final json = jsonDecode(await file.readAsString()) as Map<String, Object?>;
  final tests = (json['tests'] as List).cast<Map<Object?, Object?>>();

  final output = StringBuffer(
    '''
// Generated with tool/generate_tests.dart. Do not modify by hand.

import 'dart:convert';

import 'package:aws_common/src/config/aws_profile_file.dart';
import 'package:aws_common/src/config/config_file/file_loader.dart';
import 'package:aws_common/src/config/config_file/parser.dart';
import 'package:aws_common/src/config/config_file/resolved_file.dart';
import 'package:test/test.dart';

void main() {
  const loader = AWSProfileFileLoader();
  group(testOn: 'vm', 'AWSProfileFileParser', () {
''',
  );
  for (final testJson in tests) {
    final test = ParserTest.fromJson(testJson.cast());
    output.writeln("test(r'${test.name}', () {");

    final config = test.input.configFile;
    if (config != null) {
      output.writeln(
        '''
  const configContents = r\'\'\'
$config\'\'\';
  const configFile = ResolvedFile(AWSProfileFileType.config, configContents);
''',
      );
    } else {
      output.writeln(
        '''
  const configFile = ResolvedFile.empty(AWSProfileFileType.config);
''',
      );
    }

    final credentials = test.input.credentialsFile;
    if (credentials != null) {
      output.writeln(
        '''
  const credentialsContents = r\'\'\'
$credentials\'\'\';
  const credentialsFile = ResolvedFile(AWSProfileFileType.credentials, credentialsContents,);
''',
      );
    } else {
      output.writeln(
        '''
  const credentialsFile = ResolvedFile.empty(AWSProfileFileType.credentials);
''',
      );
    }

    final error = test.output.errorContaining?.replaceAll('\'', '\\\'');
    if (error != null) {
      output.writeln(
        '''
expect(
    loader.load(
      configFile: configFile,
      credentialsFile: credentialsFile,
    ),
    throwsA(isA<AWSProfileFileException>().having(
      (e) => e.message,
      'message',
      contains('$error'),
    ),),
  );
''',
      );
    } else {
      assert(test.output.profiles != null, 'profiles should be defined');
      output.writeln(
        '''
final expected = AWSProfileFile.fromJson(jsonDecode(r\'\'\'
${jsonEncode(test.output.toJson())}
\'\'\',) as Map<String, Object?>,);
expect(
    loader.load(
      configFile: configFile,
      credentialsFile: credentialsFile,
    ),
    completion(equals(expected)),
  );
''',
      );
    }

    output.writeln('});');
  }
  output.writeln(
    '''
  });
}
''',
  );
  await File(outputFilepath).writeAsString(output.toString());
  await Process.run('dart', ['format', '--fix', outputFilepath]);
}

Future<void> generateFileLocationTests() async {
  const inputFilepath = 'tool/tests/file-location-tests.json';
  const outputFilepath = 'test/config/file_location_test.dart';
  final file = File(inputFilepath);
  final json = jsonDecode(await file.readAsString()) as Map<String, Object?>;
  final tests = (json['tests'] as List).cast<Map<Object?, Object?>>();

  final output = StringBuffer(
    '''
// Generated with tool/generate_tests.dart. Do not modify by hand.

import 'package:aws_common/aws_common.dart';
import 'package:os_detect/override.dart';
import 'package:test/test.dart';

void main() {
  const pathProvider = AWSPathProvider();
  group(testOn: 'vm', 'AWSPathProvider', () {
''',
  );
  for (final testJson in tests) {
    final test = FileLocationTest.fromJson(testJson.cast());
    // These tests test resolution when no environment variables are set, but
    // these don't really test anything above and beyond the other tests.
    const skipTests = [
      'User home is loaded using language-specific resolution on non-windows '
          r'platforms when $HOME is not set.',
      'User home is loaded using language-specific resolution on windows '
          'platforms when no environment variables are set.',
    ];
    if (skipTests.contains(test.name)) {
      continue;
    }
    output.writeln(
      '''
test(r'${test.name}', () {
  overrideOperatingSystem(const OperatingSystem('${test.platform.name}', ''), () {
     overrideEnvironment({
      ${test.environment.entries.map((entry) => "'${entry.key}': r'${entry.value}'").join(',\n')}
     }, () {
          expect(pathProvider.configFileLocation, completion(r'${test.configLocation}'),);
          expect(pathProvider.sharedCredentialsFileLocation, completion(r'${test.credentialsLocation}'),);
     },);
  },);
});
''',
    );
  }
  output.writeln('});}');

  await File(outputFilepath).writeAsString(output.toString());
  await Process.run('dart', ['format', '--fix', outputFilepath]);
}

Future<void> generateProfileTests() async {
  const inputFilepath = 'tool/tests/profile-tests.json';
  const outputFilepath = 'test/config/profile_test.dart';
  final file = File(inputFilepath);
  final json = jsonDecode(await file.readAsString()) as Map<String, Object?>;
  final tests = ProfileTest.fromJson(
    (json['testSuites'] as List<Object?>).single as Map<String, Object?>,
  );

  final output = StringBuffer(
    '''
// Generated with tool/generate_tests.dart. Do not modify by hand.

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

void main() {
  group('AWSProfile', () {
''',
  );

  for (final test in [tests.regionTests, ...tests.credentialsTests]) {
    output.writeln(
      '''
test('${test.name}', () {
  final profile = AWSProfileFile.fromJson(jsonDecode(r\'\'\'
${jsonEncode(tests.profiles)}
\'\'\',) as Map<String, Object?>,);
''',
    );
    final region = test.output.region;
    if (region != null) {
      output.writeln(
        '''
expect(
  profile.region('${test.profile}'),
  '$region'
);
''',
      );
    } else {
      final credentialsType = test.output.credentialType!;
      final String expect;
      switch (credentialsType) {
        // TODO(dnys1): Assume role credentials provider
        case AWSCredentialsType.assumeRole:
          expect = '''
isA<AWSCredentialsProvider>(),
skip: 'Assume role credentials are not supported yet'
''';
          break;
        case AWSCredentialsType.session:
          expect = '''
isA<StaticCredentialsProvider>().having(
  (p) => p.retrieve().sessionToken,
  'sessionToken',
  isNotNull,
)
''';
          break;
        case AWSCredentialsType.basic:
          expect = '''
isA<StaticCredentialsProvider>().having(
  (p) => p.retrieve().sessionToken,
  'sessionToken',
  isNull,
)
''';
          break;
      }
      output.writeln(
        '''
expect(
  profile.credentials('${test.profile}'),
  $expect,
);
''',
      );
    }
    output.writeln('});');
  }

  output.writeln('});}');

  await File(outputFilepath).writeAsString(output.toString());
  await Process.run('dart', ['format', '--fix', outputFilepath]);
}
