// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_validation_protocol.model.file_config_settings; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/retry_mode.dart'
    as _i3;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/s3_config.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i4;

part 'file_config_settings.g.dart';

/// Config settings that can be set in the AWS config / credentials file as part of a profile.
abstract class FileConfigSettings
    with _i1.AWSEquatable<FileConfigSettings>
    implements Built<FileConfigSettings, FileConfigSettingsBuilder> {
  /// Config settings that can be set in the AWS config / credentials file as part of a profile.
  factory FileConfigSettings({
    String? awsAccessKeyId,
    String? awsSecretAccessKey,
    String? awsSessionToken,
    String? region,
    _i2.S3Config? s3,
    _i3.RetryMode? retryMode,
    int? maxAttempts,
  }) {
    return _$FileConfigSettings._(
      awsAccessKeyId: awsAccessKeyId,
      awsSecretAccessKey: awsSecretAccessKey,
      awsSessionToken: awsSessionToken,
      region: region,
      s3: s3,
      retryMode: retryMode,
      maxAttempts: maxAttempts,
    );
  }

  /// Config settings that can be set in the AWS config / credentials file as part of a profile.
  factory FileConfigSettings.build(
          [void Function(FileConfigSettingsBuilder) updates]) =
      _$FileConfigSettings;

  const FileConfigSettings._();

  static const List<_i4.SmithySerializer<FileConfigSettings>> serializers = [
    FileConfigSettingsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FileConfigSettingsBuilder b) {}
  String? get awsAccessKeyId;
  String? get awsSecretAccessKey;
  String? get awsSessionToken;
  String? get region;

  /// Configuration specific to S3.
  _i2.S3Config? get s3;

  /// Controls the strategy used for retries.
  _i3.RetryMode? get retryMode;
  int? get maxAttempts;
  @override
  List<Object?> get props => [
        awsAccessKeyId,
        awsSecretAccessKey,
        awsSessionToken,
        region,
        s3,
        retryMode,
        maxAttempts,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FileConfigSettings')
      ..add(
        'awsAccessKeyId',
        awsAccessKeyId,
      )
      ..add(
        'awsSecretAccessKey',
        awsSecretAccessKey,
      )
      ..add(
        'awsSessionToken',
        awsSessionToken,
      )
      ..add(
        'region',
        region,
      )
      ..add(
        's3',
        s3,
      )
      ..add(
        'retryMode',
        retryMode,
      )
      ..add(
        'maxAttempts',
        maxAttempts,
      );
    return helper.toString();
  }
}

class FileConfigSettingsRestJson1Serializer
    extends _i4.StructuredSmithySerializer<FileConfigSettings> {
  const FileConfigSettingsRestJson1Serializer() : super('FileConfigSettings');

  @override
  Iterable<Type> get types => const [
        FileConfigSettings,
        _$FileConfigSettings,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  FileConfigSettings deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileConfigSettingsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'aws_access_key_id':
          result.awsAccessKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'aws_secret_access_key':
          result.awsSecretAccessKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'aws_session_token':
          result.awsSessionToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'max_attempts':
          result.maxAttempts = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'retry_mode':
          result.retryMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.RetryMode),
          ) as _i3.RetryMode);
        case 's3':
          result.s3.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.S3Config),
          ) as _i2.S3Config));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FileConfigSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final FileConfigSettings(
      :awsAccessKeyId,
      :awsSecretAccessKey,
      :awsSessionToken,
      :maxAttempts,
      :region,
      :retryMode,
      :s3
    ) = object;
    if (awsAccessKeyId != null) {
      result$
        ..add('aws_access_key_id')
        ..add(serializers.serialize(
          awsAccessKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (awsSecretAccessKey != null) {
      result$
        ..add('aws_secret_access_key')
        ..add(serializers.serialize(
          awsSecretAccessKey,
          specifiedType: const FullType(String),
        ));
    }
    if (awsSessionToken != null) {
      result$
        ..add('aws_session_token')
        ..add(serializers.serialize(
          awsSessionToken,
          specifiedType: const FullType(String),
        ));
    }
    if (maxAttempts != null) {
      result$
        ..add('max_attempts')
        ..add(serializers.serialize(
          maxAttempts,
          specifiedType: const FullType(int),
        ));
    }
    if (region != null) {
      result$
        ..add('region')
        ..add(serializers.serialize(
          region,
          specifiedType: const FullType(String),
        ));
    }
    if (retryMode != null) {
      result$
        ..add('retry_mode')
        ..add(serializers.serialize(
          retryMode,
          specifiedType: const FullType(_i3.RetryMode),
        ));
    }
    if (s3 != null) {
      result$
        ..add('s3')
        ..add(serializers.serialize(
          s3,
          specifiedType: const FullType(_i2.S3Config),
        ));
    }
    return result$;
  }
}
