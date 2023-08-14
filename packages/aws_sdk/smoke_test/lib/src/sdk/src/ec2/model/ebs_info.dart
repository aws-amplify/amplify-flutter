// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ebs_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_encryption_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_nvme_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_optimized_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_optimized_support.dart';

part 'ebs_info.g.dart';

/// Describes the Amazon EBS features supported by the instance type.
abstract class EbsInfo
    with _i1.AWSEquatable<EbsInfo>
    implements Built<EbsInfo, EbsInfoBuilder> {
  /// Describes the Amazon EBS features supported by the instance type.
  factory EbsInfo({
    EbsOptimizedSupport? ebsOptimizedSupport,
    EbsEncryptionSupport? encryptionSupport,
    EbsOptimizedInfo? ebsOptimizedInfo,
    EbsNvmeSupport? nvmeSupport,
  }) {
    return _$EbsInfo._(
      ebsOptimizedSupport: ebsOptimizedSupport,
      encryptionSupport: encryptionSupport,
      ebsOptimizedInfo: ebsOptimizedInfo,
      nvmeSupport: nvmeSupport,
    );
  }

  /// Describes the Amazon EBS features supported by the instance type.
  factory EbsInfo.build([void Function(EbsInfoBuilder) updates]) = _$EbsInfo;

  const EbsInfo._();

  static const List<_i2.SmithySerializer<EbsInfo>> serializers = [
    EbsInfoEc2QuerySerializer()
  ];

  /// Indicates whether the instance type is Amazon EBS-optimized. For more information, see [Amazon EBS-optimized instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html) in _Amazon EC2 User Guide_.
  EbsOptimizedSupport? get ebsOptimizedSupport;

  /// Indicates whether Amazon EBS encryption is supported.
  EbsEncryptionSupport? get encryptionSupport;

  /// Describes the optimized EBS performance for the instance type.
  EbsOptimizedInfo? get ebsOptimizedInfo;

  /// Indicates whether non-volatile memory express (NVMe) is supported.
  EbsNvmeSupport? get nvmeSupport;
  @override
  List<Object?> get props => [
        ebsOptimizedSupport,
        encryptionSupport,
        ebsOptimizedInfo,
        nvmeSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EbsInfo')
      ..add(
        'ebsOptimizedSupport',
        ebsOptimizedSupport,
      )
      ..add(
        'encryptionSupport',
        encryptionSupport,
      )
      ..add(
        'ebsOptimizedInfo',
        ebsOptimizedInfo,
      )
      ..add(
        'nvmeSupport',
        nvmeSupport,
      );
    return helper.toString();
  }
}

class EbsInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<EbsInfo> {
  const EbsInfoEc2QuerySerializer() : super('EbsInfo');

  @override
  Iterable<Type> get types => const [
        EbsInfo,
        _$EbsInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EbsInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EbsInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ebsOptimizedSupport':
          result.ebsOptimizedSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(EbsOptimizedSupport),
          ) as EbsOptimizedSupport);
        case 'encryptionSupport':
          result.encryptionSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(EbsEncryptionSupport),
          ) as EbsEncryptionSupport);
        case 'ebsOptimizedInfo':
          result.ebsOptimizedInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EbsOptimizedInfo),
          ) as EbsOptimizedInfo));
        case 'nvmeSupport':
          result.nvmeSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(EbsNvmeSupport),
          ) as EbsNvmeSupport);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EbsInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EbsInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EbsInfo(
      :ebsOptimizedSupport,
      :encryptionSupport,
      :ebsOptimizedInfo,
      :nvmeSupport
    ) = object;
    if (ebsOptimizedSupport != null) {
      result$
        ..add(const _i2.XmlElementName('EbsOptimizedSupport'))
        ..add(serializers.serialize(
          ebsOptimizedSupport,
          specifiedType: const FullType.nullable(EbsOptimizedSupport),
        ));
    }
    if (encryptionSupport != null) {
      result$
        ..add(const _i2.XmlElementName('EncryptionSupport'))
        ..add(serializers.serialize(
          encryptionSupport,
          specifiedType: const FullType.nullable(EbsEncryptionSupport),
        ));
    }
    if (ebsOptimizedInfo != null) {
      result$
        ..add(const _i2.XmlElementName('EbsOptimizedInfo'))
        ..add(serializers.serialize(
          ebsOptimizedInfo,
          specifiedType: const FullType(EbsOptimizedInfo),
        ));
    }
    if (nvmeSupport != null) {
      result$
        ..add(const _i2.XmlElementName('NvmeSupport'))
        ..add(serializers.serialize(
          nvmeSupport,
          specifiedType: const FullType.nullable(EbsNvmeSupport),
        ));
    }
    return result$;
  }
}
