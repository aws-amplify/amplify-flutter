// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_network_interfaces_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface.dart';

part 'describe_network_interfaces_result.g.dart';

abstract class DescribeNetworkInterfacesResult
    with
        _i1.AWSEquatable<DescribeNetworkInterfacesResult>
    implements
        Built<DescribeNetworkInterfacesResult,
            DescribeNetworkInterfacesResultBuilder> {
  factory DescribeNetworkInterfacesResult({
    List<NetworkInterface>? networkInterfaces,
    String? nextToken,
  }) {
    return _$DescribeNetworkInterfacesResult._(
      networkInterfaces:
          networkInterfaces == null ? null : _i2.BuiltList(networkInterfaces),
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkInterfacesResult.build(
          [void Function(DescribeNetworkInterfacesResultBuilder) updates]) =
      _$DescribeNetworkInterfacesResult;

  const DescribeNetworkInterfacesResult._();

  /// Constructs a [DescribeNetworkInterfacesResult] from a [payload] and [response].
  factory DescribeNetworkInterfacesResult.fromResponse(
    DescribeNetworkInterfacesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeNetworkInterfacesResult>>
      serializers = [DescribeNetworkInterfacesResultEc2QuerySerializer()];

  /// Information about one or more network interfaces.
  _i2.BuiltList<NetworkInterface>? get networkInterfaces;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkInterfaces,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeNetworkInterfacesResult')
          ..add(
            'networkInterfaces',
            networkInterfaces,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeNetworkInterfacesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeNetworkInterfacesResult> {
  const DescribeNetworkInterfacesResultEc2QuerySerializer()
      : super('DescribeNetworkInterfacesResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInterfacesResult,
        _$DescribeNetworkInterfacesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInterfacesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInterfacesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInterfaceSet':
          result.networkInterfaces.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(NetworkInterface)],
            ),
          ) as _i2.BuiltList<NetworkInterface>));
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
    DescribeNetworkInterfacesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeNetworkInterfacesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkInterfacesResult(:networkInterfaces, :nextToken) =
        object;
    if (networkInterfaces != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfaceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfaces,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(NetworkInterface)],
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
