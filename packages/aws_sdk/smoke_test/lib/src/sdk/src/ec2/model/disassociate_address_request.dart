// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_address_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disassociate_address_request.g.dart';

abstract class DisassociateAddressRequest
    with
        _i1.HttpInput<DisassociateAddressRequest>,
        _i2.AWSEquatable<DisassociateAddressRequest>
    implements
        Built<DisassociateAddressRequest, DisassociateAddressRequestBuilder> {
  factory DisassociateAddressRequest({
    String? associationId,
    String? publicIp,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DisassociateAddressRequest._(
      associationId: associationId,
      publicIp: publicIp,
      dryRun: dryRun,
    );
  }

  factory DisassociateAddressRequest.build(
          [void Function(DisassociateAddressRequestBuilder) updates]) =
      _$DisassociateAddressRequest;

  const DisassociateAddressRequest._();

  factory DisassociateAddressRequest.fromRequest(
    DisassociateAddressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DisassociateAddressRequest>>
      serializers = [DisassociateAddressRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateAddressRequestBuilder b) {
    b.dryRun = false;
  }

  /// The association ID. This parameter is required.
  String? get associationId;

  /// Deprecated.
  String? get publicIp;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisassociateAddressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        associationId,
        publicIp,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DisassociateAddressRequest')
      ..add(
        'associationId',
        associationId,
      )
      ..add(
        'publicIp',
        publicIp,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DisassociateAddressRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DisassociateAddressRequest> {
  const DisassociateAddressRequestEc2QuerySerializer()
      : super('DisassociateAddressRequest');

  @override
  Iterable<Type> get types => const [
        DisassociateAddressRequest,
        _$DisassociateAddressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateAddressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateAddressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AssociationId':
          result.associationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PublicIp':
          result.publicIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
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
    DisassociateAddressRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisassociateAddressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateAddressRequest(:associationId, :publicIp, :dryRun) =
        object;
    if (associationId != null) {
      result$
        ..add(const _i1.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
          specifiedType: const FullType(String),
        ));
    }
    if (publicIp != null) {
      result$
        ..add(const _i1.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          publicIp,
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
