// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_stale_security_groups_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_stale_security_groups_request.g.dart';

abstract class DescribeStaleSecurityGroupsRequest
    with
        _i1.HttpInput<DescribeStaleSecurityGroupsRequest>,
        _i2.AWSEquatable<DescribeStaleSecurityGroupsRequest>
    implements
        Built<DescribeStaleSecurityGroupsRequest,
            DescribeStaleSecurityGroupsRequestBuilder> {
  factory DescribeStaleSecurityGroupsRequest({
    bool? dryRun,
    int? maxResults,
    String? nextToken,
    String? vpcId,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeStaleSecurityGroupsRequest._(
      dryRun: dryRun,
      maxResults: maxResults,
      nextToken: nextToken,
      vpcId: vpcId,
    );
  }

  factory DescribeStaleSecurityGroupsRequest.build(
          [void Function(DescribeStaleSecurityGroupsRequestBuilder) updates]) =
      _$DescribeStaleSecurityGroupsRequest;

  const DescribeStaleSecurityGroupsRequest._();

  factory DescribeStaleSecurityGroupsRequest.fromRequest(
    DescribeStaleSecurityGroupsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeStaleSecurityGroupsRequest>>
      serializers = [DescribeStaleSecurityGroupsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStaleSecurityGroupsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The ID of the VPC.
  String? get vpcId;
  @override
  DescribeStaleSecurityGroupsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        maxResults,
        nextToken,
        vpcId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeStaleSecurityGroupsRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'vpcId',
            vpcId,
          );
    return helper.toString();
  }
}

class DescribeStaleSecurityGroupsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeStaleSecurityGroupsRequest> {
  const DescribeStaleSecurityGroupsRequestEc2QuerySerializer()
      : super('DescribeStaleSecurityGroupsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeStaleSecurityGroupsRequest,
        _$DescribeStaleSecurityGroupsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeStaleSecurityGroupsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStaleSecurityGroupsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
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
    DescribeStaleSecurityGroupsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeStaleSecurityGroupsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeStaleSecurityGroupsRequest(
      :dryRun,
      :maxResults,
      :nextToken,
      :vpcId
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
