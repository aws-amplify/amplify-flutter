// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.put_aggregation_authorization_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/tag.dart' as _i3;

part 'put_aggregation_authorization_request.g.dart';

abstract class PutAggregationAuthorizationRequest
    with
        _i1.HttpInput<PutAggregationAuthorizationRequest>,
        _i2.AWSEquatable<PutAggregationAuthorizationRequest>
    implements
        Built<PutAggregationAuthorizationRequest,
            PutAggregationAuthorizationRequestBuilder> {
  factory PutAggregationAuthorizationRequest({
    required String authorizedAccountId,
    required String authorizedAwsRegion,
    List<_i3.Tag>? tags,
  }) {
    return _$PutAggregationAuthorizationRequest._(
      authorizedAccountId: authorizedAccountId,
      authorizedAwsRegion: authorizedAwsRegion,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  factory PutAggregationAuthorizationRequest.build(
          [void Function(PutAggregationAuthorizationRequestBuilder) updates]) =
      _$PutAggregationAuthorizationRequest;

  const PutAggregationAuthorizationRequest._();

  factory PutAggregationAuthorizationRequest.fromRequest(
    PutAggregationAuthorizationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    PutAggregationAuthorizationRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutAggregationAuthorizationRequestBuilder b) {}

  /// The 12-digit account ID of the account authorized to aggregate data.
  String get authorizedAccountId;

  /// The region authorized to collect aggregated data.
  String get authorizedAwsRegion;

  /// An array of tag object.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  PutAggregationAuthorizationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        authorizedAccountId,
        authorizedAwsRegion,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutAggregationAuthorizationRequest');
    helper.add(
      'authorizedAccountId',
      authorizedAccountId,
    );
    helper.add(
      'authorizedAwsRegion',
      authorizedAwsRegion,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class PutAggregationAuthorizationRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutAggregationAuthorizationRequest> {
  const PutAggregationAuthorizationRequestAwsJson11Serializer()
      : super('PutAggregationAuthorizationRequest');

  @override
  Iterable<Type> get types => const [
        PutAggregationAuthorizationRequest,
        _$PutAggregationAuthorizationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutAggregationAuthorizationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutAggregationAuthorizationRequestBuilder();
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
        case 'Tags':
          if (value != null) {
            result.tags.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
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
    final payload = (object as PutAggregationAuthorizationRequest);
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
    if (payload.tags != null) {
      result
        ..add('Tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result;
  }
}
