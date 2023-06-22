// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.batch_describe_type_configurations_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_configuration_identifier.dart'
    as _i2;

part 'batch_describe_type_configurations_error.g.dart';

/// Detailed information concerning an error generated during the setting of configuration data for a CloudFormation extension.
abstract class BatchDescribeTypeConfigurationsError
    with
        _i1.AWSEquatable<BatchDescribeTypeConfigurationsError>
    implements
        Built<BatchDescribeTypeConfigurationsError,
            BatchDescribeTypeConfigurationsErrorBuilder> {
  /// Detailed information concerning an error generated during the setting of configuration data for a CloudFormation extension.
  factory BatchDescribeTypeConfigurationsError({
    String? errorCode,
    String? errorMessage,
    _i2.TypeConfigurationIdentifier? typeConfigurationIdentifier,
  }) {
    return _$BatchDescribeTypeConfigurationsError._(
      errorCode: errorCode,
      errorMessage: errorMessage,
      typeConfigurationIdentifier: typeConfigurationIdentifier,
    );
  }

  /// Detailed information concerning an error generated during the setting of configuration data for a CloudFormation extension.
  factory BatchDescribeTypeConfigurationsError.build(
      [void Function(BatchDescribeTypeConfigurationsErrorBuilder)
          updates]) = _$BatchDescribeTypeConfigurationsError;

  const BatchDescribeTypeConfigurationsError._();

  static const List<_i3.SmithySerializer<BatchDescribeTypeConfigurationsError>>
      serializers = [BatchDescribeTypeConfigurationsErrorAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchDescribeTypeConfigurationsErrorBuilder b) {}

  /// The error code.
  String? get errorCode;

  /// The error message.
  String? get errorMessage;

  /// Identifying information for the configuration of a CloudFormation extension.
  _i2.TypeConfigurationIdentifier? get typeConfigurationIdentifier;
  @override
  List<Object?> get props => [
        errorCode,
        errorMessage,
        typeConfigurationIdentifier,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('BatchDescribeTypeConfigurationsError')
          ..add(
            'errorCode',
            errorCode,
          )
          ..add(
            'errorMessage',
            errorMessage,
          )
          ..add(
            'typeConfigurationIdentifier',
            typeConfigurationIdentifier,
          );
    return helper.toString();
  }
}

class BatchDescribeTypeConfigurationsErrorAwsQuerySerializer extends _i3
    .StructuredSmithySerializer<BatchDescribeTypeConfigurationsError> {
  const BatchDescribeTypeConfigurationsErrorAwsQuerySerializer()
      : super('BatchDescribeTypeConfigurationsError');

  @override
  Iterable<Type> get types => const [
        BatchDescribeTypeConfigurationsError,
        _$BatchDescribeTypeConfigurationsError,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  BatchDescribeTypeConfigurationsError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchDescribeTypeConfigurationsErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ErrorCode':
          result.errorCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ErrorMessage':
          result.errorMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeConfigurationIdentifier':
          result.typeConfigurationIdentifier.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.TypeConfigurationIdentifier),
          ) as _i2.TypeConfigurationIdentifier));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BatchDescribeTypeConfigurationsError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'BatchDescribeTypeConfigurationsErrorResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final BatchDescribeTypeConfigurationsError(
      :errorCode,
      :errorMessage,
      :typeConfigurationIdentifier
    ) = object;
    if (errorCode != null) {
      result$
        ..add(const _i3.XmlElementName('ErrorCode'))
        ..add(serializers.serialize(
          errorCode,
          specifiedType: const FullType(String),
        ));
    }
    if (errorMessage != null) {
      result$
        ..add(const _i3.XmlElementName('ErrorMessage'))
        ..add(serializers.serialize(
          errorMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (typeConfigurationIdentifier != null) {
      result$
        ..add(const _i3.XmlElementName('TypeConfigurationIdentifier'))
        ..add(serializers.serialize(
          typeConfigurationIdentifier,
          specifiedType: const FullType(_i2.TypeConfigurationIdentifier),
        ));
    }
    return result$;
  }
}
