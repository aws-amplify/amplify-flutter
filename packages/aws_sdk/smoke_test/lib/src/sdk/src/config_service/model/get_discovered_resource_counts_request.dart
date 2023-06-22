// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_discovered_resource_counts_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_discovered_resource_counts_request.g.dart';

abstract class GetDiscoveredResourceCountsRequest
    with
        _i1.HttpInput<GetDiscoveredResourceCountsRequest>,
        _i2.AWSEquatable<GetDiscoveredResourceCountsRequest>
    implements
        Built<GetDiscoveredResourceCountsRequest,
            GetDiscoveredResourceCountsRequestBuilder> {
  factory GetDiscoveredResourceCountsRequest({
    List<String>? resourceTypes,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$GetDiscoveredResourceCountsRequest._(
      resourceTypes:
          resourceTypes == null ? null : _i3.BuiltList(resourceTypes),
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory GetDiscoveredResourceCountsRequest.build(
          [void Function(GetDiscoveredResourceCountsRequestBuilder) updates]) =
      _$GetDiscoveredResourceCountsRequest;

  const GetDiscoveredResourceCountsRequest._();

  factory GetDiscoveredResourceCountsRequest.fromRequest(
    GetDiscoveredResourceCountsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetDiscoveredResourceCountsRequest>>
      serializers = [GetDiscoveredResourceCountsRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDiscoveredResourceCountsRequestBuilder b) {
    b.limit = 0;
  }

  /// The comma-separated list that specifies the resource types that you want Config to return (for example, `"AWS::EC2::Instance"`, `"AWS::IAM::User"`).
  ///
  /// If a value for `resourceTypes` is not specified, Config returns all resource types that Config is recording in the region for your account.
  ///
  /// If the configuration recorder is turned off, Config returns an empty list of ResourceCount objects. If the configuration recorder is not recording a specific resource type (for example, S3 buckets), that resource type is not returned in the list of ResourceCount objects.
  _i3.BuiltList<String>? get resourceTypes;

  /// The maximum number of ResourceCount objects returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  GetDiscoveredResourceCountsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        resourceTypes,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetDiscoveredResourceCountsRequest')
          ..add(
            'resourceTypes',
            resourceTypes,
          )
          ..add(
            'limit',
            limit,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class GetDiscoveredResourceCountsRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<GetDiscoveredResourceCountsRequest> {
  const GetDiscoveredResourceCountsRequestAwsJson11Serializer()
      : super('GetDiscoveredResourceCountsRequest');

  @override
  Iterable<Type> get types => const [
        GetDiscoveredResourceCountsRequest,
        _$GetDiscoveredResourceCountsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetDiscoveredResourceCountsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDiscoveredResourceCountsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'resourceTypes':
          result.resourceTypes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    GetDiscoveredResourceCountsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetDiscoveredResourceCountsRequest(
      :resourceTypes,
      :limit,
      :nextToken
    ) = object;
    result$.addAll([
      'limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
    if (resourceTypes != null) {
      result$
        ..add('resourceTypes')
        ..add(serializers.serialize(
          resourceTypes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('nextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
