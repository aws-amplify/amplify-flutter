// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.deployment_targets; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_filter_type.dart'
    as _i2;

part 'deployment_targets.g.dart';

/// \[Service-managed permissions\] The Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization.
///
/// For update operations, you can specify either `Accounts` or `OrganizationalUnitIds`. For create and delete operations, specify `OrganizationalUnitIds`.
abstract class DeploymentTargets
    with _i1.AWSEquatable<DeploymentTargets>
    implements Built<DeploymentTargets, DeploymentTargetsBuilder> {
  /// \[Service-managed permissions\] The Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization.
  ///
  /// For update operations, you can specify either `Accounts` or `OrganizationalUnitIds`. For create and delete operations, specify `OrganizationalUnitIds`.
  factory DeploymentTargets({
    List<String>? accounts,
    String? accountsUrl,
    List<String>? organizationalUnitIds,
    _i2.AccountFilterType? accountFilterType,
  }) {
    return _$DeploymentTargets._(
      accounts: accounts == null ? null : _i3.BuiltList(accounts),
      accountsUrl: accountsUrl,
      organizationalUnitIds: organizationalUnitIds == null
          ? null
          : _i3.BuiltList(organizationalUnitIds),
      accountFilterType: accountFilterType,
    );
  }

  /// \[Service-managed permissions\] The Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization.
  ///
  /// For update operations, you can specify either `Accounts` or `OrganizationalUnitIds`. For create and delete operations, specify `OrganizationalUnitIds`.
  factory DeploymentTargets.build(
      [void Function(DeploymentTargetsBuilder) updates]) = _$DeploymentTargets;

  const DeploymentTargets._();

  static const List<_i4.SmithySerializer<DeploymentTargets>> serializers = [
    DeploymentTargetsAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeploymentTargetsBuilder b) {}

  /// The names of one or more Amazon Web Services accounts for which you want to deploy stack set updates.
  _i3.BuiltList<String>? get accounts;

  /// Returns the value of the `AccountsUrl` property.
  String? get accountsUrl;

  /// The organization root ID or organizational unit (OU) IDs to which StackSets deploys.
  _i3.BuiltList<String>? get organizationalUnitIds;

  /// Limit deployment targets to individual accounts or include additional accounts with provided OUs.
  ///
  /// The following is a list of possible values for the `AccountFilterType` operation.
  ///
  /// *   `INTERSECTION`: StackSets deploys to the accounts specified in `Accounts` parameter.
  ///
  /// *   `DIFFERENCE`: StackSets excludes the accounts specified in `Accounts` parameter. This enables user to avoid certain accounts within an OU such as suspended accounts.
  ///
  /// *   `UNION`: StackSets includes additional accounts deployment targets.
  ///
  ///     This is the default value if `AccountFilterType` is not provided. This enables user to update an entire OU and individual accounts from a different OU in one request, which used to be two separate requests.
  ///
  /// *   `NONE`: Deploys to all the accounts in specified organizational units (OU).
  _i2.AccountFilterType? get accountFilterType;
  @override
  List<Object?> get props => [
        accounts,
        accountsUrl,
        organizationalUnitIds,
        accountFilterType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeploymentTargets')
      ..add(
        'accounts',
        accounts,
      )
      ..add(
        'accountsUrl',
        accountsUrl,
      )
      ..add(
        'organizationalUnitIds',
        organizationalUnitIds,
      )
      ..add(
        'accountFilterType',
        accountFilterType,
      );
    return helper.toString();
  }
}

class DeploymentTargetsAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<DeploymentTargets> {
  const DeploymentTargetsAwsQuerySerializer() : super('DeploymentTargets');

  @override
  Iterable<Type> get types => const [
        DeploymentTargets,
        _$DeploymentTargets,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeploymentTargets deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeploymentTargetsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Accounts':
          result.accounts.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'AccountsUrl':
          result.accountsUrl = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OrganizationalUnitIds':
          result.organizationalUnitIds.replace(
              (const _i4.XmlBuiltListSerializer(
                      indexer: _i4.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'AccountFilterType':
          result.accountFilterType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AccountFilterType),
          ) as _i2.AccountFilterType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeploymentTargets object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'DeploymentTargetsResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DeploymentTargets(
      :accounts,
      :accountsUrl,
      :organizationalUnitIds,
      :accountFilterType
    ) = object;
    if (accounts != null) {
      result$
        ..add(const _i4.XmlElementName('Accounts'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          accounts,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (accountsUrl != null) {
      result$
        ..add(const _i4.XmlElementName('AccountsUrl'))
        ..add(serializers.serialize(
          accountsUrl,
          specifiedType: const FullType(String),
        ));
    }
    if (organizationalUnitIds != null) {
      result$
        ..add(const _i4.XmlElementName('OrganizationalUnitIds'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          organizationalUnitIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (accountFilterType != null) {
      result$
        ..add(const _i4.XmlElementName('AccountFilterType'))
        ..add(serializers.serialize(
          accountFilterType,
          specifiedType: const FullType.nullable(_i2.AccountFilterType),
        ));
    }
    return result$;
  }
}
