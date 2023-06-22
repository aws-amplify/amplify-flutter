// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.activate_type_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/logging_config.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/third_party_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/version_bump.dart'
    as _i5;

part 'activate_type_input.g.dart';

abstract class ActivateTypeInput
    with _i1.HttpInput<ActivateTypeInput>, _i2.AWSEquatable<ActivateTypeInput>
    implements Built<ActivateTypeInput, ActivateTypeInputBuilder> {
  factory ActivateTypeInput({
    _i3.ThirdPartyType? type,
    String? publicTypeArn,
    String? publisherId,
    String? typeName,
    String? typeNameAlias,
    bool? autoUpdate,
    _i4.LoggingConfig? loggingConfig,
    String? executionRoleArn,
    _i5.VersionBump? versionBump,
    _i6.Int64? majorVersion,
  }) {
    return _$ActivateTypeInput._(
      type: type,
      publicTypeArn: publicTypeArn,
      publisherId: publisherId,
      typeName: typeName,
      typeNameAlias: typeNameAlias,
      autoUpdate: autoUpdate,
      loggingConfig: loggingConfig,
      executionRoleArn: executionRoleArn,
      versionBump: versionBump,
      majorVersion: majorVersion,
    );
  }

  factory ActivateTypeInput.build(
      [void Function(ActivateTypeInputBuilder) updates]) = _$ActivateTypeInput;

  const ActivateTypeInput._();

  factory ActivateTypeInput.fromRequest(
    ActivateTypeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ActivateTypeInput>> serializers = [
    ActivateTypeInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ActivateTypeInputBuilder b) {}

  /// The extension type.
  ///
  /// Conditional: You must specify `PublicTypeArn`, or `TypeName`, `Type`, and `PublisherId`.
  _i3.ThirdPartyType? get type;

  /// The Amazon Resource Name (ARN) of the public extension.
  ///
  /// Conditional: You must specify `PublicTypeArn`, or `TypeName`, `Type`, and `PublisherId`.
  String? get publicTypeArn;

  /// The ID of the extension publisher.
  ///
  /// Conditional: You must specify `PublicTypeArn`, or `TypeName`, `Type`, and `PublisherId`.
  String? get publisherId;

  /// The name of the extension.
  ///
  /// Conditional: You must specify `PublicTypeArn`, or `TypeName`, `Type`, and `PublisherId`.
  String? get typeName;

  /// An alias to assign to the public extension, in this account and Region. If you specify an alias for the extension, CloudFormation treats the alias as the extension type name within this account and Region. You must use the alias to refer to the extension in your templates, API calls, and CloudFormation console.
  ///
  /// An extension alias must be unique within a given account and Region. You can activate the same public resource multiple times in the same account and Region, using different type name aliases.
  String? get typeNameAlias;

  /// Whether to automatically update the extension in this account and Region when a new _minor_ version is published by the extension publisher. Major versions released by the publisher must be manually updated.
  ///
  /// The default is `true`.
  bool? get autoUpdate;

  /// Contains logging configuration information for an extension.
  _i4.LoggingConfig? get loggingConfig;

  /// The name of the IAM execution role to use to activate the extension.
  String? get executionRoleArn;

  /// Manually updates a previously-activated type to a new major or minor version, if available. You can also use this parameter to update the value of `AutoUpdate`.
  ///
  /// *   `MAJOR`: CloudFormation updates the extension to the newest major version, if one is available.
  ///
  /// *   `MINOR`: CloudFormation updates the extension to the newest minor version, if one is available.
  _i5.VersionBump? get versionBump;

  /// The major version of this extension you want to activate, if multiple major versions are available. The default is the latest major version. CloudFormation uses the latest available _minor_ version of the major version selected.
  ///
  /// You can specify `MajorVersion` or `VersionBump`, but not both.
  _i6.Int64? get majorVersion;
  @override
  ActivateTypeInput getPayload() => this;
  @override
  List<Object?> get props => [
        type,
        publicTypeArn,
        publisherId,
        typeName,
        typeNameAlias,
        autoUpdate,
        loggingConfig,
        executionRoleArn,
        versionBump,
        majorVersion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ActivateTypeInput')
      ..add(
        'type',
        type,
      )
      ..add(
        'publicTypeArn',
        publicTypeArn,
      )
      ..add(
        'publisherId',
        publisherId,
      )
      ..add(
        'typeName',
        typeName,
      )
      ..add(
        'typeNameAlias',
        typeNameAlias,
      )
      ..add(
        'autoUpdate',
        autoUpdate,
      )
      ..add(
        'loggingConfig',
        loggingConfig,
      )
      ..add(
        'executionRoleArn',
        executionRoleArn,
      )
      ..add(
        'versionBump',
        versionBump,
      )
      ..add(
        'majorVersion',
        majorVersion,
      );
    return helper.toString();
  }
}

class ActivateTypeInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ActivateTypeInput> {
  const ActivateTypeInputAwsQuerySerializer() : super('ActivateTypeInput');

  @override
  Iterable<Type> get types => const [
        ActivateTypeInput,
        _$ActivateTypeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ActivateTypeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivateTypeInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ThirdPartyType),
          ) as _i3.ThirdPartyType);
        case 'PublicTypeArn':
          result.publicTypeArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PublisherId':
          result.publisherId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeName':
          result.typeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeNameAlias':
          result.typeNameAlias = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AutoUpdate':
          result.autoUpdate = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'LoggingConfig':
          result.loggingConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.LoggingConfig),
          ) as _i4.LoggingConfig));
        case 'ExecutionRoleArn':
          result.executionRoleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VersionBump':
          result.versionBump = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.VersionBump),
          ) as _i5.VersionBump);
        case 'MajorVersion':
          result.majorVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.Int64),
          ) as _i6.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ActivateTypeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ActivateTypeInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ActivateTypeInput(
      :type,
      :publicTypeArn,
      :publisherId,
      :typeName,
      :typeNameAlias,
      :autoUpdate,
      :loggingConfig,
      :executionRoleArn,
      :versionBump,
      :majorVersion
    ) = object;
    if (type != null) {
      result$
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(_i3.ThirdPartyType),
        ));
    }
    if (publicTypeArn != null) {
      result$
        ..add(const _i1.XmlElementName('PublicTypeArn'))
        ..add(serializers.serialize(
          publicTypeArn,
          specifiedType: const FullType(String),
        ));
    }
    if (publisherId != null) {
      result$
        ..add(const _i1.XmlElementName('PublisherId'))
        ..add(serializers.serialize(
          publisherId,
          specifiedType: const FullType(String),
        ));
    }
    if (typeName != null) {
      result$
        ..add(const _i1.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          typeName,
          specifiedType: const FullType(String),
        ));
    }
    if (typeNameAlias != null) {
      result$
        ..add(const _i1.XmlElementName('TypeNameAlias'))
        ..add(serializers.serialize(
          typeNameAlias,
          specifiedType: const FullType(String),
        ));
    }
    if (autoUpdate != null) {
      result$
        ..add(const _i1.XmlElementName('AutoUpdate'))
        ..add(serializers.serialize(
          autoUpdate,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (loggingConfig != null) {
      result$
        ..add(const _i1.XmlElementName('LoggingConfig'))
        ..add(serializers.serialize(
          loggingConfig,
          specifiedType: const FullType(_i4.LoggingConfig),
        ));
    }
    if (executionRoleArn != null) {
      result$
        ..add(const _i1.XmlElementName('ExecutionRoleArn'))
        ..add(serializers.serialize(
          executionRoleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (versionBump != null) {
      result$
        ..add(const _i1.XmlElementName('VersionBump'))
        ..add(serializers.serialize(
          versionBump,
          specifiedType: const FullType.nullable(_i5.VersionBump),
        ));
    }
    if (majorVersion != null) {
      result$
        ..add(const _i1.XmlElementName('MajorVersion'))
        ..add(serializers.serialize(
          majorVersion,
          specifiedType: const FullType.nullable(_i6.Int64),
        ));
    }
    return result$;
  }
}
