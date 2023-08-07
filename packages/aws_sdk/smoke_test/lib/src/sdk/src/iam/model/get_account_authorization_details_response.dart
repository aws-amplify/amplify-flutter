// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.get_account_authorization_details_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/group_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/managed_policy_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/role_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/user_detail.dart';

part 'get_account_authorization_details_response.g.dart';

/// Contains the response to a successful GetAccountAuthorizationDetails request.
abstract class GetAccountAuthorizationDetailsResponse
    with
        _i1.AWSEquatable<GetAccountAuthorizationDetailsResponse>
    implements
        Built<GetAccountAuthorizationDetailsResponse,
            GetAccountAuthorizationDetailsResponseBuilder> {
  /// Contains the response to a successful GetAccountAuthorizationDetails request.
  factory GetAccountAuthorizationDetailsResponse({
    List<UserDetail>? userDetailList,
    List<GroupDetail>? groupDetailList,
    List<RoleDetail>? roleDetailList,
    List<ManagedPolicyDetail>? policies,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$GetAccountAuthorizationDetailsResponse._(
      userDetailList:
          userDetailList == null ? null : _i2.BuiltList(userDetailList),
      groupDetailList:
          groupDetailList == null ? null : _i2.BuiltList(groupDetailList),
      roleDetailList:
          roleDetailList == null ? null : _i2.BuiltList(roleDetailList),
      policies: policies == null ? null : _i2.BuiltList(policies),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  /// Contains the response to a successful GetAccountAuthorizationDetails request.
  factory GetAccountAuthorizationDetailsResponse.build(
      [void Function(GetAccountAuthorizationDetailsResponseBuilder)
          updates]) = _$GetAccountAuthorizationDetailsResponse;

  const GetAccountAuthorizationDetailsResponse._();

  /// Constructs a [GetAccountAuthorizationDetailsResponse] from a [payload] and [response].
  factory GetAccountAuthorizationDetailsResponse.fromResponse(
    GetAccountAuthorizationDetailsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<GetAccountAuthorizationDetailsResponse>>
      serializers = [
    GetAccountAuthorizationDetailsResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAccountAuthorizationDetailsResponseBuilder b) {
    b.isTruncated = false;
  }

  /// A list containing information about IAM users.
  _i2.BuiltList<UserDetail>? get userDetailList;

  /// A list containing information about IAM groups.
  _i2.BuiltList<GroupDetail>? get groupDetailList;

  /// A list containing information about IAM roles.
  _i2.BuiltList<RoleDetail>? get roleDetailList;

  /// A list containing information about managed policies.
  _i2.BuiltList<ManagedPolicyDetail>? get policies;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        userDetailList,
        groupDetailList,
        roleDetailList,
        policies,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetAccountAuthorizationDetailsResponse')
          ..add(
            'userDetailList',
            userDetailList,
          )
          ..add(
            'groupDetailList',
            groupDetailList,
          )
          ..add(
            'roleDetailList',
            roleDetailList,
          )
          ..add(
            'policies',
            policies,
          )
          ..add(
            'isTruncated',
            isTruncated,
          )
          ..add(
            'marker',
            marker,
          );
    return helper.toString();
  }
}

class GetAccountAuthorizationDetailsResponseAwsQuerySerializer extends _i3
    .StructuredSmithySerializer<GetAccountAuthorizationDetailsResponse> {
  const GetAccountAuthorizationDetailsResponseAwsQuerySerializer()
      : super('GetAccountAuthorizationDetailsResponse');

  @override
  Iterable<Type> get types => const [
        GetAccountAuthorizationDetailsResponse,
        _$GetAccountAuthorizationDetailsResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetAccountAuthorizationDetailsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAccountAuthorizationDetailsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserDetailList':
          result.userDetailList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(UserDetail)],
            ),
          ) as _i2.BuiltList<UserDetail>));
        case 'GroupDetailList':
          result.groupDetailList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(GroupDetail)],
            ),
          ) as _i2.BuiltList<GroupDetail>));
        case 'RoleDetailList':
          result.roleDetailList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(RoleDetail)],
            ),
          ) as _i2.BuiltList<RoleDetail>));
        case 'Policies':
          result.policies.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ManagedPolicyDetail)],
            ),
          ) as _i2.BuiltList<ManagedPolicyDetail>));
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Marker':
          result.marker = (serializers.deserialize(
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
    GetAccountAuthorizationDetailsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetAccountAuthorizationDetailsResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetAccountAuthorizationDetailsResponse(
      :userDetailList,
      :groupDetailList,
      :roleDetailList,
      :policies,
      :isTruncated,
      :marker
    ) = object;
    if (userDetailList != null) {
      result$
        ..add(const _i3.XmlElementName('UserDetailList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          userDetailList,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(UserDetail)],
          ),
        ));
    }
    if (groupDetailList != null) {
      result$
        ..add(const _i3.XmlElementName('GroupDetailList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          groupDetailList,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(GroupDetail)],
          ),
        ));
    }
    if (roleDetailList != null) {
      result$
        ..add(const _i3.XmlElementName('RoleDetailList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          roleDetailList,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(RoleDetail)],
          ),
        ));
    }
    if (policies != null) {
      result$
        ..add(const _i3.XmlElementName('Policies'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          policies,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ManagedPolicyDetail)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (marker != null) {
      result$
        ..add(const _i3.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
