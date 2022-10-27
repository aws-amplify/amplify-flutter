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
import 'package:aws_common/src/config/config_file/terms.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test_models.g.dart';

const serializable = JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
);

enum TestPlatform {
  linux,
  windows,
}

@serializable
class FileLocationTest with AWSSerializable<Map<String, Object?>> {
  const FileLocationTest({
    required this.name,
    this.environment = const {},
    this.languageSpecificHome,
    required this.platform,
    this.profile,
    required this.configLocation,
    required this.credentialsLocation,
  });

  factory FileLocationTest.fromJson(Map<String, Object?> json) =>
      _$FileLocationTestFromJson(json);

  final String name;
  final Map<String, String> environment;
  final String? languageSpecificHome;
  final TestPlatform platform;
  final String? profile;
  final String configLocation;
  final String credentialsLocation;

  @override
  Map<String, Object?> toJson() => _$FileLocationTestToJson(this);
}

@serializable
class ParserTest with AWSSerializable<Map<String, Object?>> {
  const ParserTest({
    required this.name,
    required this.input,
    required this.output,
  });

  factory ParserTest.fromJson(Map<String, Object?> json) =>
      _$ParserTestFromJson(json);

  final String name;
  final ParserTestInput input;
  final ParserTestOutput output;

  @override
  Map<String, Object?> toJson() => _$ParserTestToJson(this);
}

@serializable
class ParserTestInput with AWSSerializable<Map<String, Object?>> {
  const ParserTestInput({
    this.configFile,
    this.credentialsFile,
  });

  factory ParserTestInput.fromJson(Map<String, Object?> json) =>
      _$ParserTestInputFromJson(json);

  final String? configFile;
  final String? credentialsFile;

  @override
  Map<String, Object?> toJson() => _$ParserTestInputToJson(this);
}

@serializable
@NullableAWSProfileFileConverter()
class ParserTestOutput with AWSSerializable<Map<String, Object?>> {
  const ParserTestOutput({
    this.errorContaining,
    this.profiles,
  });

  factory ParserTestOutput.fromJson(Map<String, Object?> json) =>
      _$ParserTestOutputFromJson(json);

  final String? errorContaining;
  final AWSProfileFile? profiles;

  @override
  Map<String, Object?> toJson() => _$ParserTestOutputToJson(this);
}

@serializable
@AWSProfileFileConverter()
class ProfileTest with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const ProfileTest({
    required this.profiles,
    required this.regionTests,
    required this.credentialsTests,
  });

  factory ProfileTest.fromJson(Map<String, Object?> json) =>
      _$ProfileTestFromJson(json);

  final AWSProfileFile profiles;
  final ProfileTestCase regionTests;
  final List<ProfileTestCase> credentialsTests;

  @override
  Map<String, Object?> toJson() => _$ProfileTestToJson(this);

  @override
  String get runtimeTypeName => 'ProfileTest';
}

@serializable
class ProfileTestCase {
  const ProfileTestCase({
    required this.name,
    required this.profile,
    required this.output,
  });

  factory ProfileTestCase.fromJson(Map<String, Object?> json) =>
      _$ProfileTestCaseFromJson(json);

  final String name;
  final String profile;
  final ProfileTestOutput output;

  Map<String, Object?> toJson() => _$ProfileTestCaseToJson(this);
}

enum AWSCredentialsType {
  assumeRole,
  session,
  basic,
}

@serializable
class ProfileTestOutput {
  const ProfileTestOutput({
    this.region,
    this.credentialType,
  });

  factory ProfileTestOutput.fromJson(Map<String, Object?> json) =>
      _$ProfileTestOutputFromJson(json);

  final String? region;
  final AWSCredentialsType? credentialType;

  Map<String, Object?> toJson() => _$ProfileTestOutputToJson(this);
}

class AWSProfileFileConverter
    implements JsonConverter<AWSProfileFile, Map<String, Object?>> {
  const AWSProfileFileConverter();

  @override
  AWSProfileFile fromJson(Map<String, Object?> json) {
    return AWSProfileFile.build((b) {
      for (final profile in json.entries) {
        final profileName = profile.key;
        final profileMap = profile.value as Map<String, Object?>;
        b.profiles[profileName] = AWSProfile.build((b) {
          b.name = profileName;
          for (final property in profileMap.entries) {
            final propertyName = property.key;
            b.properties[propertyName] = AWSProperty.build((b) {
              b.name = propertyName;
              final propertyValue = property.value as String;
              if (propertyValue.startsWith(lineBreakExp)) {
                for (final propLine
                    in propertyValue.split(lineBreakExp).skip(1)) {
                  final name = propLine.split('=')[0].trim();
                  final value = propLine.split('=')[1].trim();
                  b.value = '';
                  b.subProperties[name] = AWSProperty(
                    name: name,
                    value: value,
                  );
                }
              } else {
                b.value = propertyValue;
              }
            });
          }
        });
      }
    });
  }

  @override
  Map<String, Object?> toJson(AWSProfileFile object) =>
      object.toJson()['profiles'] as Map<String, Object?>;
}

class NullableAWSProfileFileConverter
    implements JsonConverter<AWSProfileFile?, Map<String, Object?>?> {
  const NullableAWSProfileFileConverter();

  @override
  AWSProfileFile? fromJson(Map<String, Object?>? json) {
    if (json == null) {
      return null;
    }
    return const AWSProfileFileConverter().fromJson(json);
  }

  @override
  Map<String, Object?>? toJson(AWSProfileFile? object) =>
      object == null ? null : const AWSProfileFileConverter().toJson(object);
}
