// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fpga_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_device_info.dart';

part 'fpga_info.g.dart';

/// Describes the FPGAs for the instance type.
abstract class FpgaInfo
    with _i1.AWSEquatable<FpgaInfo>
    implements Built<FpgaInfo, FpgaInfoBuilder> {
  /// Describes the FPGAs for the instance type.
  factory FpgaInfo({
    List<FpgaDeviceInfo>? fpgas,
    int? totalFpgaMemoryInMib,
  }) {
    return _$FpgaInfo._(
      fpgas: fpgas == null ? null : _i2.BuiltList(fpgas),
      totalFpgaMemoryInMib: totalFpgaMemoryInMib,
    );
  }

  /// Describes the FPGAs for the instance type.
  factory FpgaInfo.build([void Function(FpgaInfoBuilder) updates]) = _$FpgaInfo;

  const FpgaInfo._();

  static const List<_i3.SmithySerializer<FpgaInfo>> serializers = [
    FpgaInfoEc2QuerySerializer()
  ];

  /// Describes the FPGAs for the instance type.
  _i2.BuiltList<FpgaDeviceInfo>? get fpgas;

  /// The total memory of all FPGA accelerators for the instance type.
  int? get totalFpgaMemoryInMib;
  @override
  List<Object?> get props => [
        fpgas,
        totalFpgaMemoryInMib,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FpgaInfo')
      ..add(
        'fpgas',
        fpgas,
      )
      ..add(
        'totalFpgaMemoryInMib',
        totalFpgaMemoryInMib,
      );
    return helper.toString();
  }
}

class FpgaInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<FpgaInfo> {
  const FpgaInfoEc2QuerySerializer() : super('FpgaInfo');

  @override
  Iterable<Type> get types => const [
        FpgaInfo,
        _$FpgaInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FpgaInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FpgaInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fpgas':
          result.fpgas.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(FpgaDeviceInfo)],
            ),
          ) as _i2.BuiltList<FpgaDeviceInfo>));
        case 'totalFpgaMemoryInMiB':
          result.totalFpgaMemoryInMib = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FpgaInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'FpgaInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FpgaInfo(:fpgas, :totalFpgaMemoryInMib) = object;
    if (fpgas != null) {
      result$
        ..add(const _i3.XmlElementName('Fpgas'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          fpgas,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(FpgaDeviceInfo)],
          ),
        ));
    }
    if (totalFpgaMemoryInMib != null) {
      result$
        ..add(const _i3.XmlElementName('TotalFpgaMemoryInMiB'))
        ..add(serializers.serialize(
          totalFpgaMemoryInMib,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
