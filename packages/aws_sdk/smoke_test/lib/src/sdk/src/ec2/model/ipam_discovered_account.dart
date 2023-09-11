// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_discovered_account; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_discovery_failure_reason.dart';

part 'ipam_discovered_account.g.dart';

/// An IPAM discovered account. A discovered account is an Amazon Web Services account that is monitored under a resource discovery. If you have integrated IPAM with Amazon Web Services Organizations, all accounts in the organization are discovered accounts.
abstract class IpamDiscoveredAccount
    with _i1.AWSEquatable<IpamDiscoveredAccount>
    implements Built<IpamDiscoveredAccount, IpamDiscoveredAccountBuilder> {
  /// An IPAM discovered account. A discovered account is an Amazon Web Services account that is monitored under a resource discovery. If you have integrated IPAM with Amazon Web Services Organizations, all accounts in the organization are discovered accounts.
  factory IpamDiscoveredAccount({
    String? accountId,
    String? discoveryRegion,
    IpamDiscoveryFailureReason? failureReason,
    DateTime? lastAttemptedDiscoveryTime,
    DateTime? lastSuccessfulDiscoveryTime,
  }) {
    return _$IpamDiscoveredAccount._(
      accountId: accountId,
      discoveryRegion: discoveryRegion,
      failureReason: failureReason,
      lastAttemptedDiscoveryTime: lastAttemptedDiscoveryTime,
      lastSuccessfulDiscoveryTime: lastSuccessfulDiscoveryTime,
    );
  }

  /// An IPAM discovered account. A discovered account is an Amazon Web Services account that is monitored under a resource discovery. If you have integrated IPAM with Amazon Web Services Organizations, all accounts in the organization are discovered accounts.
  factory IpamDiscoveredAccount.build(
          [void Function(IpamDiscoveredAccountBuilder) updates]) =
      _$IpamDiscoveredAccount;

  const IpamDiscoveredAccount._();

  static const List<_i2.SmithySerializer<IpamDiscoveredAccount>> serializers = [
    IpamDiscoveredAccountEc2QuerySerializer()
  ];

  /// The account ID.
  String? get accountId;

  /// The Amazon Web Services Region that the account information is returned from. An account can be discovered in multiple regions and will have a separate discovered account for each Region.
  String? get discoveryRegion;

  /// The resource discovery failure reason.
  IpamDiscoveryFailureReason? get failureReason;

  /// The last attempted resource discovery time.
  DateTime? get lastAttemptedDiscoveryTime;

  /// The last successful resource discovery time.
  DateTime? get lastSuccessfulDiscoveryTime;
  @override
  List<Object?> get props => [
        accountId,
        discoveryRegion,
        failureReason,
        lastAttemptedDiscoveryTime,
        lastSuccessfulDiscoveryTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamDiscoveredAccount')
      ..add(
        'accountId',
        accountId,
      )
      ..add(
        'discoveryRegion',
        discoveryRegion,
      )
      ..add(
        'failureReason',
        failureReason,
      )
      ..add(
        'lastAttemptedDiscoveryTime',
        lastAttemptedDiscoveryTime,
      )
      ..add(
        'lastSuccessfulDiscoveryTime',
        lastSuccessfulDiscoveryTime,
      );
    return helper.toString();
  }
}

class IpamDiscoveredAccountEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IpamDiscoveredAccount> {
  const IpamDiscoveredAccountEc2QuerySerializer()
      : super('IpamDiscoveredAccount');

  @override
  Iterable<Type> get types => const [
        IpamDiscoveredAccount,
        _$IpamDiscoveredAccount,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamDiscoveredAccount deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamDiscoveredAccountBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'accountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'discoveryRegion':
          result.discoveryRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'failureReason':
          result.failureReason.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IpamDiscoveryFailureReason),
          ) as IpamDiscoveryFailureReason));
        case 'lastAttemptedDiscoveryTime':
          result.lastAttemptedDiscoveryTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'lastSuccessfulDiscoveryTime':
          result.lastSuccessfulDiscoveryTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IpamDiscoveredAccount object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IpamDiscoveredAccountResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamDiscoveredAccount(
      :accountId,
      :discoveryRegion,
      :failureReason,
      :lastAttemptedDiscoveryTime,
      :lastSuccessfulDiscoveryTime
    ) = object;
    if (accountId != null) {
      result$
        ..add(const _i2.XmlElementName('AccountId'))
        ..add(serializers.serialize(
          accountId,
          specifiedType: const FullType(String),
        ));
    }
    if (discoveryRegion != null) {
      result$
        ..add(const _i2.XmlElementName('DiscoveryRegion'))
        ..add(serializers.serialize(
          discoveryRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (failureReason != null) {
      result$
        ..add(const _i2.XmlElementName('FailureReason'))
        ..add(serializers.serialize(
          failureReason,
          specifiedType: const FullType(IpamDiscoveryFailureReason),
        ));
    }
    if (lastAttemptedDiscoveryTime != null) {
      result$
        ..add(const _i2.XmlElementName('LastAttemptedDiscoveryTime'))
        ..add(serializers.serialize(
          lastAttemptedDiscoveryTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (lastSuccessfulDiscoveryTime != null) {
      result$
        ..add(const _i2.XmlElementName('LastSuccessfulDiscoveryTime'))
        ..add(serializers.serialize(
          lastSuccessfulDiscoveryTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
