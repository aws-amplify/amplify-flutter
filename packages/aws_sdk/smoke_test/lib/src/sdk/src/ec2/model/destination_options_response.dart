// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.destination_options_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/destination_file_format.dart';

part 'destination_options_response.g.dart';

/// Describes the destination options for a flow log.
abstract class DestinationOptionsResponse
    with _i1.AWSEquatable<DestinationOptionsResponse>
    implements
        Built<DestinationOptionsResponse, DestinationOptionsResponseBuilder> {
  /// Describes the destination options for a flow log.
  factory DestinationOptionsResponse({
    DestinationFileFormat? fileFormat,
    bool? hiveCompatiblePartitions,
    bool? perHourPartition,
  }) {
    hiveCompatiblePartitions ??= false;
    perHourPartition ??= false;
    return _$DestinationOptionsResponse._(
      fileFormat: fileFormat,
      hiveCompatiblePartitions: hiveCompatiblePartitions,
      perHourPartition: perHourPartition,
    );
  }

  /// Describes the destination options for a flow log.
  factory DestinationOptionsResponse.build(
          [void Function(DestinationOptionsResponseBuilder) updates]) =
      _$DestinationOptionsResponse;

  const DestinationOptionsResponse._();

  static const List<_i2.SmithySerializer<DestinationOptionsResponse>>
      serializers = [DestinationOptionsResponseEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DestinationOptionsResponseBuilder b) {
    b
      ..hiveCompatiblePartitions = false
      ..perHourPartition = false;
  }

  /// The format for the flow log.
  DestinationFileFormat? get fileFormat;

  /// Indicates whether to use Hive-compatible prefixes for flow logs stored in Amazon S3.
  bool get hiveCompatiblePartitions;

  /// Indicates whether to partition the flow log per hour.
  bool get perHourPartition;
  @override
  List<Object?> get props => [
        fileFormat,
        hiveCompatiblePartitions,
        perHourPartition,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DestinationOptionsResponse')
      ..add(
        'fileFormat',
        fileFormat,
      )
      ..add(
        'hiveCompatiblePartitions',
        hiveCompatiblePartitions,
      )
      ..add(
        'perHourPartition',
        perHourPartition,
      );
    return helper.toString();
  }
}

class DestinationOptionsResponseEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DestinationOptionsResponse> {
  const DestinationOptionsResponseEc2QuerySerializer()
      : super('DestinationOptionsResponse');

  @override
  Iterable<Type> get types => const [
        DestinationOptionsResponse,
        _$DestinationOptionsResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DestinationOptionsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DestinationOptionsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fileFormat':
          result.fileFormat = (serializers.deserialize(
            value,
            specifiedType: const FullType(DestinationFileFormat),
          ) as DestinationFileFormat);
        case 'hiveCompatiblePartitions':
          result.hiveCompatiblePartitions = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'perHourPartition':
          result.perHourPartition = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DestinationOptionsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DestinationOptionsResponseResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DestinationOptionsResponse(
      :fileFormat,
      :hiveCompatiblePartitions,
      :perHourPartition
    ) = object;
    if (fileFormat != null) {
      result$
        ..add(const _i2.XmlElementName('FileFormat'))
        ..add(serializers.serialize(
          fileFormat,
          specifiedType: const FullType.nullable(DestinationFileFormat),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('HiveCompatiblePartitions'))
      ..add(serializers.serialize(
        hiveCompatiblePartitions,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('PerHourPartition'))
      ..add(serializers.serialize(
        perHourPartition,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
