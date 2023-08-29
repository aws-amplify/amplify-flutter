// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_trunk_interface_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disassociate_trunk_interface_request.g.dart';

abstract class DisassociateTrunkInterfaceRequest
    with
        _i1.HttpInput<DisassociateTrunkInterfaceRequest>,
        _i2.AWSEquatable<DisassociateTrunkInterfaceRequest>
    implements
        Built<DisassociateTrunkInterfaceRequest,
            DisassociateTrunkInterfaceRequestBuilder> {
  factory DisassociateTrunkInterfaceRequest({
    String? associationId,
    String? clientToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DisassociateTrunkInterfaceRequest._(
      associationId: associationId,
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory DisassociateTrunkInterfaceRequest.build(
          [void Function(DisassociateTrunkInterfaceRequestBuilder) updates]) =
      _$DisassociateTrunkInterfaceRequest;

  const DisassociateTrunkInterfaceRequest._();

  factory DisassociateTrunkInterfaceRequest.fromRequest(
    DisassociateTrunkInterfaceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DisassociateTrunkInterfaceRequest>>
      serializers = [DisassociateTrunkInterfaceRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateTrunkInterfaceRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false;
  }

  /// The ID of the association
  String? get associationId;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisassociateTrunkInterfaceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        associationId,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateTrunkInterfaceRequest')
          ..add(
            'associationId',
            associationId,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DisassociateTrunkInterfaceRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DisassociateTrunkInterfaceRequest> {
  const DisassociateTrunkInterfaceRequestEc2QuerySerializer()
      : super('DisassociateTrunkInterfaceRequest');

  @override
  Iterable<Type> get types => const [
        DisassociateTrunkInterfaceRequest,
        _$DisassociateTrunkInterfaceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateTrunkInterfaceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateTrunkInterfaceRequestBuilder();
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
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
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
    DisassociateTrunkInterfaceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisassociateTrunkInterfaceRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateTrunkInterfaceRequest(
      :associationId,
      :clientToken,
      :dryRun
    ) = object;
    if (associationId != null) {
      result$
        ..add(const _i1.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
          specifiedType: const FullType(String),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
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
