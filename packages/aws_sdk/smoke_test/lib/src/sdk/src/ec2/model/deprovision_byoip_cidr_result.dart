// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.deprovision_byoip_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/byoip_cidr.dart';

part 'deprovision_byoip_cidr_result.g.dart';

abstract class DeprovisionByoipCidrResult
    with _i1.AWSEquatable<DeprovisionByoipCidrResult>
    implements
        Built<DeprovisionByoipCidrResult, DeprovisionByoipCidrResultBuilder> {
  factory DeprovisionByoipCidrResult({ByoipCidr? byoipCidr}) {
    return _$DeprovisionByoipCidrResult._(byoipCidr: byoipCidr);
  }

  factory DeprovisionByoipCidrResult.build(
          [void Function(DeprovisionByoipCidrResultBuilder) updates]) =
      _$DeprovisionByoipCidrResult;

  const DeprovisionByoipCidrResult._();

  /// Constructs a [DeprovisionByoipCidrResult] from a [payload] and [response].
  factory DeprovisionByoipCidrResult.fromResponse(
    DeprovisionByoipCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeprovisionByoipCidrResult>>
      serializers = [DeprovisionByoipCidrResultEc2QuerySerializer()];

  /// Information about the address range.
  ByoipCidr? get byoipCidr;
  @override
  List<Object?> get props => [byoipCidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeprovisionByoipCidrResult')
      ..add(
        'byoipCidr',
        byoipCidr,
      );
    return helper.toString();
  }
}

class DeprovisionByoipCidrResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeprovisionByoipCidrResult> {
  const DeprovisionByoipCidrResultEc2QuerySerializer()
      : super('DeprovisionByoipCidrResult');

  @override
  Iterable<Type> get types => const [
        DeprovisionByoipCidrResult,
        _$DeprovisionByoipCidrResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeprovisionByoipCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeprovisionByoipCidrResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'byoipCidr':
          result.byoipCidr.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ByoipCidr),
          ) as ByoipCidr));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeprovisionByoipCidrResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeprovisionByoipCidrResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeprovisionByoipCidrResult(:byoipCidr) = object;
    if (byoipCidr != null) {
      result$
        ..add(const _i2.XmlElementName('ByoipCidr'))
        ..add(serializers.serialize(
          byoipCidr,
          specifiedType: const FullType(ByoipCidr),
        ));
    }
    return result$;
  }
}
