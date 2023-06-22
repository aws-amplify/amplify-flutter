// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_type_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registry_type.dart'
    as _i3;

part 'describe_type_input.g.dart';

abstract class DescribeTypeInput
    with _i1.HttpInput<DescribeTypeInput>, _i2.AWSEquatable<DescribeTypeInput>
    implements Built<DescribeTypeInput, DescribeTypeInputBuilder> {
  factory DescribeTypeInput({
    _i3.RegistryType? type,
    String? typeName,
    String? arn,
    String? versionId,
    String? publisherId,
    String? publicVersionNumber,
  }) {
    return _$DescribeTypeInput._(
      type: type,
      typeName: typeName,
      arn: arn,
      versionId: versionId,
      publisherId: publisherId,
      publicVersionNumber: publicVersionNumber,
    );
  }

  factory DescribeTypeInput.build(
      [void Function(DescribeTypeInputBuilder) updates]) = _$DescribeTypeInput;

  const DescribeTypeInput._();

  factory DescribeTypeInput.fromRequest(
    DescribeTypeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeTypeInput>> serializers = [
    DescribeTypeInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTypeInputBuilder b) {}

  /// The kind of extension.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  _i3.RegistryType? get type;

  /// The name of the extension.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  String? get typeName;

  /// The Amazon Resource Name (ARN) of the extension.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  String? get arn;

  /// The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it is registered.
  ///
  /// If you specify a `VersionId`, `DescribeType` returns information about that specific extension version. Otherwise, it returns information about the default extension version.
  String? get versionId;

  /// The publisher ID of the extension publisher.
  ///
  /// Extensions provided by Amazon Web Services are not assigned a publisher ID.
  String? get publisherId;

  /// The version number of a public third-party extension.
  String? get publicVersionNumber;
  @override
  DescribeTypeInput getPayload() => this;
  @override
  List<Object?> get props => [
        type,
        typeName,
        arn,
        versionId,
        publisherId,
        publicVersionNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTypeInput')
      ..add(
        'type',
        type,
      )
      ..add(
        'typeName',
        typeName,
      )
      ..add(
        'arn',
        arn,
      )
      ..add(
        'versionId',
        versionId,
      )
      ..add(
        'publisherId',
        publisherId,
      )
      ..add(
        'publicVersionNumber',
        publicVersionNumber,
      );
    return helper.toString();
  }
}

class DescribeTypeInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeTypeInput> {
  const DescribeTypeInputAwsQuerySerializer() : super('DescribeTypeInput');

  @override
  Iterable<Type> get types => const [
        DescribeTypeInput,
        _$DescribeTypeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeTypeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTypeInputBuilder();
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
            specifiedType: const FullType(_i3.RegistryType),
          ) as _i3.RegistryType);
        case 'TypeName':
          result.typeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VersionId':
          result.versionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PublisherId':
          result.publisherId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PublicVersionNumber':
          result.publicVersionNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeTypeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeTypeInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeTypeInput(
      :type,
      :typeName,
      :arn,
      :versionId,
      :publisherId,
      :publicVersionNumber
    ) = object;
    if (type != null) {
      result$
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(_i3.RegistryType),
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
    if (arn != null) {
      result$
        ..add(const _i1.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (versionId != null) {
      result$
        ..add(const _i1.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          versionId,
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
    if (publicVersionNumber != null) {
      result$
        ..add(const _i1.XmlElementName('PublicVersionNumber'))
        ..add(serializers.serialize(
          publicVersionNumber,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
