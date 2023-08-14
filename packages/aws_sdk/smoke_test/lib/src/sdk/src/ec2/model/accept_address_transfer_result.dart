// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.accept_address_transfer_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/address_transfer.dart';

part 'accept_address_transfer_result.g.dart';

abstract class AcceptAddressTransferResult
    with _i1.AWSEquatable<AcceptAddressTransferResult>
    implements
        Built<AcceptAddressTransferResult, AcceptAddressTransferResultBuilder> {
  factory AcceptAddressTransferResult({AddressTransfer? addressTransfer}) {
    return _$AcceptAddressTransferResult._(addressTransfer: addressTransfer);
  }

  factory AcceptAddressTransferResult.build(
          [void Function(AcceptAddressTransferResultBuilder) updates]) =
      _$AcceptAddressTransferResult;

  const AcceptAddressTransferResult._();

  /// Constructs a [AcceptAddressTransferResult] from a [payload] and [response].
  factory AcceptAddressTransferResult.fromResponse(
    AcceptAddressTransferResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<AcceptAddressTransferResult>>
      serializers = [AcceptAddressTransferResultEc2QuerySerializer()];

  /// An Elastic IP address transfer.
  AddressTransfer? get addressTransfer;
  @override
  List<Object?> get props => [addressTransfer];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AcceptAddressTransferResult')
      ..add(
        'addressTransfer',
        addressTransfer,
      );
    return helper.toString();
  }
}

class AcceptAddressTransferResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AcceptAddressTransferResult> {
  const AcceptAddressTransferResultEc2QuerySerializer()
      : super('AcceptAddressTransferResult');

  @override
  Iterable<Type> get types => const [
        AcceptAddressTransferResult,
        _$AcceptAddressTransferResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceptAddressTransferResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceptAddressTransferResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'addressTransfer':
          result.addressTransfer.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AddressTransfer),
          ) as AddressTransfer));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AcceptAddressTransferResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AcceptAddressTransferResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AcceptAddressTransferResult(:addressTransfer) = object;
    if (addressTransfer != null) {
      result$
        ..add(const _i2.XmlElementName('AddressTransfer'))
        ..add(serializers.serialize(
          addressTransfer,
          specifiedType: const FullType(AddressTransfer),
        ));
    }
    return result$;
  }
}
