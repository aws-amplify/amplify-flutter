// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_storage_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ephemeral_nvme_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_storage_encryption_support.dart';

part 'instance_storage_info.g.dart';

/// Describes the instance store features that are supported by the instance type.
abstract class InstanceStorageInfo
    with _i1.AWSEquatable<InstanceStorageInfo>
    implements Built<InstanceStorageInfo, InstanceStorageInfoBuilder> {
  /// Describes the instance store features that are supported by the instance type.
  factory InstanceStorageInfo({
    _i2.Int64? totalSizeInGb,
    List<DiskInfo>? disks,
    EphemeralNvmeSupport? nvmeSupport,
    InstanceStorageEncryptionSupport? encryptionSupport,
  }) {
    return _$InstanceStorageInfo._(
      totalSizeInGb: totalSizeInGb,
      disks: disks == null ? null : _i3.BuiltList(disks),
      nvmeSupport: nvmeSupport,
      encryptionSupport: encryptionSupport,
    );
  }

  /// Describes the instance store features that are supported by the instance type.
  factory InstanceStorageInfo.build(
          [void Function(InstanceStorageInfoBuilder) updates]) =
      _$InstanceStorageInfo;

  const InstanceStorageInfo._();

  static const List<_i4.SmithySerializer<InstanceStorageInfo>> serializers = [
    InstanceStorageInfoEc2QuerySerializer()
  ];

  /// The total size of the disks, in GB.
  _i2.Int64? get totalSizeInGb;

  /// Describes the disks that are available for the instance type.
  _i3.BuiltList<DiskInfo>? get disks;

  /// Indicates whether non-volatile memory express (NVMe) is supported.
  EphemeralNvmeSupport? get nvmeSupport;

  /// Indicates whether data is encrypted at rest.
  InstanceStorageEncryptionSupport? get encryptionSupport;
  @override
  List<Object?> get props => [
        totalSizeInGb,
        disks,
        nvmeSupport,
        encryptionSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceStorageInfo')
      ..add(
        'totalSizeInGb',
        totalSizeInGb,
      )
      ..add(
        'disks',
        disks,
      )
      ..add(
        'nvmeSupport',
        nvmeSupport,
      )
      ..add(
        'encryptionSupport',
        encryptionSupport,
      );
    return helper.toString();
  }
}

class InstanceStorageInfoEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<InstanceStorageInfo> {
  const InstanceStorageInfoEc2QuerySerializer() : super('InstanceStorageInfo');

  @override
  Iterable<Type> get types => const [
        InstanceStorageInfo,
        _$InstanceStorageInfo,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceStorageInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceStorageInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'totalSizeInGB':
          result.totalSizeInGb = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'disks':
          result.disks.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(DiskInfo)],
            ),
          ) as _i3.BuiltList<DiskInfo>));
        case 'nvmeSupport':
          result.nvmeSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(EphemeralNvmeSupport),
          ) as EphemeralNvmeSupport);
        case 'encryptionSupport':
          result.encryptionSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceStorageEncryptionSupport),
          ) as InstanceStorageEncryptionSupport);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceStorageInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'InstanceStorageInfoResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceStorageInfo(
      :totalSizeInGb,
      :disks,
      :nvmeSupport,
      :encryptionSupport
    ) = object;
    if (totalSizeInGb != null) {
      result$
        ..add(const _i4.XmlElementName('TotalSizeInGB'))
        ..add(serializers.serialize(
          totalSizeInGb,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    if (disks != null) {
      result$
        ..add(const _i4.XmlElementName('Disks'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          disks,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(DiskInfo)],
          ),
        ));
    }
    if (nvmeSupport != null) {
      result$
        ..add(const _i4.XmlElementName('NvmeSupport'))
        ..add(serializers.serialize(
          nvmeSupport,
          specifiedType: const FullType.nullable(EphemeralNvmeSupport),
        ));
    }
    if (encryptionSupport != null) {
      result$
        ..add(const _i4.XmlElementName('EncryptionSupport'))
        ..add(serializers.serialize(
          encryptionSupport,
          specifiedType:
              const FullType.nullable(InstanceStorageEncryptionSupport),
        ));
    }
    return result$;
  }
}
