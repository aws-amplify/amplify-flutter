// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_local_gateway_virtual_interfaces_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_virtual_interface.dart';

part 'describe_local_gateway_virtual_interfaces_result.g.dart';

abstract class DescribeLocalGatewayVirtualInterfacesResult
    with
        _i1.AWSEquatable<DescribeLocalGatewayVirtualInterfacesResult>
    implements
        Built<DescribeLocalGatewayVirtualInterfacesResult,
            DescribeLocalGatewayVirtualInterfacesResultBuilder> {
  factory DescribeLocalGatewayVirtualInterfacesResult({
    List<LocalGatewayVirtualInterface>? localGatewayVirtualInterfaces,
    String? nextToken,
  }) {
    return _$DescribeLocalGatewayVirtualInterfacesResult._(
      localGatewayVirtualInterfaces: localGatewayVirtualInterfaces == null
          ? null
          : _i2.BuiltList(localGatewayVirtualInterfaces),
      nextToken: nextToken,
    );
  }

  factory DescribeLocalGatewayVirtualInterfacesResult.build(
      [void Function(DescribeLocalGatewayVirtualInterfacesResultBuilder)
          updates]) = _$DescribeLocalGatewayVirtualInterfacesResult;

  const DescribeLocalGatewayVirtualInterfacesResult._();

  /// Constructs a [DescribeLocalGatewayVirtualInterfacesResult] from a [payload] and [response].
  factory DescribeLocalGatewayVirtualInterfacesResult.fromResponse(
    DescribeLocalGatewayVirtualInterfacesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeLocalGatewayVirtualInterfacesResult>>
      serializers = [
    DescribeLocalGatewayVirtualInterfacesResultEc2QuerySerializer()
  ];

  /// Information about the virtual interfaces.
  _i2.BuiltList<LocalGatewayVirtualInterface>?
      get localGatewayVirtualInterfaces;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        localGatewayVirtualInterfaces,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeLocalGatewayVirtualInterfacesResult')
      ..add(
        'localGatewayVirtualInterfaces',
        localGatewayVirtualInterfaces,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeLocalGatewayVirtualInterfacesResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeLocalGatewayVirtualInterfacesResult> {
  const DescribeLocalGatewayVirtualInterfacesResultEc2QuerySerializer()
      : super('DescribeLocalGatewayVirtualInterfacesResult');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewayVirtualInterfacesResult,
        _$DescribeLocalGatewayVirtualInterfacesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewayVirtualInterfacesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLocalGatewayVirtualInterfacesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'localGatewayVirtualInterfaceSet':
          result.localGatewayVirtualInterfaces
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LocalGatewayVirtualInterface)],
            ),
          ) as _i2.BuiltList<LocalGatewayVirtualInterface>));
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
    DescribeLocalGatewayVirtualInterfacesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeLocalGatewayVirtualInterfacesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeLocalGatewayVirtualInterfacesResult(
      :localGatewayVirtualInterfaces,
      :nextToken
    ) = object;
    if (localGatewayVirtualInterfaces != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayVirtualInterfaceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          localGatewayVirtualInterfaces,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(LocalGatewayVirtualInterface)],
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
