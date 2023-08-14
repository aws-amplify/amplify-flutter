// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.icmp_type_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'icmp_type_code.g.dart';

/// Describes the ICMP type and code.
abstract class IcmpTypeCode
    with _i1.AWSEquatable<IcmpTypeCode>
    implements Built<IcmpTypeCode, IcmpTypeCodeBuilder> {
  /// Describes the ICMP type and code.
  factory IcmpTypeCode({
    int? code,
    int? type,
  }) {
    code ??= 0;
    type ??= 0;
    return _$IcmpTypeCode._(
      code: code,
      type: type,
    );
  }

  /// Describes the ICMP type and code.
  factory IcmpTypeCode.build([void Function(IcmpTypeCodeBuilder) updates]) =
      _$IcmpTypeCode;

  const IcmpTypeCode._();

  static const List<_i2.SmithySerializer<IcmpTypeCode>> serializers = [
    IcmpTypeCodeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IcmpTypeCodeBuilder b) {
    b
      ..code = 0
      ..type = 0;
  }

  /// The ICMP code. A value of -1 means all codes for the specified ICMP type.
  int get code;

  /// The ICMP type. A value of -1 means all types.
  int get type;
  @override
  List<Object?> get props => [
        code,
        type,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IcmpTypeCode')
      ..add(
        'code',
        code,
      )
      ..add(
        'type',
        type,
      );
    return helper.toString();
  }
}

class IcmpTypeCodeEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IcmpTypeCode> {
  const IcmpTypeCodeEc2QuerySerializer() : super('IcmpTypeCode');

  @override
  Iterable<Type> get types => const [
        IcmpTypeCode,
        _$IcmpTypeCode,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IcmpTypeCode deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IcmpTypeCodeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'type':
          result.type = (serializers.deserialize(
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
    IcmpTypeCode object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IcmpTypeCodeResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IcmpTypeCode(:code, :type) = object;
    result$
      ..add(const _i2.XmlElementName('Code'))
      ..add(serializers.serialize(
        code,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('Type'))
      ..add(serializers.serialize(
        type,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
