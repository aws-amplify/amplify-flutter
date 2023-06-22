// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.delete_pending_aggregation_request_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_pending_aggregation_request_request.g.dart';

abstract class DeletePendingAggregationRequestRequest
    with
        _i1.HttpInput<DeletePendingAggregationRequestRequest>,
        _i2.AWSEquatable<DeletePendingAggregationRequestRequest>
    implements
        Built<DeletePendingAggregationRequestRequest,
            DeletePendingAggregationRequestRequestBuilder> {
  factory DeletePendingAggregationRequestRequest({
    required String requesterAccountId,
    required String requesterAwsRegion,
  }) {
    return _$DeletePendingAggregationRequestRequest._(
      requesterAccountId: requesterAccountId,
      requesterAwsRegion: requesterAwsRegion,
    );
  }

  factory DeletePendingAggregationRequestRequest.build(
      [void Function(DeletePendingAggregationRequestRequestBuilder)
          updates]) = _$DeletePendingAggregationRequestRequest;

  const DeletePendingAggregationRequestRequest._();

  factory DeletePendingAggregationRequestRequest.fromRequest(
    DeletePendingAggregationRequestRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DeletePendingAggregationRequestRequest>>
      serializers = [
    DeletePendingAggregationRequestRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeletePendingAggregationRequestRequestBuilder b) {}

  /// The 12-digit account ID of the account requesting to aggregate data.
  String get requesterAccountId;

  /// The region requesting to aggregate data.
  String get requesterAwsRegion;
  @override
  DeletePendingAggregationRequestRequest getPayload() => this;
  @override
  List<Object?> get props => [
        requesterAccountId,
        requesterAwsRegion,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeletePendingAggregationRequestRequest')
          ..add(
            'requesterAccountId',
            requesterAccountId,
          )
          ..add(
            'requesterAwsRegion',
            requesterAwsRegion,
          );
    return helper.toString();
  }
}

class DeletePendingAggregationRequestRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DeletePendingAggregationRequestRequest> {
  const DeletePendingAggregationRequestRequestAwsJson11Serializer()
      : super('DeletePendingAggregationRequestRequest');

  @override
  Iterable<Type> get types => const [
        DeletePendingAggregationRequestRequest,
        _$DeletePendingAggregationRequestRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeletePendingAggregationRequestRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeletePendingAggregationRequestRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RequesterAccountId':
          result.requesterAccountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RequesterAwsRegion':
          result.requesterAwsRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeletePendingAggregationRequestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeletePendingAggregationRequestRequest(
      :requesterAccountId,
      :requesterAwsRegion
    ) = object;
    result$.addAll([
      'RequesterAccountId',
      serializers.serialize(
        requesterAccountId,
        specifiedType: const FullType(String),
      ),
      'RequesterAwsRegion',
      serializers.serialize(
        requesterAwsRegion,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
