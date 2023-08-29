// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_local_gateway_virtual_interface_groups_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_virtual_interface_group.dart';

part 'describe_local_gateway_virtual_interface_groups_result.g.dart';

abstract class DescribeLocalGatewayVirtualInterfaceGroupsResult
    with
        _i1.AWSEquatable<DescribeLocalGatewayVirtualInterfaceGroupsResult>
    implements
        Built<DescribeLocalGatewayVirtualInterfaceGroupsResult,
            DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder> {
  factory DescribeLocalGatewayVirtualInterfaceGroupsResult({
    List<LocalGatewayVirtualInterfaceGroup>? localGatewayVirtualInterfaceGroups,
    String? nextToken,
  }) {
    return _$DescribeLocalGatewayVirtualInterfaceGroupsResult._(
      localGatewayVirtualInterfaceGroups:
          localGatewayVirtualInterfaceGroups == null
              ? null
              : _i2.BuiltList(localGatewayVirtualInterfaceGroups),
      nextToken: nextToken,
    );
  }

  factory DescribeLocalGatewayVirtualInterfaceGroupsResult.build(
      [void Function(DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder)
          updates]) = _$DescribeLocalGatewayVirtualInterfaceGroupsResult;

  const DescribeLocalGatewayVirtualInterfaceGroupsResult._();

  /// Constructs a [DescribeLocalGatewayVirtualInterfaceGroupsResult] from a [payload] and [response].
  factory DescribeLocalGatewayVirtualInterfaceGroupsResult.fromResponse(
    DescribeLocalGatewayVirtualInterfaceGroupsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3
          .SmithySerializer<DescribeLocalGatewayVirtualInterfaceGroupsResult>>
      serializers = [
    DescribeLocalGatewayVirtualInterfaceGroupsResultEc2QuerySerializer()
  ];

  /// The virtual interface groups.
  _i2.BuiltList<LocalGatewayVirtualInterfaceGroup>?
      get localGatewayVirtualInterfaceGroups;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        localGatewayVirtualInterfaceGroups,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeLocalGatewayVirtualInterfaceGroupsResult')
      ..add(
        'localGatewayVirtualInterfaceGroups',
        localGatewayVirtualInterfaceGroups,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeLocalGatewayVirtualInterfaceGroupsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DescribeLocalGatewayVirtualInterfaceGroupsResult> {
  const DescribeLocalGatewayVirtualInterfaceGroupsResultEc2QuerySerializer()
      : super('DescribeLocalGatewayVirtualInterfaceGroupsResult');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewayVirtualInterfaceGroupsResult,
        _$DescribeLocalGatewayVirtualInterfaceGroupsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewayVirtualInterfaceGroupsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'localGatewayVirtualInterfaceGroupSet':
          result.localGatewayVirtualInterfaceGroups
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LocalGatewayVirtualInterfaceGroup)],
            ),
          ) as _i2.BuiltList<LocalGatewayVirtualInterfaceGroup>));
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
    DescribeLocalGatewayVirtualInterfaceGroupsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeLocalGatewayVirtualInterfaceGroupsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeLocalGatewayVirtualInterfaceGroupsResult(
      :localGatewayVirtualInterfaceGroups,
      :nextToken
    ) = object;
    if (localGatewayVirtualInterfaceGroups != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayVirtualInterfaceGroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          localGatewayVirtualInterfaceGroups,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LocalGatewayVirtualInterfaceGroup)],
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
