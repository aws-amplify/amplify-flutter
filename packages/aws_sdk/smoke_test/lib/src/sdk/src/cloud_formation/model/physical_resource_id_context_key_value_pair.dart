// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.physical_resource_id_context_key_value_pair; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'physical_resource_id_context_key_value_pair.g.dart';

/// Context information that enables CloudFormation to uniquely identify a resource. CloudFormation uses context key-value pairs in cases where a resource's logical and physical IDs aren't enough to uniquely identify that resource. Each context key-value pair specifies a resource that contains the targeted resource.
abstract class PhysicalResourceIdContextKeyValuePair
    with
        _i1.AWSEquatable<PhysicalResourceIdContextKeyValuePair>
    implements
        Built<PhysicalResourceIdContextKeyValuePair,
            PhysicalResourceIdContextKeyValuePairBuilder> {
  /// Context information that enables CloudFormation to uniquely identify a resource. CloudFormation uses context key-value pairs in cases where a resource's logical and physical IDs aren't enough to uniquely identify that resource. Each context key-value pair specifies a resource that contains the targeted resource.
  factory PhysicalResourceIdContextKeyValuePair({
    required String key,
    required String value,
  }) {
    return _$PhysicalResourceIdContextKeyValuePair._(
      key: key,
      value: value,
    );
  }

  /// Context information that enables CloudFormation to uniquely identify a resource. CloudFormation uses context key-value pairs in cases where a resource's logical and physical IDs aren't enough to uniquely identify that resource. Each context key-value pair specifies a resource that contains the targeted resource.
  factory PhysicalResourceIdContextKeyValuePair.build(
      [void Function(PhysicalResourceIdContextKeyValuePairBuilder)
          updates]) = _$PhysicalResourceIdContextKeyValuePair;

  const PhysicalResourceIdContextKeyValuePair._();

  static const List<_i2.SmithySerializer<PhysicalResourceIdContextKeyValuePair>>
      serializers = [PhysicalResourceIdContextKeyValuePairAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PhysicalResourceIdContextKeyValuePairBuilder b) {}

  /// The resource context key.
  String get key;

  /// The resource context value.
  String get value;
  @override
  List<Object?> get props => [
        key,
        value,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PhysicalResourceIdContextKeyValuePair')
          ..add(
            'key',
            key,
          )
          ..add(
            'value',
            value,
          );
    return helper.toString();
  }
}

class PhysicalResourceIdContextKeyValuePairAwsQuerySerializer extends _i2
    .StructuredSmithySerializer<PhysicalResourceIdContextKeyValuePair> {
  const PhysicalResourceIdContextKeyValuePairAwsQuerySerializer()
      : super('PhysicalResourceIdContextKeyValuePair');

  @override
  Iterable<Type> get types => const [
        PhysicalResourceIdContextKeyValuePair,
        _$PhysicalResourceIdContextKeyValuePair,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PhysicalResourceIdContextKeyValuePair deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PhysicalResourceIdContextKeyValuePairBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Value':
          result.value = (serializers.deserialize(
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
    PhysicalResourceIdContextKeyValuePair object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PhysicalResourceIdContextKeyValuePairResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final PhysicalResourceIdContextKeyValuePair(:key, :value) = object;
    result$
      ..add(const _i2.XmlElementName('Key'))
      ..add(serializers.serialize(
        key,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('Value'))
      ..add(serializers.serialize(
        value,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
