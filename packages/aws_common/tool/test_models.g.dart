// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileLocationTest _$FileLocationTestFromJson(Map<String, dynamic> json) =>
    FileLocationTest(
      name: json['name'] as String,
      environment: (json['environment'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      languageSpecificHome: json['languageSpecificHome'] as String?,
      platform: $enumDecode(_$TestPlatformEnumMap, json['platform']),
      profile: json['profile'] as String?,
      configLocation: json['configLocation'] as String,
      credentialsLocation: json['credentialsLocation'] as String,
    );

Map<String, dynamic> _$FileLocationTestToJson(FileLocationTest instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'environment': instance.environment,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('languageSpecificHome', instance.languageSpecificHome);
  val['platform'] = _$TestPlatformEnumMap[instance.platform]!;
  writeNotNull('profile', instance.profile);
  val['configLocation'] = instance.configLocation;
  val['credentialsLocation'] = instance.credentialsLocation;
  return val;
}

const _$TestPlatformEnumMap = {
  TestPlatform.linux: 'linux',
  TestPlatform.windows: 'windows',
};

ParserTest _$ParserTestFromJson(Map<String, dynamic> json) => ParserTest(
      name: json['name'] as String,
      input: ParserTestInput.fromJson(json['input'] as Map<String, dynamic>),
      output: ParserTestOutput.fromJson(json['output'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParserTestToJson(ParserTest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'input': instance.input.toJson(),
      'output': instance.output.toJson(),
    };

ParserTestInput _$ParserTestInputFromJson(Map<String, dynamic> json) =>
    ParserTestInput(
      configFile: json['configFile'] as String?,
      credentialsFile: json['credentialsFile'] as String?,
    );

Map<String, dynamic> _$ParserTestInputToJson(ParserTestInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('configFile', instance.configFile);
  writeNotNull('credentialsFile', instance.credentialsFile);
  return val;
}

ParserTestOutput _$ParserTestOutputFromJson(Map<String, dynamic> json) =>
    ParserTestOutput(
      errorContaining: json['errorContaining'] as String?,
      profiles: const NullableAWSProfileFileConverter()
          .fromJson(json['profiles'] as Map<String, Object?>?),
    );

Map<String, dynamic> _$ParserTestOutputToJson(ParserTestOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errorContaining', instance.errorContaining);
  writeNotNull('profiles',
      const NullableAWSProfileFileConverter().toJson(instance.profiles));
  return val;
}

ProfileTest _$ProfileTestFromJson(Map<String, dynamic> json) => ProfileTest(
      profiles: const AWSProfileFileConverter()
          .fromJson(json['profiles'] as Map<String, Object?>),
      regionTests:
          ProfileTestCase.fromJson(json['regionTests'] as Map<String, dynamic>),
      credentialsTests: (json['credentialsTests'] as List<dynamic>)
          .map((e) => ProfileTestCase.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProfileTestToJson(ProfileTest instance) =>
    <String, dynamic>{
      'profiles': const AWSProfileFileConverter().toJson(instance.profiles),
      'regionTests': instance.regionTests.toJson(),
      'credentialsTests':
          instance.credentialsTests.map((e) => e.toJson()).toList(),
    };

ProfileTestCase _$ProfileTestCaseFromJson(Map<String, dynamic> json) =>
    ProfileTestCase(
      name: json['name'] as String,
      profile: json['profile'] as String,
      output:
          ProfileTestOutput.fromJson(json['output'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileTestCaseToJson(ProfileTestCase instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profile': instance.profile,
      'output': instance.output.toJson(),
    };

ProfileTestOutput _$ProfileTestOutputFromJson(Map<String, dynamic> json) =>
    ProfileTestOutput(
      region: json['region'] as String?,
      credentialType: $enumDecodeNullable(
          _$AWSCredentialsTypeEnumMap, json['credentialType']),
    );

Map<String, dynamic> _$ProfileTestOutputToJson(ProfileTestOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('region', instance.region);
  writeNotNull(
      'credentialType', _$AWSCredentialsTypeEnumMap[instance.credentialType]);
  return val;
}

const _$AWSCredentialsTypeEnumMap = {
  AWSCredentialsType.assumeRole: 'assumeRole',
  AWSCredentialsType.session: 'session',
  AWSCredentialsType.basic: 'basic',
};
