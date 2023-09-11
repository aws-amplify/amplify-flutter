// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.athena_integration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/partition_load_frequency.dart';

part 'athena_integration.g.dart';

/// Describes integration options for Amazon Athena.
abstract class AthenaIntegration
    with _i1.AWSEquatable<AthenaIntegration>
    implements Built<AthenaIntegration, AthenaIntegrationBuilder> {
  /// Describes integration options for Amazon Athena.
  factory AthenaIntegration({
    String? integrationResultS3DestinationArn,
    PartitionLoadFrequency? partitionLoadFrequency,
    DateTime? partitionStartDate,
    DateTime? partitionEndDate,
  }) {
    return _$AthenaIntegration._(
      integrationResultS3DestinationArn: integrationResultS3DestinationArn,
      partitionLoadFrequency: partitionLoadFrequency,
      partitionStartDate: partitionStartDate,
      partitionEndDate: partitionEndDate,
    );
  }

  /// Describes integration options for Amazon Athena.
  factory AthenaIntegration.build(
      [void Function(AthenaIntegrationBuilder) updates]) = _$AthenaIntegration;

  const AthenaIntegration._();

  static const List<_i2.SmithySerializer<AthenaIntegration>> serializers = [
    AthenaIntegrationEc2QuerySerializer()
  ];

  /// The location in Amazon S3 to store the generated CloudFormation template.
  String? get integrationResultS3DestinationArn;

  /// The schedule for adding new partitions to the table.
  PartitionLoadFrequency? get partitionLoadFrequency;

  /// The start date for the partition.
  DateTime? get partitionStartDate;

  /// The end date for the partition.
  DateTime? get partitionEndDate;
  @override
  List<Object?> get props => [
        integrationResultS3DestinationArn,
        partitionLoadFrequency,
        partitionStartDate,
        partitionEndDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AthenaIntegration')
      ..add(
        'integrationResultS3DestinationArn',
        integrationResultS3DestinationArn,
      )
      ..add(
        'partitionLoadFrequency',
        partitionLoadFrequency,
      )
      ..add(
        'partitionStartDate',
        partitionStartDate,
      )
      ..add(
        'partitionEndDate',
        partitionEndDate,
      );
    return helper.toString();
  }
}

class AthenaIntegrationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AthenaIntegration> {
  const AthenaIntegrationEc2QuerySerializer() : super('AthenaIntegration');

  @override
  Iterable<Type> get types => const [
        AthenaIntegration,
        _$AthenaIntegration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AthenaIntegration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AthenaIntegrationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IntegrationResultS3DestinationArn':
          result.integrationResultS3DestinationArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PartitionLoadFrequency':
          result.partitionLoadFrequency = (serializers.deserialize(
            value,
            specifiedType: const FullType(PartitionLoadFrequency),
          ) as PartitionLoadFrequency);
        case 'PartitionStartDate':
          result.partitionStartDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'PartitionEndDate':
          result.partitionEndDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AthenaIntegration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AthenaIntegrationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AthenaIntegration(
      :integrationResultS3DestinationArn,
      :partitionLoadFrequency,
      :partitionStartDate,
      :partitionEndDate
    ) = object;
    if (integrationResultS3DestinationArn != null) {
      result$
        ..add(const _i2.XmlElementName('IntegrationResultS3DestinationArn'))
        ..add(serializers.serialize(
          integrationResultS3DestinationArn,
          specifiedType: const FullType(String),
        ));
    }
    if (partitionLoadFrequency != null) {
      result$
        ..add(const _i2.XmlElementName('PartitionLoadFrequency'))
        ..add(serializers.serialize(
          partitionLoadFrequency,
          specifiedType: const FullType(PartitionLoadFrequency),
        ));
    }
    if (partitionStartDate != null) {
      result$
        ..add(const _i2.XmlElementName('PartitionStartDate'))
        ..add(serializers.serialize(
          partitionStartDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (partitionEndDate != null) {
      result$
        ..add(const _i2.XmlElementName('PartitionEndDate'))
        ..add(serializers.serialize(
          partitionEndDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
