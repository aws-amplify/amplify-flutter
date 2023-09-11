// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.purchase_scheduled_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_request.dart';

part 'purchase_scheduled_instances_request.g.dart';

/// Contains the parameters for PurchaseScheduledInstances.
abstract class PurchaseScheduledInstancesRequest
    with
        _i1.HttpInput<PurchaseScheduledInstancesRequest>,
        _i2.AWSEquatable<PurchaseScheduledInstancesRequest>
    implements
        Built<PurchaseScheduledInstancesRequest,
            PurchaseScheduledInstancesRequestBuilder> {
  /// Contains the parameters for PurchaseScheduledInstances.
  factory PurchaseScheduledInstancesRequest({
    String? clientToken,
    bool? dryRun,
    List<PurchaseRequest>? purchaseRequests,
  }) {
    dryRun ??= false;
    return _$PurchaseScheduledInstancesRequest._(
      clientToken: clientToken,
      dryRun: dryRun,
      purchaseRequests:
          purchaseRequests == null ? null : _i3.BuiltList(purchaseRequests),
    );
  }

  /// Contains the parameters for PurchaseScheduledInstances.
  factory PurchaseScheduledInstancesRequest.build(
          [void Function(PurchaseScheduledInstancesRequestBuilder) updates]) =
      _$PurchaseScheduledInstancesRequest;

  const PurchaseScheduledInstancesRequest._();

  factory PurchaseScheduledInstancesRequest.fromRequest(
    PurchaseScheduledInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PurchaseScheduledInstancesRequest>>
      serializers = [PurchaseScheduledInstancesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PurchaseScheduledInstancesRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false;
  }

  /// Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The purchase requests.
  _i3.BuiltList<PurchaseRequest>? get purchaseRequests;
  @override
  PurchaseScheduledInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        dryRun,
        purchaseRequests,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PurchaseScheduledInstancesRequest')
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'purchaseRequests',
            purchaseRequests,
          );
    return helper.toString();
  }
}

class PurchaseScheduledInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<PurchaseScheduledInstancesRequest> {
  const PurchaseScheduledInstancesRequestEc2QuerySerializer()
      : super('PurchaseScheduledInstancesRequest');

  @override
  Iterable<Type> get types => const [
        PurchaseScheduledInstancesRequest,
        _$PurchaseScheduledInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PurchaseScheduledInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurchaseScheduledInstancesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'PurchaseRequest':
          result.purchaseRequests.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'PurchaseRequest',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(PurchaseRequest)],
            ),
          ) as _i3.BuiltList<PurchaseRequest>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PurchaseScheduledInstancesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'PurchaseScheduledInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PurchaseScheduledInstancesRequest(
      :clientToken,
      :dryRun,
      :purchaseRequests
    ) = object;
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
    if (purchaseRequests != null) {
      result$
        ..add(const _i1.XmlElementName('PurchaseRequest'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'PurchaseRequest',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          purchaseRequests,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(PurchaseRequest)],
          ),
        ));
    }
    return result$;
  }
}
