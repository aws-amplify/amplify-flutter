// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_hosts_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/host.dart';

part 'describe_hosts_result.g.dart';

abstract class DescribeHostsResult
    with _i1.AWSEquatable<DescribeHostsResult>
    implements Built<DescribeHostsResult, DescribeHostsResultBuilder> {
  factory DescribeHostsResult({
    List<Host>? hosts,
    String? nextToken,
  }) {
    return _$DescribeHostsResult._(
      hosts: hosts == null ? null : _i2.BuiltList(hosts),
      nextToken: nextToken,
    );
  }

  factory DescribeHostsResult.build(
          [void Function(DescribeHostsResultBuilder) updates]) =
      _$DescribeHostsResult;

  const DescribeHostsResult._();

  /// Constructs a [DescribeHostsResult] from a [payload] and [response].
  factory DescribeHostsResult.fromResponse(
    DescribeHostsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeHostsResult>> serializers = [
    DescribeHostsResultEc2QuerySerializer()
  ];

  /// Information about the Dedicated Hosts.
  _i2.BuiltList<Host>? get hosts;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        hosts,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeHostsResult')
      ..add(
        'hosts',
        hosts,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeHostsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeHostsResult> {
  const DescribeHostsResultEc2QuerySerializer() : super('DescribeHostsResult');

  @override
  Iterable<Type> get types => const [
        DescribeHostsResult,
        _$DescribeHostsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeHostsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeHostsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'hostSet':
          result.hosts.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Host)],
            ),
          ) as _i2.BuiltList<Host>));
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
    DescribeHostsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeHostsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeHostsResult(:hosts, :nextToken) = object;
    if (hosts != null) {
      result$
        ..add(const _i3.XmlElementName('HostSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          hosts,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Host)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
