// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_address_transfer_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/address_transfer.dart';

part 'enable_address_transfer_result.g.dart';

abstract class EnableAddressTransferResult
    with _i1.AWSEquatable<EnableAddressTransferResult>
    implements
        Built<EnableAddressTransferResult, EnableAddressTransferResultBuilder> {
  factory EnableAddressTransferResult({AddressTransfer? addressTransfer}) {
    return _$EnableAddressTransferResult._(addressTransfer: addressTransfer);
  }

  factory EnableAddressTransferResult.build(
          [void Function(EnableAddressTransferResultBuilder) updates]) =
      _$EnableAddressTransferResult;

  const EnableAddressTransferResult._();

  /// Constructs a [EnableAddressTransferResult] from a [payload] and [response].
  factory EnableAddressTransferResult.fromResponse(
    EnableAddressTransferResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<EnableAddressTransferResult>>
      serializers = [EnableAddressTransferResultEc2QuerySerializer()];

  /// An Elastic IP address transfer.
  AddressTransfer? get addressTransfer;
  @override
  List<Object?> get props => [addressTransfer];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnableAddressTransferResult')
      ..add(
        'addressTransfer',
        addressTransfer,
      );
    return helper.toString();
  }
}

class EnableAddressTransferResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<EnableAddressTransferResult> {
  const EnableAddressTransferResultEc2QuerySerializer()
      : super('EnableAddressTransferResult');

  @override
  Iterable<Type> get types => const [
        EnableAddressTransferResult,
        _$EnableAddressTransferResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableAddressTransferResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableAddressTransferResultBuilder();
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
    EnableAddressTransferResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EnableAddressTransferResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableAddressTransferResult(:addressTransfer) = object;
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
