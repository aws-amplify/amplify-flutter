// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_route_table_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disassociate_route_table_request.g.dart';

abstract class DisassociateRouteTableRequest
    with
        _i1.HttpInput<DisassociateRouteTableRequest>,
        _i2.AWSEquatable<DisassociateRouteTableRequest>
    implements
        Built<DisassociateRouteTableRequest,
            DisassociateRouteTableRequestBuilder> {
  factory DisassociateRouteTableRequest({
    String? associationId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DisassociateRouteTableRequest._(
      associationId: associationId,
      dryRun: dryRun,
    );
  }

  factory DisassociateRouteTableRequest.build(
          [void Function(DisassociateRouteTableRequestBuilder) updates]) =
      _$DisassociateRouteTableRequest;

  const DisassociateRouteTableRequest._();

  factory DisassociateRouteTableRequest.fromRequest(
    DisassociateRouteTableRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DisassociateRouteTableRequest>>
      serializers = [DisassociateRouteTableRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateRouteTableRequestBuilder b) {
    b.dryRun = false;
  }

  /// The association ID representing the current association between the route table and subnet or gateway.
  String? get associationId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisassociateRouteTableRequest getPayload() => this;
  @override
  List<Object?> get props => [
        associationId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DisassociateRouteTableRequest')
      ..add(
        'associationId',
        associationId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DisassociateRouteTableRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DisassociateRouteTableRequest> {
  const DisassociateRouteTableRequestEc2QuerySerializer()
      : super('DisassociateRouteTableRequest');

  @override
  Iterable<Type> get types => const [
        DisassociateRouteTableRequest,
        _$DisassociateRouteTableRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateRouteTableRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateRouteTableRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associationId':
          result.associationId = (serializers.deserialize(
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
    DisassociateRouteTableRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisassociateRouteTableRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateRouteTableRequest(:associationId, :dryRun) = object;
    if (associationId != null) {
      result$
        ..add(const _i1.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
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
