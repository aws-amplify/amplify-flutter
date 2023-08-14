// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reset_address_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/address_attribute.dart';

part 'reset_address_attribute_result.g.dart';

abstract class ResetAddressAttributeResult
    with _i1.AWSEquatable<ResetAddressAttributeResult>
    implements
        Built<ResetAddressAttributeResult, ResetAddressAttributeResultBuilder> {
  factory ResetAddressAttributeResult({AddressAttribute? address}) {
    return _$ResetAddressAttributeResult._(address: address);
  }

  factory ResetAddressAttributeResult.build(
          [void Function(ResetAddressAttributeResultBuilder) updates]) =
      _$ResetAddressAttributeResult;

  const ResetAddressAttributeResult._();

  /// Constructs a [ResetAddressAttributeResult] from a [payload] and [response].
  factory ResetAddressAttributeResult.fromResponse(
    ResetAddressAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ResetAddressAttributeResult>>
      serializers = [ResetAddressAttributeResultEc2QuerySerializer()];

  /// Information about the IP address.
  AddressAttribute? get address;
  @override
  List<Object?> get props => [address];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResetAddressAttributeResult')
      ..add(
        'address',
        address,
      );
    return helper.toString();
  }
}

class ResetAddressAttributeResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ResetAddressAttributeResult> {
  const ResetAddressAttributeResultEc2QuerySerializer()
      : super('ResetAddressAttributeResult');

  @override
  Iterable<Type> get types => const [
        ResetAddressAttributeResult,
        _$ResetAddressAttributeResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResetAddressAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetAddressAttributeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'address':
          result.address.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AddressAttribute),
          ) as AddressAttribute));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResetAddressAttributeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ResetAddressAttributeResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ResetAddressAttributeResult(:address) = object;
    if (address != null) {
      result$
        ..add(const _i2.XmlElementName('Address'))
        ..add(serializers.serialize(
          address,
          specifiedType: const FullType(AddressAttribute),
        ));
    }
    return result$;
  }
}
