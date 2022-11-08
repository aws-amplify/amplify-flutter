// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.pending_aggregation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'pending_aggregation_request.g.dart';

/// An object that represents the account ID and region of an aggregator account that is requesting authorization but is not yet authorized.
abstract class PendingAggregationRequest
    with _i1.AWSEquatable<PendingAggregationRequest>
    implements
        Built<PendingAggregationRequest, PendingAggregationRequestBuilder> {
  /// An object that represents the account ID and region of an aggregator account that is requesting authorization but is not yet authorized.
  factory PendingAggregationRequest({
    String? requesterAccountId,
    String? requesterAwsRegion,
  }) {
    return _$PendingAggregationRequest._(
      requesterAccountId: requesterAccountId,
      requesterAwsRegion: requesterAwsRegion,
    );
  }

  /// An object that represents the account ID and region of an aggregator account that is requesting authorization but is not yet authorized.
  factory PendingAggregationRequest.build(
          [void Function(PendingAggregationRequestBuilder) updates]) =
      _$PendingAggregationRequest;

  const PendingAggregationRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    PendingAggregationRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PendingAggregationRequestBuilder b) {}

  /// The 12-digit account ID of the account requesting to aggregate data.
  String? get requesterAccountId;

  /// The region requesting to aggregate data.
  String? get requesterAwsRegion;
  @override
  List<Object?> get props => [
        requesterAccountId,
        requesterAwsRegion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PendingAggregationRequest');
    helper.add(
      'requesterAccountId',
      requesterAccountId,
    );
    helper.add(
      'requesterAwsRegion',
      requesterAwsRegion,
    );
    return helper.toString();
  }
}

class PendingAggregationRequestAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<PendingAggregationRequest> {
  const PendingAggregationRequestAwsJson11Serializer()
      : super('PendingAggregationRequest');

  @override
  Iterable<Type> get types => const [
        PendingAggregationRequest,
        _$PendingAggregationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PendingAggregationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PendingAggregationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'RequesterAccountId':
          if (value != null) {
            result.requesterAccountId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RequesterAwsRegion':
          if (value != null) {
            result.requesterAwsRegion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as PendingAggregationRequest);
    final result = <Object?>[];
    if (payload.requesterAccountId != null) {
      result
        ..add('RequesterAccountId')
        ..add(serializers.serialize(
          payload.requesterAccountId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.requesterAwsRegion != null) {
      result
        ..add('RequesterAwsRegion')
        ..add(serializers.serialize(
          payload.requesterAwsRegion!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
