// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_spot_fleet_requests_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_error_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_success_item.dart';

part 'cancel_spot_fleet_requests_response.g.dart';

/// Contains the output of CancelSpotFleetRequests.
abstract class CancelSpotFleetRequestsResponse
    with
        _i1.AWSEquatable<CancelSpotFleetRequestsResponse>
    implements
        Built<CancelSpotFleetRequestsResponse,
            CancelSpotFleetRequestsResponseBuilder> {
  /// Contains the output of CancelSpotFleetRequests.
  factory CancelSpotFleetRequestsResponse({
    List<CancelSpotFleetRequestsSuccessItem>? successfulFleetRequests,
    List<CancelSpotFleetRequestsErrorItem>? unsuccessfulFleetRequests,
  }) {
    return _$CancelSpotFleetRequestsResponse._(
      successfulFleetRequests: successfulFleetRequests == null
          ? null
          : _i2.BuiltList(successfulFleetRequests),
      unsuccessfulFleetRequests: unsuccessfulFleetRequests == null
          ? null
          : _i2.BuiltList(unsuccessfulFleetRequests),
    );
  }

  /// Contains the output of CancelSpotFleetRequests.
  factory CancelSpotFleetRequestsResponse.build(
          [void Function(CancelSpotFleetRequestsResponseBuilder) updates]) =
      _$CancelSpotFleetRequestsResponse;

  const CancelSpotFleetRequestsResponse._();

  /// Constructs a [CancelSpotFleetRequestsResponse] from a [payload] and [response].
  factory CancelSpotFleetRequestsResponse.fromResponse(
    CancelSpotFleetRequestsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CancelSpotFleetRequestsResponse>>
      serializers = [CancelSpotFleetRequestsResponseEc2QuerySerializer()];

  /// Information about the Spot Fleet requests that are successfully canceled.
  _i2.BuiltList<CancelSpotFleetRequestsSuccessItem>?
      get successfulFleetRequests;

  /// Information about the Spot Fleet requests that are not successfully canceled.
  _i2.BuiltList<CancelSpotFleetRequestsErrorItem>?
      get unsuccessfulFleetRequests;
  @override
  List<Object?> get props => [
        successfulFleetRequests,
        unsuccessfulFleetRequests,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelSpotFleetRequestsResponse')
          ..add(
            'successfulFleetRequests',
            successfulFleetRequests,
          )
          ..add(
            'unsuccessfulFleetRequests',
            unsuccessfulFleetRequests,
          );
    return helper.toString();
  }
}

class CancelSpotFleetRequestsResponseEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CancelSpotFleetRequestsResponse> {
  const CancelSpotFleetRequestsResponseEc2QuerySerializer()
      : super('CancelSpotFleetRequestsResponse');

  @override
  Iterable<Type> get types => const [
        CancelSpotFleetRequestsResponse,
        _$CancelSpotFleetRequestsResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelSpotFleetRequestsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelSpotFleetRequestsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'successfulFleetRequestSet':
          result.successfulFleetRequests
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CancelSpotFleetRequestsSuccessItem)],
            ),
          ) as _i2.BuiltList<CancelSpotFleetRequestsSuccessItem>));
        case 'unsuccessfulFleetRequestSet':
          result.unsuccessfulFleetRequests
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CancelSpotFleetRequestsErrorItem)],
            ),
          ) as _i2.BuiltList<CancelSpotFleetRequestsErrorItem>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CancelSpotFleetRequestsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CancelSpotFleetRequestsResponseResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelSpotFleetRequestsResponse(
      :successfulFleetRequests,
      :unsuccessfulFleetRequests
    ) = object;
    if (successfulFleetRequests != null) {
      result$
        ..add(const _i3.XmlElementName('SuccessfulFleetRequestSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          successfulFleetRequests,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(CancelSpotFleetRequestsSuccessItem)],
          ),
        ));
    }
    if (unsuccessfulFleetRequests != null) {
      result$
        ..add(const _i3.XmlElementName('UnsuccessfulFleetRequestSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          unsuccessfulFleetRequests,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(CancelSpotFleetRequestsErrorItem)],
          ),
        ));
    }
    return result$;
  }
}
