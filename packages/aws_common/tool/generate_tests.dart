// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Generated with tool/generate_tests.dart. Do not modify by hand.

import 'package:aws_common/src/config/aws_path_provider.dart';
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
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
      final expect = switch (credentialsType) {
        // TODO(dnys1): Assume role credentials provider
        AWSCredentialsType.assumeRole => '''
isA<AWSCredentialsProvider>(),
skip: 'Assume role credentials are not supported yet'
''',
        AWSCredentialsType.session => '''
isA<StaticCredentialsProvider>().having(
  (p) => p.retrieve().sessionToken,
  'sessionToken',
  isNotNull,
)
''',
        AWSCredentialsType.basic => '''
isA<StaticCredentialsProvider>().having(
  (p) => p.retrieve().sessionToken,
  'sessionToken',
  isNull,
)
''',
      };
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
