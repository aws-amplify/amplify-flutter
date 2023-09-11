// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.batch_describe_type_configurations_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/batch_describe_type_configurations_error.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_details.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_identifier.dart';

part 'batch_describe_type_configurations_output.g.dart';

abstract class BatchDescribeTypeConfigurationsOutput
    with
        _i1.AWSEquatable<BatchDescribeTypeConfigurationsOutput>
    implements
        Built<BatchDescribeTypeConfigurationsOutput,
            BatchDescribeTypeConfigurationsOutputBuilder> {
  factory BatchDescribeTypeConfigurationsOutput({
    List<BatchDescribeTypeConfigurationsError>? errors,
    List<TypeConfigurationIdentifier>? unprocessedTypeConfigurations,
    List<TypeConfigurationDetails>? typeConfigurations,
  }) {
    return _$BatchDescribeTypeConfigurationsOutput._(
      errors: errors == null ? null : _i2.BuiltList(errors),
      unprocessedTypeConfigurations: unprocessedTypeConfigurations == null
          ? null
          : _i2.BuiltList(unprocessedTypeConfigurations),
      typeConfigurations:
          typeConfigurations == null ? null : _i2.BuiltList(typeConfigurations),
    );
  }

  factory BatchDescribeTypeConfigurationsOutput.build(
      [void Function(BatchDescribeTypeConfigurationsOutputBuilder)
          updates]) = _$BatchDescribeTypeConfigurationsOutput;

  const BatchDescribeTypeConfigurationsOutput._();

  /// Constructs a [BatchDescribeTypeConfigurationsOutput] from a [payload] and [response].
  factory BatchDescribeTypeConfigurationsOutput.fromResponse(
    BatchDescribeTypeConfigurationsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<BatchDescribeTypeConfigurationsOutput>>
      serializers = [BatchDescribeTypeConfigurationsOutputAwsQuerySerializer()];

  /// A list of information concerning any errors generated during the setting of the specified configurations.
  _i2.BuiltList<BatchDescribeTypeConfigurationsError>? get errors;

  /// A list of any of the specified extension configurations that CloudFormation could not process for any reason.
  _i2.BuiltList<TypeConfigurationIdentifier>? get unprocessedTypeConfigurations;

  /// A list of any of the specified extension configurations from the CloudFormation registry.
  _i2.BuiltList<TypeConfigurationDetails>? get typeConfigurations;
  @override
  List<Object?> get props => [
        errors,
        unprocessedTypeConfigurations,
        typeConfigurations,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('BatchDescribeTypeConfigurationsOutput')
          ..add(
            'errors',
            errors,
          )
          ..add(
            'unprocessedTypeConfigurations',
            unprocessedTypeConfigurations,
          )
          ..add(
            'typeConfigurations',
            typeConfigurations,
          );
    return helper.toString();
  }
}

class BatchDescribeTypeConfigurationsOutputAwsQuerySerializer extends _i3
    .StructuredSmithySerializer<BatchDescribeTypeConfigurationsOutput> {
  const BatchDescribeTypeConfigurationsOutputAwsQuerySerializer()
      : super('BatchDescribeTypeConfigurationsOutput');

  @override
  Iterable<Type> get types => const [
        BatchDescribeTypeConfigurationsOutput,
        _$BatchDescribeTypeConfigurationsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  BatchDescribeTypeConfigurationsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchDescribeTypeConfigurationsOutputBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Errors':
          result.errors.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(BatchDescribeTypeConfigurationsError)],
            ),
          ) as _i2.BuiltList<BatchDescribeTypeConfigurationsError>));
        case 'UnprocessedTypeConfigurations':
          result.unprocessedTypeConfigurations.replace(
              (const _i3.XmlBuiltListSerializer(
                      indexer: _i3.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TypeConfigurationIdentifier)],
            ),
          ) as _i2.BuiltList<TypeConfigurationIdentifier>));
        case 'TypeConfigurations':
          result.typeConfigurations.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TypeConfigurationDetails)],
            ),
          ) as _i2.BuiltList<TypeConfigurationDetails>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BatchDescribeTypeConfigurationsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'BatchDescribeTypeConfigurationsOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final BatchDescribeTypeConfigurationsOutput(
      :errors,
      :unprocessedTypeConfigurations,
      :typeConfigurations
    ) = object;
    if (errors != null) {
      result$
        ..add(const _i3.XmlElementName('Errors'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          errors,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(BatchDescribeTypeConfigurationsError)],
          ),
        ));
    }
    if (unprocessedTypeConfigurations != null) {
      result$
        ..add(const _i3.XmlElementName('UnprocessedTypeConfigurations'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          unprocessedTypeConfigurations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TypeConfigurationIdentifier)],
          ),
        ));
    }
    if (typeConfigurations != null) {
      result$
        ..add(const _i3.XmlElementName('TypeConfigurations'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          typeConfigurations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TypeConfigurationDetails)],
          ),
        ));
    }
    return result$;
  }
}
