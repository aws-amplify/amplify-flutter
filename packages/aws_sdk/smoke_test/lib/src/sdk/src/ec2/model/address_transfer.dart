// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.address_transfer; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/address_transfer_status.dart';

part 'address_transfer.g.dart';

/// Details on the Elastic IP address transfer. For more information, see [Transfer Elastic IP addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro) in the _Amazon Virtual Private Cloud User Guide_.
abstract class AddressTransfer
    with _i1.AWSEquatable<AddressTransfer>
    implements Built<AddressTransfer, AddressTransferBuilder> {
  /// Details on the Elastic IP address transfer. For more information, see [Transfer Elastic IP addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro) in the _Amazon Virtual Private Cloud User Guide_.
  factory AddressTransfer({
    String? publicIp,
    String? allocationId,
    String? transferAccountId,
    DateTime? transferOfferExpirationTimestamp,
    DateTime? transferOfferAcceptedTimestamp,
    AddressTransferStatus? addressTransferStatus,
  }) {
    return _$AddressTransfer._(
      publicIp: publicIp,
      allocationId: allocationId,
      transferAccountId: transferAccountId,
      transferOfferExpirationTimestamp: transferOfferExpirationTimestamp,
      transferOfferAcceptedTimestamp: transferOfferAcceptedTimestamp,
      addressTransferStatus: addressTransferStatus,
    );
  }

  /// Details on the Elastic IP address transfer. For more information, see [Transfer Elastic IP addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro) in the _Amazon Virtual Private Cloud User Guide_.
  factory AddressTransfer.build(
      [void Function(AddressTransferBuilder) updates]) = _$AddressTransfer;

  const AddressTransfer._();

  static const List<_i2.SmithySerializer<AddressTransfer>> serializers = [
    AddressTransferEc2QuerySerializer()
  ];

  /// The Elastic IP address being transferred.
  String? get publicIp;

  /// The allocation ID of an Elastic IP address.
  String? get allocationId;

  /// The ID of the account that you want to transfer the Elastic IP address to.
  String? get transferAccountId;

  /// The timestamp when the Elastic IP address transfer expired. When the source account starts the transfer, the transfer account has seven hours to allocate the Elastic IP address to complete the transfer, or the Elastic IP address will return to its original owner.
  DateTime? get transferOfferExpirationTimestamp;

  /// The timestamp when the Elastic IP address transfer was accepted.
  DateTime? get transferOfferAcceptedTimestamp;

  /// The Elastic IP address transfer status.
  AddressTransferStatus? get addressTransferStatus;
  @override
  List<Object?> get props => [
        publicIp,
        allocationId,
        transferAccountId,
        transferOfferExpirationTimestamp,
        transferOfferAcceptedTimestamp,
        addressTransferStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AddressTransfer')
      ..add(
        'publicIp',
        publicIp,
      )
      ..add(
        'allocationId',
        allocationId,
      )
      ..add(
        'transferAccountId',
        transferAccountId,
      )
      ..add(
        'transferOfferExpirationTimestamp',
        transferOfferExpirationTimestamp,
      )
      ..add(
        'transferOfferAcceptedTimestamp',
        transferOfferAcceptedTimestamp,
      )
      ..add(
        'addressTransferStatus',
        addressTransferStatus,
      );
    return helper.toString();
  }
}

class AddressTransferEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AddressTransfer> {
  const AddressTransferEc2QuerySerializer() : super('AddressTransfer');

  @override
  Iterable<Type> get types => const [
        AddressTransfer,
        _$AddressTransfer,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AddressTransfer deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddressTransferBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'publicIp':
          result.publicIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'allocationId':
          result.allocationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transferAccountId':
          result.transferAccountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transferOfferExpirationTimestamp':
          result.transferOfferExpirationTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'transferOfferAcceptedTimestamp':
          result.transferOfferAcceptedTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'addressTransferStatus':
          result.addressTransferStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(AddressTransferStatus),
          ) as AddressTransferStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AddressTransfer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AddressTransferResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AddressTransfer(
      :publicIp,
      :allocationId,
      :transferAccountId,
      :transferOfferExpirationTimestamp,
      :transferOfferAcceptedTimestamp,
      :addressTransferStatus
    ) = object;
    if (publicIp != null) {
      result$
        ..add(const _i2.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          publicIp,
          specifiedType: const FullType(String),
        ));
    }
    if (allocationId != null) {
      result$
        ..add(const _i2.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          allocationId,
          specifiedType: const FullType(String),
        ));
    }
    if (transferAccountId != null) {
      result$
        ..add(const _i2.XmlElementName('TransferAccountId'))
        ..add(serializers.serialize(
          transferAccountId,
          specifiedType: const FullType(String),
        ));
    }
    if (transferOfferExpirationTimestamp != null) {
      result$
        ..add(const _i2.XmlElementName('TransferOfferExpirationTimestamp'))
        ..add(serializers.serialize(
          transferOfferExpirationTimestamp,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (transferOfferAcceptedTimestamp != null) {
      result$
        ..add(const _i2.XmlElementName('TransferOfferAcceptedTimestamp'))
        ..add(serializers.serialize(
          transferOfferAcceptedTimestamp,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (addressTransferStatus != null) {
      result$
        ..add(const _i2.XmlElementName('AddressTransferStatus'))
        ..add(serializers.serialize(
          addressTransferStatus,
          specifiedType: const FullType.nullable(AddressTransferStatus),
        ));
    }
    return result$;
  }
}
