// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpc_classic_link_dns_support_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_vpc_classic_link_dns_support_request.g.dart';

abstract class DescribeVpcClassicLinkDnsSupportRequest
    with
        _i1.HttpInput<DescribeVpcClassicLinkDnsSupportRequest>,
        _i2.AWSEquatable<DescribeVpcClassicLinkDnsSupportRequest>
    implements
        Built<DescribeVpcClassicLinkDnsSupportRequest,
            DescribeVpcClassicLinkDnsSupportRequestBuilder> {
  factory DescribeVpcClassicLinkDnsSupportRequest({
    int? maxResults,
    String? nextToken,
    List<String>? vpcIds,
  }) {
    maxResults ??= 0;
    return _$DescribeVpcClassicLinkDnsSupportRequest._(
      maxResults: maxResults,
      nextToken: nextToken,
      vpcIds: vpcIds == null ? null : _i3.BuiltList(vpcIds),
    );
  }

  factory DescribeVpcClassicLinkDnsSupportRequest.build(
      [void Function(DescribeVpcClassicLinkDnsSupportRequestBuilder)
          updates]) = _$DescribeVpcClassicLinkDnsSupportRequest;

  const DescribeVpcClassicLinkDnsSupportRequest._();

  factory DescribeVpcClassicLinkDnsSupportRequest.fromRequest(
    DescribeVpcClassicLinkDnsSupportRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeVpcClassicLinkDnsSupportRequest>>
      serializers = [
    DescribeVpcClassicLinkDnsSupportRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcClassicLinkDnsSupportRequestBuilder b) {
    b.maxResults = 0;
  }

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The IDs of the VPCs.
  _i3.BuiltList<String>? get vpcIds;
  @override
  DescribeVpcClassicLinkDnsSupportRequest getPayload() => this;
  @override
  List<Object?> get props => [
        maxResults,
        nextToken,
        vpcIds,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVpcClassicLinkDnsSupportRequest')
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'vpcIds',
            vpcIds,
          );
    return helper.toString();
  }
}

class DescribeVpcClassicLinkDnsSupportRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeVpcClassicLinkDnsSupportRequest> {
  const DescribeVpcClassicLinkDnsSupportRequestEc2QuerySerializer()
      : super('DescribeVpcClassicLinkDnsSupportRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpcClassicLinkDnsSupportRequest,
        _$DescribeVpcClassicLinkDnsSupportRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcClassicLinkDnsSupportRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcClassicLinkDnsSupportRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'maxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VpcIds':
          result.vpcIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'VpcId',
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
    DescribeVpcClassicLinkDnsSupportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpcClassicLinkDnsSupportRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcClassicLinkDnsSupportRequest(
      :maxResults,
      :nextToken,
      :vpcIds
    ) = object;
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
    if (vpcIds != null) {
      result$
        ..add(const _i1.XmlElementName('VpcIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'VpcId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpcIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
