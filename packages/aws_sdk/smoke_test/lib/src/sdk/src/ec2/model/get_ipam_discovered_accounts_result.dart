// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_ipam_discovered_accounts_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_discovered_account.dart';

part 'get_ipam_discovered_accounts_result.g.dart';

abstract class GetIpamDiscoveredAccountsResult
    with
        _i1.AWSEquatable<GetIpamDiscoveredAccountsResult>
    implements
        Built<GetIpamDiscoveredAccountsResult,
            GetIpamDiscoveredAccountsResultBuilder> {
  factory GetIpamDiscoveredAccountsResult({
    List<IpamDiscoveredAccount>? ipamDiscoveredAccounts,
    String? nextToken,
  }) {
    return _$GetIpamDiscoveredAccountsResult._(
      ipamDiscoveredAccounts: ipamDiscoveredAccounts == null
          ? null
          : _i2.BuiltList(ipamDiscoveredAccounts),
      nextToken: nextToken,
    );
  }

  factory GetIpamDiscoveredAccountsResult.build(
          [void Function(GetIpamDiscoveredAccountsResultBuilder) updates]) =
      _$GetIpamDiscoveredAccountsResult;

  const GetIpamDiscoveredAccountsResult._();

  /// Constructs a [GetIpamDiscoveredAccountsResult] from a [payload] and [response].
  factory GetIpamDiscoveredAccountsResult.fromResponse(
    GetIpamDiscoveredAccountsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetIpamDiscoveredAccountsResult>>
      serializers = [GetIpamDiscoveredAccountsResultEc2QuerySerializer()];

  /// Discovered accounts.
  _i2.BuiltList<IpamDiscoveredAccount>? get ipamDiscoveredAccounts;

  /// Specify the pagination token from a previous request to retrieve the next page of results.
  String? get nextToken;
  @override
  List<Object?> get props => [
        ipamDiscoveredAccounts,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetIpamDiscoveredAccountsResult')
          ..add(
            'ipamDiscoveredAccounts',
            ipamDiscoveredAccounts,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class GetIpamDiscoveredAccountsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GetIpamDiscoveredAccountsResult> {
  const GetIpamDiscoveredAccountsResultEc2QuerySerializer()
      : super('GetIpamDiscoveredAccountsResult');

  @override
  Iterable<Type> get types => const [
        GetIpamDiscoveredAccountsResult,
        _$GetIpamDiscoveredAccountsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamDiscoveredAccountsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamDiscoveredAccountsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamDiscoveredAccountSet':
          result.ipamDiscoveredAccounts
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpamDiscoveredAccount)],
            ),
          ) as _i2.BuiltList<IpamDiscoveredAccount>));
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
    GetIpamDiscoveredAccountsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetIpamDiscoveredAccountsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetIpamDiscoveredAccountsResult(:ipamDiscoveredAccounts, :nextToken) =
        object;
    if (ipamDiscoveredAccounts != null) {
      result$
        ..add(const _i3.XmlElementName('IpamDiscoveredAccountSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipamDiscoveredAccounts,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IpamDiscoveredAccount)],
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
