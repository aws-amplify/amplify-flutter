// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_discovered_resource_counts_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_count.dart'
    as _i3;

part 'get_discovered_resource_counts_response.g.dart';

abstract class GetDiscoveredResourceCountsResponse
    with
        _i1.AWSEquatable<GetDiscoveredResourceCountsResponse>
    implements
        Built<GetDiscoveredResourceCountsResponse,
            GetDiscoveredResourceCountsResponseBuilder> {
  factory GetDiscoveredResourceCountsResponse({
    _i2.Int64? totalDiscoveredResources,
    List<_i3.ResourceCount>? resourceCounts,
    String? nextToken,
  }) {
    totalDiscoveredResources ??= _i2.Int64.ZERO;
    return _$GetDiscoveredResourceCountsResponse._(
      totalDiscoveredResources: totalDiscoveredResources,
      resourceCounts:
          resourceCounts == null ? null : _i4.BuiltList(resourceCounts),
      nextToken: nextToken,
    );
  }

  factory GetDiscoveredResourceCountsResponse.build(
          [void Function(GetDiscoveredResourceCountsResponseBuilder) updates]) =
      _$GetDiscoveredResourceCountsResponse;

  const GetDiscoveredResourceCountsResponse._();

  /// Constructs a [GetDiscoveredResourceCountsResponse] from a [payload] and [response].
  factory GetDiscoveredResourceCountsResponse.fromResponse(
    GetDiscoveredResourceCountsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer<GetDiscoveredResourceCountsResponse>>
      serializers = [GetDiscoveredResourceCountsResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDiscoveredResourceCountsResponseBuilder b) {
    b.totalDiscoveredResources = _i2.Int64.ZERO;
  }

  /// The total number of resources that Config is recording in the region for your account. If you specify resource types in the request, Config returns only the total number of resources for those resource types.
  ///
  /// **Example**
  ///
  /// 1.  Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets, for a total of 60 resources.
  ///
  /// 2.  You make a call to the `GetDiscoveredResourceCounts` action and specify the resource type, `"AWS::EC2::Instances"`, in the request.
  ///
  /// 3.  Config returns 25 for `totalDiscoveredResources`.
  _i2.Int64 get totalDiscoveredResources;

  /// The list of `ResourceCount` objects. Each object is listed in descending order by the number of resources.
  _i4.BuiltList<_i3.ResourceCount>? get resourceCounts;

  /// The string that you use in a subsequent request to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        totalDiscoveredResources,
        resourceCounts,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetDiscoveredResourceCountsResponse')
          ..add(
            'totalDiscoveredResources',
            totalDiscoveredResources,
          )
          ..add(
            'resourceCounts',
            resourceCounts,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class GetDiscoveredResourceCountsResponseAwsJson11Serializer extends _i5
    .StructuredSmithySerializer<GetDiscoveredResourceCountsResponse> {
  const GetDiscoveredResourceCountsResponseAwsJson11Serializer()
      : super('GetDiscoveredResourceCountsResponse');

  @override
  Iterable<Type> get types => const [
        GetDiscoveredResourceCountsResponse,
        _$GetDiscoveredResourceCountsResponse,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetDiscoveredResourceCountsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDiscoveredResourceCountsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'totalDiscoveredResources':
          result.totalDiscoveredResources = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'resourceCounts':
          result.resourceCounts.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.ResourceCount)],
            ),
          ) as _i4.BuiltList<_i3.ResourceCount>));
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
    GetDiscoveredResourceCountsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetDiscoveredResourceCountsResponse(
      :totalDiscoveredResources,
      :resourceCounts,
      :nextToken
    ) = object;
    result$.addAll([
      'totalDiscoveredResources',
      serializers.serialize(
        totalDiscoveredResources,
        specifiedType: const FullType(_i2.Int64),
      ),
    ]);
    if (resourceCounts != null) {
      result$
        ..add('resourceCounts')
        ..add(serializers.serialize(
          resourceCounts,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.ResourceCount)],
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
