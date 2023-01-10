// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:meta/meta.dart';

part 'aws_profile_file.g.dart';

/// {@template aws_common.config.aws_profile_file_type}
/// The type of [AWSProfileFile].
/// {@endtemplate}
@internal
class AWSProfileFileType extends EnumClass {
  // ignore: use_super_parameters
  const AWSProfileFileType._(String name) : super(name);

  /// An AWS configuration file.
  static const AWSProfileFileType config = _$config;

  /// An AWS shared credentials file.
  static const AWSProfileFileType credentials = _$credentials;

  /// The values of [AWSProfileFileType].
  static BuiltSet<AWSProfileFileType> get values => _$AWSProfileFileTypeValues;

  /// The [AWSProfileFileType] value of [name].
  static AWSProfileFileType valueOf(String name) =>
      _$AWSProfileFileTypeValueOf(name);

  /// The [AWSProfileFileType] serializer.
  static Serializer<AWSProfileFileType> get serializer =>
      _$aWSProfileFileTypeSerializer;
}

/// {@template aws_common.config.aws_profile_file}
/// A collection of AWS configuration profiles.
/// {@endtemplate}
abstract class AWSProfileFile
    with AWSSerializable<Map<String, Object?>>
    implements Built<AWSProfileFile, AWSProfileFileBuilder> {
  /// {@macro aws_common.config.aws_profile_file}
  factory AWSProfileFile({
    required Map<String, AWSProfile> profiles,
  }) {
    return _$AWSProfileFile._(profiles: BuiltMap(profiles));
  }

  /// {@macro aws_common.config.aws_profile_file}
  factory AWSProfileFile.fromJson(Map<String, Object?> json) =>
      _serializers.deserializeWith(serializer, json) as AWSProfileFile;

  /// {@macro aws_common.config.aws_profile_file}
  factory AWSProfileFile.build([
    void Function(AWSProfileFileBuilder) updates,
  ]) = _$AWSProfileFile;

  const AWSProfileFile._();

  /// The AWS profiles.
  BuiltMap<String, AWSProfile> get profiles;

  /// Loads the region for [profileName].
  String? region(String profileName) => profiles[profileName]?.region;

  /// Loads credentials for [profileName].
  AWSCredentialsProvider? credentials(String profileName) =>
      profiles[profileName]?.credentials;

  @override
  Map<String, Object?> toJson() =>
      _serializers.serializeWith(serializer, this) as Map<String, Object?>;

  /// The [AWSProfileFile] serializer.
  static Serializer<AWSProfileFile> get serializer =>
      _$aWSProfileFileSerializer;
}

/// {@template aws_common.config.aws_profile}
/// A collection of AWS configuration properties.
/// {@endtemplate}
abstract class AWSProfile
    with AWSSerializable<Map<String, Object?>>
    implements Built<AWSProfile, AWSProfileBuilder> {
  /// {@macro aws_common.config.aws_profile}
  factory AWSProfile({
    required String name,
    Map<String, AWSProperty> properties = const {},
  }) {
    return _$AWSProfile._(name: name, properties: BuiltMap(properties));
  }

  /// {@macro aws_common.config.aws_profile}
  factory AWSProfile.fromJson(Map<String, Object?> json) =>
      _serializers.deserializeWith(serializer, json) as AWSProfile;

  /// {@macro aws_common.config.aws_profile}
  factory AWSProfile.build([
    void Function(AWSProfileBuilder) updates,
  ]) = _$AWSProfile;

  const AWSProfile._();

  /// The name of the profile.
  String get name;

  /// The properties of the profile.
  BuiltMap<String, AWSProperty> get properties;

  /// The region of the profile, if specified.
  String? get region => properties['region']?.value;

  /// The credentials of the profile, if specified.
  AWSCredentialsProvider? get credentials {
    final roleArn = properties['role_arn'];
    if (roleArn != null) {
      // TODO(dnys1): Assume role credentials provider
      return null;
    }
    final accessKeyId = properties['aws_access_key_id']?.value;
    if (accessKeyId != null) {
      final secretAccessKey = properties['aws_secret_access_key']?.value;
      assert(
        secretAccessKey != null,
        '"aws_secret_access_key" was not specified in properties',
      );
      final sessionToken = properties['aws_session_token']?.value;
      return AWSCredentialsProvider(
        AWSCredentials(
          accessKeyId,
          secretAccessKey!,
          sessionToken,
        ),
      );
    }
    return null;
  }

  @override
  Map<String, Object?> toJson() =>
      _serializers.serializeWith(serializer, this) as Map<String, Object?>;

  /// The [AWSProfile] serializer.
  static Serializer<AWSProfile> get serializer => _$aWSProfileSerializer;
}

/// {@template aws_common.config.aws_property}
/// A property from an AWS configuration profile.
/// {@endtemplate}
abstract class AWSProperty
    with AWSSerializable<Map<String, Object?>>
    implements Built<AWSProperty, AWSPropertyBuilder> {
  /// {@macro aws_common.config.aws_property}
  factory AWSProperty({
    required String name,
    required String value,
    Map<String, AWSProperty> subProperties = const {},
  }) {
    return _$AWSProperty._(
      name: name,
      value: value,
      subProperties: BuiltMap(subProperties),
    );
  }

  /// {@macro aws_common.config.aws_property}
  factory AWSProperty.fromJson(Map<String, Object?> json) =>
      _serializers.deserializeWith(serializer, json) as AWSProperty;

  /// {@macro aws_common.config.aws_property}
  factory AWSProperty.build([
    void Function(AWSPropertyBuilder) updates,
  ]) = _$AWSProperty;

  const AWSProperty._();

  /// The name of the property.
  String get name;

  /// The value of the property.
  ///
  /// Will be empty for properties with sub-properties.
  String get value;

  /// Sub-properties of this property, if any.
  BuiltMap<String, AWSProperty> get subProperties;

  @override
  Map<String, Object?> toJson() =>
      _serializers.serializeWith(serializer, this) as Map<String, Object?>;

  /// The [AWSProperty] serializer.
  static Serializer<AWSProperty> get serializer => _$aWSPropertySerializer;
}

@SerializersFor([
  AWSProfileFileType,
  AWSProfileFile,
  AWSProfile,
  AWSProperty,
])
final Serializers _serializers =
    (_$_serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
