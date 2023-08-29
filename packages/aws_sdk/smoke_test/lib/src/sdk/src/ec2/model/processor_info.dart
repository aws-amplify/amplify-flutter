// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.processor_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/supported_additional_processor_feature.dart';

part 'processor_info.g.dart';

/// Describes the processor used by the instance type.
abstract class ProcessorInfo
    with _i1.AWSEquatable<ProcessorInfo>
    implements Built<ProcessorInfo, ProcessorInfoBuilder> {
  /// Describes the processor used by the instance type.
  factory ProcessorInfo({
    List<ArchitectureType>? supportedArchitectures,
    double? sustainedClockSpeedInGhz,
    List<SupportedAdditionalProcessorFeature>? supportedFeatures,
  }) {
    return _$ProcessorInfo._(
      supportedArchitectures: supportedArchitectures == null
          ? null
          : _i2.BuiltList(supportedArchitectures),
      sustainedClockSpeedInGhz: sustainedClockSpeedInGhz,
      supportedFeatures:
          supportedFeatures == null ? null : _i2.BuiltList(supportedFeatures),
    );
  }

  /// Describes the processor used by the instance type.
  factory ProcessorInfo.build([void Function(ProcessorInfoBuilder) updates]) =
      _$ProcessorInfo;

  const ProcessorInfo._();

  static const List<_i3.SmithySerializer<ProcessorInfo>> serializers = [
    ProcessorInfoEc2QuerySerializer()
  ];

  /// The architectures supported by the instance type.
  _i2.BuiltList<ArchitectureType>? get supportedArchitectures;

  /// The speed of the processor, in GHz.
  double? get sustainedClockSpeedInGhz;

  /// Indicates whether the instance type supports AMD SEV-SNP. If the request returns `amd-sev-snp`, AMD SEV-SNP is supported. Otherwise, it is not supported. For more information, see [AMD SEV-SNP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sev-snp.html).
  _i2.BuiltList<SupportedAdditionalProcessorFeature>? get supportedFeatures;
  @override
  List<Object?> get props => [
        supportedArchitectures,
        sustainedClockSpeedInGhz,
        supportedFeatures,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProcessorInfo')
      ..add(
        'supportedArchitectures',
        supportedArchitectures,
      )
      ..add(
        'sustainedClockSpeedInGhz',
        sustainedClockSpeedInGhz,
      )
      ..add(
        'supportedFeatures',
        supportedFeatures,
      );
    return helper.toString();
  }
}

class ProcessorInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ProcessorInfo> {
  const ProcessorInfoEc2QuerySerializer() : super('ProcessorInfo');

  @override
  Iterable<Type> get types => const [
        ProcessorInfo,
        _$ProcessorInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProcessorInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProcessorInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'supportedArchitectures':
          result.supportedArchitectures
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ArchitectureType)],
            ),
          ) as _i2.BuiltList<ArchitectureType>));
        case 'sustainedClockSpeedInGhz':
          result.sustainedClockSpeedInGhz = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'supportedFeatures':
          result.supportedFeatures.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SupportedAdditionalProcessorFeature)],
            ),
          ) as _i2.BuiltList<SupportedAdditionalProcessorFeature>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ProcessorInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ProcessorInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ProcessorInfo(
      :supportedArchitectures,
      :sustainedClockSpeedInGhz,
      :supportedFeatures
    ) = object;
    if (supportedArchitectures != null) {
      result$
        ..add(const _i3.XmlElementName('SupportedArchitectures'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedArchitectures,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ArchitectureType)],
          ),
        ));
    }
    if (sustainedClockSpeedInGhz != null) {
      result$
        ..add(const _i3.XmlElementName('SustainedClockSpeedInGhz'))
        ..add(serializers.serialize(
          sustainedClockSpeedInGhz,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (supportedFeatures != null) {
      result$
        ..add(const _i3.XmlElementName('SupportedFeatures'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedFeatures,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(SupportedAdditionalProcessorFeature)],
          ),
        ));
    }
    return result$;
  }
}
