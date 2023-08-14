// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.put_aggregation_authorization_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/tag.dart';

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
    List<Tag>? tags,
  }) {
    return _$PutAggregationAuthorizationRequest._(
      authorizedAccountId: authorizedAccountId,
      authorizedAwsRegion: authorizedAwsRegion,
      tags: tags == null ? null : _i3.BuiltList(tags),
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

  static const List<_i1.SmithySerializer<PutAggregationAuthorizationRequest>>
      serializers = [PutAggregationAuthorizationRequestAwsJson11Serializer()];

  /// The 12-digit account ID of the account authorized to aggregate data.
  String get authorizedAccountId;

  /// The region authorized to collect aggregated data.
  String get authorizedAwsRegion;

  /// An array of tag object.
  _i3.BuiltList<Tag>? get tags;
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
        newBuiltValueToStringHelper('PutAggregationAuthorizationRequest')
          ..add(
            'authorizedAccountId',
            authorizedAccountId,
          )
          ..add(
            'authorizedAwsRegion',
            authorizedAwsRegion,
          )
          ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AuthorizedAccountId':
          result.authorizedAccountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AuthorizedAwsRegion':
          result.authorizedAwsRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i3.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutAggregationAuthorizationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutAggregationAuthorizationRequest(
      :authorizedAccountId,
      :authorizedAwsRegion,
      :tags
    ) = object;
    result$.addAll([
      'AuthorizedAccountId',
      serializers.serialize(
        authorizedAccountId,
        specifiedType: const FullType(String),
      ),
      'AuthorizedAwsRegion',
      serializers.serialize(
        authorizedAwsRegion,
        specifiedType: const FullType(String),
      ),
    ]);
    if (tags != null) {
      result$
        ..add('Tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
