// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.memory_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'memory_info.g.dart';

/// Describes the memory for the instance type.
abstract class MemoryInfo
    with _i1.AWSEquatable<MemoryInfo>
    implements Built<MemoryInfo, MemoryInfoBuilder> {
  /// Describes the memory for the instance type.
  factory MemoryInfo({_i2.Int64? sizeInMib}) {
    return _$MemoryInfo._(sizeInMib: sizeInMib);
  }

  /// Describes the memory for the instance type.
  factory MemoryInfo.build([void Function(MemoryInfoBuilder) updates]) =
      _$MemoryInfo;

  const MemoryInfo._();

  static const List<_i3.SmithySerializer<MemoryInfo>> serializers = [
    MemoryInfoEc2QuerySerializer()
  ];

  /// The size of the memory, in MiB.
  _i2.Int64? get sizeInMib;
  @override
  List<Object?> get props => [sizeInMib];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MemoryInfo')
      ..add(
        'sizeInMib',
        sizeInMib,
      );
    return helper.toString();
  }
}

class MemoryInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<MemoryInfo> {
  const MemoryInfoEc2QuerySerializer() : super('MemoryInfo');

  @override
  Iterable<Type> get types => const [
        MemoryInfo,
        _$MemoryInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MemoryInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemoryInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'sizeInMiB':
          result.sizeInMib = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MemoryInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'MemoryInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final MemoryInfo(:sizeInMib) = object;
    if (sizeInMib != null) {
      result$
        ..add(const _i3.XmlElementName('SizeInMiB'))
        ..add(serializers.serialize(
          sizeInMib,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    return result$;
  }
}
