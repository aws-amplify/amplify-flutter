// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.batch_describe_type_configurations_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_identifier.dart'
    as _i3;

part 'batch_describe_type_configurations_input.g.dart';

abstract class BatchDescribeTypeConfigurationsInput
    with
        _i1.HttpInput<BatchDescribeTypeConfigurationsInput>,
        _i2.AWSEquatable<BatchDescribeTypeConfigurationsInput>
    implements
        Built<BatchDescribeTypeConfigurationsInput,
            BatchDescribeTypeConfigurationsInputBuilder> {
  factory BatchDescribeTypeConfigurationsInput(
      {required List<_i3.TypeConfigurationIdentifier>
          typeConfigurationIdentifiers}) {
    return _$BatchDescribeTypeConfigurationsInput._(
        typeConfigurationIdentifiers:
            _i4.BuiltList(typeConfigurationIdentifiers));
  }

  factory BatchDescribeTypeConfigurationsInput.build(
      [void Function(BatchDescribeTypeConfigurationsInputBuilder)
          updates]) = _$BatchDescribeTypeConfigurationsInput;

  const BatchDescribeTypeConfigurationsInput._();

  factory BatchDescribeTypeConfigurationsInput.fromRequest(
    BatchDescribeTypeConfigurationsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<BatchDescribeTypeConfigurationsInput>>
      serializers = [BatchDescribeTypeConfigurationsInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchDescribeTypeConfigurationsInputBuilder b) {}

  /// The list of identifiers for the desired extension configurations.
  _i4.BuiltList<_i3.TypeConfigurationIdentifier>
      get typeConfigurationIdentifiers;
  @override
  BatchDescribeTypeConfigurationsInput getPayload() => this;
  @override
  List<Object?> get props => [typeConfigurationIdentifiers];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('BatchDescribeTypeConfigurationsInput')
          ..add(
            'typeConfigurationIdentifiers',
            typeConfigurationIdentifiers,
          );
    return helper.toString();
  }
}

class BatchDescribeTypeConfigurationsInputAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<BatchDescribeTypeConfigurationsInput> {
  const BatchDescribeTypeConfigurationsInputAwsQuerySerializer()
      : super('BatchDescribeTypeConfigurationsInput');

  @override
  Iterable<Type> get types => const [
        BatchDescribeTypeConfigurationsInput,
        _$BatchDescribeTypeConfigurationsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  BatchDescribeTypeConfigurationsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchDescribeTypeConfigurationsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TypeConfigurationIdentifiers':
          result.typeConfigurationIdentifiers.replace(
              (const _i1.XmlBuiltListSerializer(
                      indexer: _i1.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.TypeConfigurationIdentifier)],
            ),
          ) as _i4.BuiltList<_i3.TypeConfigurationIdentifier>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BatchDescribeTypeConfigurationsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'BatchDescribeTypeConfigurationsInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final BatchDescribeTypeConfigurationsInput(:typeConfigurationIdentifiers) =
        object;
    result$
      ..add(const _i1.XmlElementName('TypeConfigurationIdentifiers'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        typeConfigurationIdentifiers,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(_i3.TypeConfigurationIdentifier)],
        ),
      ));
    return result$;
  }
}
