// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.deregister_type_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registry_type.dart'
    as _i3;

part 'deregister_type_input.g.dart';

abstract class DeregisterTypeInput
    with
        _i1.HttpInput<DeregisterTypeInput>,
        _i2.AWSEquatable<DeregisterTypeInput>
    implements Built<DeregisterTypeInput, DeregisterTypeInputBuilder> {
  factory DeregisterTypeInput({
    String? arn,
    _i3.RegistryType? type,
    String? typeName,
    String? versionId,
  }) {
    return _$DeregisterTypeInput._(
      arn: arn,
      type: type,
      typeName: typeName,
      versionId: versionId,
    );
  }

  factory DeregisterTypeInput.build(
          [void Function(DeregisterTypeInputBuilder) updates]) =
      _$DeregisterTypeInput;

  const DeregisterTypeInput._();

  factory DeregisterTypeInput.fromRequest(
    DeregisterTypeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeregisterTypeInput>> serializers = [
    DeregisterTypeInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeregisterTypeInputBuilder b) {}

  /// The Amazon Resource Name (ARN) of the extension.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  String? get arn;

  /// The kind of extension.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  _i3.RegistryType? get type;

  /// The name of the extension.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  String? get typeName;

  /// The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it is registered.
  String? get versionId;
  @override
  DeregisterTypeInput getPayload() => this;
  @override
  List<Object?> get props => [
        arn,
        type,
        typeName,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeregisterTypeInput')
      ..add(
        'arn',
        arn,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'typeName',
        typeName,
      )
      ..add(
        'versionId',
        versionId,
      );
    return helper.toString();
  }
}

class DeregisterTypeInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeregisterTypeInput> {
  const DeregisterTypeInputAwsQuerySerializer() : super('DeregisterTypeInput');

  @override
  Iterable<Type> get types => const [
        DeregisterTypeInput,
        _$DeregisterTypeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeregisterTypeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeregisterTypeInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'VersionId':
          result.versionId = (serializers.deserialize(
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
    DeregisterTypeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeregisterTypeInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DeregisterTypeInput(:arn, :type, :typeName, :versionId) = object;
    if (arn != null) {
      result$
        ..add(const _i1.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
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
    if (versionId != null) {
      result$
        ..add(const _i1.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          versionId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
