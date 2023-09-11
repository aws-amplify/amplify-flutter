// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_spot_instance_requests_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'cancel_spot_instance_requests_request.g.dart';

/// Contains the parameters for CancelSpotInstanceRequests.
abstract class CancelSpotInstanceRequestsRequest
    with
        _i1.HttpInput<CancelSpotInstanceRequestsRequest>,
        _i2.AWSEquatable<CancelSpotInstanceRequestsRequest>
    implements
        Built<CancelSpotInstanceRequestsRequest,
            CancelSpotInstanceRequestsRequestBuilder> {
  /// Contains the parameters for CancelSpotInstanceRequests.
  factory CancelSpotInstanceRequestsRequest({
    bool? dryRun,
    List<String>? spotInstanceRequestIds,
  }) {
    dryRun ??= false;
    return _$CancelSpotInstanceRequestsRequest._(
      dryRun: dryRun,
      spotInstanceRequestIds: spotInstanceRequestIds == null
          ? null
          : _i3.BuiltList(spotInstanceRequestIds),
    );
  }

  /// Contains the parameters for CancelSpotInstanceRequests.
  factory CancelSpotInstanceRequestsRequest.build(
          [void Function(CancelSpotInstanceRequestsRequestBuilder) updates]) =
      _$CancelSpotInstanceRequestsRequest;

  const CancelSpotInstanceRequestsRequest._();

  factory CancelSpotInstanceRequestsRequest.fromRequest(
    CancelSpotInstanceRequestsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CancelSpotInstanceRequestsRequest>>
      serializers = [CancelSpotInstanceRequestsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelSpotInstanceRequestsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the Spot Instance requests.
  _i3.BuiltList<String>? get spotInstanceRequestIds;
  @override
  CancelSpotInstanceRequestsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        spotInstanceRequestIds,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelSpotInstanceRequestsRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'spotInstanceRequestIds',
            spotInstanceRequestIds,
          );
    return helper.toString();
  }
}

class CancelSpotInstanceRequestsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CancelSpotInstanceRequestsRequest> {
  const CancelSpotInstanceRequestsRequestEc2QuerySerializer()
      : super('CancelSpotInstanceRequestsRequest');

  @override
  Iterable<Type> get types => const [
        CancelSpotInstanceRequestsRequest,
        _$CancelSpotInstanceRequestsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelSpotInstanceRequestsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelSpotInstanceRequestsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'SpotInstanceRequestId':
          result.spotInstanceRequestIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'SpotInstanceRequestId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CancelSpotInstanceRequestsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CancelSpotInstanceRequestsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelSpotInstanceRequestsRequest(:dryRun, :spotInstanceRequestIds) =
        object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (spotInstanceRequestIds != null) {
      result$
        ..add(const _i1.XmlElementName('SpotInstanceRequestId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SpotInstanceRequestId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          spotInstanceRequestIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
