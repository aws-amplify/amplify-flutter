// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_address_transfer_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'enable_address_transfer_request.g.dart';

abstract class EnableAddressTransferRequest
    with
        _i1.HttpInput<EnableAddressTransferRequest>,
        _i2.AWSEquatable<EnableAddressTransferRequest>
    implements
        Built<EnableAddressTransferRequest,
            EnableAddressTransferRequestBuilder> {
  factory EnableAddressTransferRequest({
    String? allocationId,
    String? transferAccountId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$EnableAddressTransferRequest._(
      allocationId: allocationId,
      transferAccountId: transferAccountId,
      dryRun: dryRun,
    );
  }

  factory EnableAddressTransferRequest.build(
          [void Function(EnableAddressTransferRequestBuilder) updates]) =
      _$EnableAddressTransferRequest;

  const EnableAddressTransferRequest._();

  factory EnableAddressTransferRequest.fromRequest(
    EnableAddressTransferRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<EnableAddressTransferRequest>>
      serializers = [EnableAddressTransferRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableAddressTransferRequestBuilder b) {
    b.dryRun = false;
  }

  /// The allocation ID of an Elastic IP address.
  String? get allocationId;

  /// The ID of the account that you want to transfer the Elastic IP address to.
  String? get transferAccountId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  EnableAddressTransferRequest getPayload() => this;
  @override
  List<Object?> get props => [
        allocationId,
        transferAccountId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnableAddressTransferRequest')
      ..add(
        'allocationId',
        allocationId,
      )
      ..add(
        'transferAccountId',
        transferAccountId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class EnableAddressTransferRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<EnableAddressTransferRequest> {
  const EnableAddressTransferRequestEc2QuerySerializer()
      : super('EnableAddressTransferRequest');

  @override
  Iterable<Type> get types => const [
        EnableAddressTransferRequest,
        _$EnableAddressTransferRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableAddressTransferRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableAddressTransferRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AllocationId':
          result.allocationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TransferAccountId':
          result.transferAccountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EnableAddressTransferRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'EnableAddressTransferRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableAddressTransferRequest(
      :allocationId,
      :transferAccountId,
      :dryRun
    ) = object;
    if (allocationId != null) {
      result$
        ..add(const _i1.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          allocationId,
          specifiedType: const FullType(String),
        ));
    }
    if (transferAccountId != null) {
      result$
        ..add(const _i1.XmlElementName('TransferAccountId'))
        ..add(serializers.serialize(
          transferAccountId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
