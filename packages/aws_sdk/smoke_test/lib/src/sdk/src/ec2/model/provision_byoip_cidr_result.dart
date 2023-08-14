// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.provision_byoip_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/byoip_cidr.dart';

part 'provision_byoip_cidr_result.g.dart';

abstract class ProvisionByoipCidrResult
    with _i1.AWSEquatable<ProvisionByoipCidrResult>
    implements
        Built<ProvisionByoipCidrResult, ProvisionByoipCidrResultBuilder> {
  factory ProvisionByoipCidrResult({ByoipCidr? byoipCidr}) {
    return _$ProvisionByoipCidrResult._(byoipCidr: byoipCidr);
  }

  factory ProvisionByoipCidrResult.build(
          [void Function(ProvisionByoipCidrResultBuilder) updates]) =
      _$ProvisionByoipCidrResult;

  const ProvisionByoipCidrResult._();

  /// Constructs a [ProvisionByoipCidrResult] from a [payload] and [response].
  factory ProvisionByoipCidrResult.fromResponse(
    ProvisionByoipCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ProvisionByoipCidrResult>>
      serializers = [ProvisionByoipCidrResultEc2QuerySerializer()];

  /// Information about the address range.
  ByoipCidr? get byoipCidr;
  @override
  List<Object?> get props => [byoipCidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProvisionByoipCidrResult')
      ..add(
        'byoipCidr',
        byoipCidr,
      );
    return helper.toString();
  }
}

class ProvisionByoipCidrResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ProvisionByoipCidrResult> {
  const ProvisionByoipCidrResultEc2QuerySerializer()
      : super('ProvisionByoipCidrResult');

  @override
  Iterable<Type> get types => const [
        ProvisionByoipCidrResult,
        _$ProvisionByoipCidrResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProvisionByoipCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionByoipCidrResultBuilder();
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
    ProvisionByoipCidrResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ProvisionByoipCidrResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ProvisionByoipCidrResult(:byoipCidr) = object;
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
