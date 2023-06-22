// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.batch_describe_type_configurations_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/batch_describe_type_configurations_error.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_details.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_identifier.dart'
    as _i3;

part 'batch_describe_type_configurations_output.g.dart';

abstract class BatchDescribeTypeConfigurationsOutput
    with
        _i1.AWSEquatable<BatchDescribeTypeConfigurationsOutput>
    implements
        Built<BatchDescribeTypeConfigurationsOutput,
            BatchDescribeTypeConfigurationsOutputBuilder> {
  factory BatchDescribeTypeConfigurationsOutput({
    List<_i2.BatchDescribeTypeConfigurationsError>? errors,
    List<_i3.TypeConfigurationIdentifier>? unprocessedTypeConfigurations,
    List<_i4.TypeConfigurationDetails>? typeConfigurations,
  }) {
    return _$BatchDescribeTypeConfigurationsOutput._(
      errors: errors == null ? null : _i5.BuiltList(errors),
      unprocessedTypeConfigurations: unprocessedTypeConfigurations == null
          ? null
          : _i5.BuiltList(unprocessedTypeConfigurations),
      typeConfigurations:
          typeConfigurations == null ? null : _i5.BuiltList(typeConfigurations),
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

  static const List<_i6.SmithySerializer<BatchDescribeTypeConfigurationsOutput>>
      serializers = [BatchDescribeTypeConfigurationsOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchDescribeTypeConfigurationsOutputBuilder b) {}

  /// A list of information concerning any errors generated during the setting of the specified configurations.
  _i5.BuiltList<_i2.BatchDescribeTypeConfigurationsError>? get errors;

  /// A list of any of the specified extension configurations that CloudFormation could not process for any reason.
  _i5.BuiltList<_i3.TypeConfigurationIdentifier>?
      get unprocessedTypeConfigurations;

  /// A list of any of the specified extension configurations from the CloudFormation registry.
  _i5.BuiltList<_i4.TypeConfigurationDetails>? get typeConfigurations;
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

class BatchDescribeTypeConfigurationsOutputAwsQuerySerializer extends _i6
    .StructuredSmithySerializer<BatchDescribeTypeConfigurationsOutput> {
  const BatchDescribeTypeConfigurationsOutputAwsQuerySerializer()
      : super('BatchDescribeTypeConfigurationsOutput');

  @override
  Iterable<Type> get types => const [
        BatchDescribeTypeConfigurationsOutput,
        _$BatchDescribeTypeConfigurationsOutput,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
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
          result.errors.replace((const _i6.XmlBuiltListSerializer(
                  indexer: _i6.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i2.BatchDescribeTypeConfigurationsError)],
            ),
          ) as _i5.BuiltList<_i2.BatchDescribeTypeConfigurationsError>));
        case 'UnprocessedTypeConfigurations':
          result.unprocessedTypeConfigurations.replace(
              (const _i6.XmlBuiltListSerializer(
                      indexer: _i6.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.TypeConfigurationIdentifier)],
            ),
          ) as _i5.BuiltList<_i3.TypeConfigurationIdentifier>));
        case 'TypeConfigurations':
          result.typeConfigurations.replace((const _i6.XmlBuiltListSerializer(
                  indexer: _i6.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.TypeConfigurationDetails)],
            ),
          ) as _i5.BuiltList<_i4.TypeConfigurationDetails>));
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
      const _i6.XmlElementName(
        'BatchDescribeTypeConfigurationsOutputResponse',
        _i6.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final BatchDescribeTypeConfigurationsOutput(
      :errors,
      :unprocessedTypeConfigurations,
      :typeConfigurations
    ) = object;
    if (errors != null) {
      result$
        ..add(const _i6.XmlElementName('Errors'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          errors,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.BatchDescribeTypeConfigurationsError)],
          ),
        ));
    }
    if (unprocessedTypeConfigurations != null) {
      result$
        ..add(const _i6.XmlElementName('UnprocessedTypeConfigurations'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          unprocessedTypeConfigurations,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.TypeConfigurationIdentifier)],
          ),
        ));
    }
    if (typeConfigurations != null) {
      result$
        ..add(const _i6.XmlElementName('TypeConfigurations'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          typeConfigurations,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.TypeConfigurationDetails)],
          ),
        ));
    }
    return result$;
  }
}
