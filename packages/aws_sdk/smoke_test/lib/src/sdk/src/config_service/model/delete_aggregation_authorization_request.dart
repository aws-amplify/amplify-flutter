// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.delete_aggregation_authorization_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_aggregation_authorization_request.g.dart';

abstract class DeleteAggregationAuthorizationRequest
    with
        _i1.HttpInput<DeleteAggregationAuthorizationRequest>,
        _i2.AWSEquatable<DeleteAggregationAuthorizationRequest>
    implements
        Built<DeleteAggregationAuthorizationRequest,
            DeleteAggregationAuthorizationRequestBuilder> {
  factory DeleteAggregationAuthorizationRequest({
    required String authorizedAccountId,
    required String authorizedAwsRegion,
  }) {
    return _$DeleteAggregationAuthorizationRequest._(
      authorizedAccountId: authorizedAccountId,
      authorizedAwsRegion: authorizedAwsRegion,
    );
  }

  factory DeleteAggregationAuthorizationRequest.build(
      [void Function(DeleteAggregationAuthorizationRequestBuilder)
          updates]) = _$DeleteAggregationAuthorizationRequest;

  const DeleteAggregationAuthorizationRequest._();

  factory DeleteAggregationAuthorizationRequest.fromRequest(
    DeleteAggregationAuthorizationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteAggregationAuthorizationRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteAggregationAuthorizationRequestBuilder b) {}

  /// The 12-digit account ID of the account authorized to aggregate data.
  String get authorizedAccountId;

  /// The region authorized to collect aggregated data.
  String get authorizedAwsRegion;
  @override
  DeleteAggregationAuthorizationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        authorizedAccountId,
        authorizedAwsRegion,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteAggregationAuthorizationRequest');
    helper.add(
      'authorizedAccountId',
      authorizedAccountId,
    );
    helper.add(
      'authorizedAwsRegion',
      authorizedAwsRegion,
    );
    return helper.toString();
  }
}

class DeleteAggregationAuthorizationRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DeleteAggregationAuthorizationRequest> {
  const DeleteAggregationAuthorizationRequestAwsJson11Serializer()
      : super('DeleteAggregationAuthorizationRequest');

  @override
  Iterable<Type> get types => const [
        DeleteAggregationAuthorizationRequest,
        _$DeleteAggregationAuthorizationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteAggregationAuthorizationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteAggregationAuthorizationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AuthorizedAccountId':
          result.authorizedAccountId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'AuthorizedAwsRegion':
          result.authorizedAwsRegion = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DeleteAggregationAuthorizationRequest);
    final result = <Object?>[
      'AuthorizedAccountId',
      serializers.serialize(
        payload.authorizedAccountId,
        specifiedType: const FullType(String),
      ),
      'AuthorizedAwsRegion',
      serializers.serialize(
        payload.authorizedAwsRegion,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
