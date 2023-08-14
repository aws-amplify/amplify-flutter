// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reset_address_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/address_attribute_name.dart';

part 'reset_address_attribute_request.g.dart';

abstract class ResetAddressAttributeRequest
    with
        _i1.HttpInput<ResetAddressAttributeRequest>,
        _i2.AWSEquatable<ResetAddressAttributeRequest>
    implements
        Built<ResetAddressAttributeRequest,
            ResetAddressAttributeRequestBuilder> {
  factory ResetAddressAttributeRequest({
    String? allocationId,
    AddressAttributeName? attribute,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ResetAddressAttributeRequest._(
      allocationId: allocationId,
      attribute: attribute,
      dryRun: dryRun,
    );
  }

  factory ResetAddressAttributeRequest.build(
          [void Function(ResetAddressAttributeRequestBuilder) updates]) =
      _$ResetAddressAttributeRequest;

  const ResetAddressAttributeRequest._();

  factory ResetAddressAttributeRequest.fromRequest(
    ResetAddressAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ResetAddressAttributeRequest>>
      serializers = [ResetAddressAttributeRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResetAddressAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// \[EC2-VPC\] The allocation ID.
  String? get allocationId;

  /// The attribute of the IP address.
  AddressAttributeName? get attribute;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ResetAddressAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        allocationId,
        attribute,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResetAddressAttributeRequest')
      ..add(
        'allocationId',
        allocationId,
      )
      ..add(
        'attribute',
        attribute,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ResetAddressAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ResetAddressAttributeRequest> {
  const ResetAddressAttributeRequestEc2QuerySerializer()
      : super('ResetAddressAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ResetAddressAttributeRequest,
        _$ResetAddressAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResetAddressAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetAddressAttributeRequestBuilder();
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
        case 'Attribute':
          result.attribute = (serializers.deserialize(
            value,
            specifiedType: const FullType(AddressAttributeName),
          ) as AddressAttributeName);
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
    ResetAddressAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ResetAddressAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ResetAddressAttributeRequest(:allocationId, :attribute, :dryRun) =
        object;
    if (allocationId != null) {
      result$
        ..add(const _i1.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          allocationId,
          specifiedType: const FullType(String),
        ));
    }
    if (attribute != null) {
      result$
        ..add(const _i1.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          attribute,
          specifiedType: const FullType.nullable(AddressAttributeName),
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
