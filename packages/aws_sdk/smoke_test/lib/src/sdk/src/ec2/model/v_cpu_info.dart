// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.v_cpu_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'v_cpu_info.g.dart';

/// Describes the vCPU configurations for the instance type.
abstract class VCpuInfo
    with _i1.AWSEquatable<VCpuInfo>
    implements Built<VCpuInfo, VCpuInfoBuilder> {
  /// Describes the vCPU configurations for the instance type.
  factory VCpuInfo({
    int? defaultVCpus,
    int? defaultCores,
    int? defaultThreadsPerCore,
    List<int>? validCores,
    List<int>? validThreadsPerCore,
  }) {
    return _$VCpuInfo._(
      defaultVCpus: defaultVCpus,
      defaultCores: defaultCores,
      defaultThreadsPerCore: defaultThreadsPerCore,
      validCores: validCores == null ? null : _i2.BuiltList(validCores),
      validThreadsPerCore: validThreadsPerCore == null
          ? null
          : _i2.BuiltList(validThreadsPerCore),
    );
  }

  /// Describes the vCPU configurations for the instance type.
  factory VCpuInfo.build([void Function(VCpuInfoBuilder) updates]) = _$VCpuInfo;

  const VCpuInfo._();

  static const List<_i3.SmithySerializer<VCpuInfo>> serializers = [
    VCpuInfoEc2QuerySerializer()
  ];

  /// The default number of vCPUs for the instance type.
  int? get defaultVCpus;

  /// The default number of cores for the instance type.
  int? get defaultCores;

  /// The default number of threads per core for the instance type.
  int? get defaultThreadsPerCore;

  /// The valid number of cores that can be configured for the instance type.
  _i2.BuiltList<int>? get validCores;

  /// The valid number of threads per core that can be configured for the instance type.
  _i2.BuiltList<int>? get validThreadsPerCore;
  @override
  List<Object?> get props => [
        defaultVCpus,
        defaultCores,
        defaultThreadsPerCore,
        validCores,
        validThreadsPerCore,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VCpuInfo')
      ..add(
        'defaultVCpus',
        defaultVCpus,
      )
      ..add(
        'defaultCores',
        defaultCores,
      )
      ..add(
        'defaultThreadsPerCore',
        defaultThreadsPerCore,
      )
      ..add(
        'validCores',
        validCores,
      )
      ..add(
        'validThreadsPerCore',
        validThreadsPerCore,
      );
    return helper.toString();
  }
}

class VCpuInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VCpuInfo> {
  const VCpuInfoEc2QuerySerializer() : super('VCpuInfo');

  @override
  Iterable<Type> get types => const [
        VCpuInfo,
        _$VCpuInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VCpuInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VCpuInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'defaultVCpus':
          result.defaultVCpus = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'defaultCores':
          result.defaultCores = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'defaultThreadsPerCore':
          result.defaultThreadsPerCore = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'validCores':
          result.validCores.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(int)],
            ),
          ) as _i2.BuiltList<int>));
        case 'validThreadsPerCore':
          result.validThreadsPerCore.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(int)],
            ),
          ) as _i2.BuiltList<int>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VCpuInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VCpuInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VCpuInfo(
      :defaultVCpus,
      :defaultCores,
      :defaultThreadsPerCore,
      :validCores,
      :validThreadsPerCore
    ) = object;
    if (defaultVCpus != null) {
      result$
        ..add(const _i3.XmlElementName('DefaultVCpus'))
        ..add(serializers.serialize(
          defaultVCpus,
          specifiedType: const FullType(int),
        ));
    }
    if (defaultCores != null) {
      result$
        ..add(const _i3.XmlElementName('DefaultCores'))
        ..add(serializers.serialize(
          defaultCores,
          specifiedType: const FullType(int),
        ));
    }
    if (defaultThreadsPerCore != null) {
      result$
        ..add(const _i3.XmlElementName('DefaultThreadsPerCore'))
        ..add(serializers.serialize(
          defaultThreadsPerCore,
          specifiedType: const FullType(int),
        ));
    }
    if (validCores != null) {
      result$
        ..add(const _i3.XmlElementName('ValidCores'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          validCores,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    if (validThreadsPerCore != null) {
      result$
        ..add(const _i3.XmlElementName('ValidThreadsPerCore'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          validThreadsPerCore,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    return result$;
  }
}
