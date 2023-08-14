// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_address_transfer_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/address_transfer.dart';

part 'disable_address_transfer_result.g.dart';

abstract class DisableAddressTransferResult
    with
        _i1.AWSEquatable<DisableAddressTransferResult>
    implements
        Built<DisableAddressTransferResult,
            DisableAddressTransferResultBuilder> {
  factory DisableAddressTransferResult({AddressTransfer? addressTransfer}) {
    return _$DisableAddressTransferResult._(addressTransfer: addressTransfer);
  }

  factory DisableAddressTransferResult.build(
          [void Function(DisableAddressTransferResultBuilder) updates]) =
      _$DisableAddressTransferResult;

  const DisableAddressTransferResult._();

  /// Constructs a [DisableAddressTransferResult] from a [payload] and [response].
  factory DisableAddressTransferResult.fromResponse(
    DisableAddressTransferResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DisableAddressTransferResult>>
      serializers = [DisableAddressTransferResultEc2QuerySerializer()];

  /// An Elastic IP address transfer.
  AddressTransfer? get addressTransfer;
  @override
  List<Object?> get props => [addressTransfer];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DisableAddressTransferResult')
      ..add(
        'addressTransfer',
        addressTransfer,
      );
    return helper.toString();
  }
}

class DisableAddressTransferResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DisableAddressTransferResult> {
  const DisableAddressTransferResultEc2QuerySerializer()
      : super('DisableAddressTransferResult');

  @override
  Iterable<Type> get types => const [
        DisableAddressTransferResult,
        _$DisableAddressTransferResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableAddressTransferResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableAddressTransferResultBuilder();
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
    DisableAddressTransferResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DisableAddressTransferResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableAddressTransferResult(:addressTransfer) = object;
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
