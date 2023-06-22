// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_account_authorization_details_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/iam/model/group_detail.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/managed_policy_detail.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/role_detail.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/user_detail.dart' as _i2;

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
    List<_i2.UserDetail>? userDetailList,
    List<_i3.GroupDetail>? groupDetailList,
    List<_i4.RoleDetail>? roleDetailList,
    List<_i5.ManagedPolicyDetail>? policies,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$GetAccountAuthorizationDetailsResponse._(
      userDetailList:
          userDetailList == null ? null : _i6.BuiltList(userDetailList),
      groupDetailList:
          groupDetailList == null ? null : _i6.BuiltList(groupDetailList),
      roleDetailList:
          roleDetailList == null ? null : _i6.BuiltList(roleDetailList),
      policies: policies == null ? null : _i6.BuiltList(policies),
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
          _i7.SmithySerializer<GetAccountAuthorizationDetailsResponse>>
      serializers = [
    GetAccountAuthorizationDetailsResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAccountAuthorizationDetailsResponseBuilder b) {
    b.isTruncated = false;
  }

  /// A list containing information about IAM users.
  _i6.BuiltList<_i2.UserDetail>? get userDetailList;

  /// A list containing information about IAM groups.
  _i6.BuiltList<_i3.GroupDetail>? get groupDetailList;

  /// A list containing information about IAM roles.
  _i6.BuiltList<_i4.RoleDetail>? get roleDetailList;

  /// A list containing information about managed policies.
  _i6.BuiltList<_i5.ManagedPolicyDetail>? get policies;

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

class GetAccountAuthorizationDetailsResponseAwsQuerySerializer extends _i7
    .StructuredSmithySerializer<GetAccountAuthorizationDetailsResponse> {
  const GetAccountAuthorizationDetailsResponseAwsQuerySerializer()
      : super('GetAccountAuthorizationDetailsResponse');

  @override
  Iterable<Type> get types => const [
        GetAccountAuthorizationDetailsResponse,
        _$GetAccountAuthorizationDetailsResponse,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
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
          result.userDetailList.replace((const _i7.XmlBuiltListSerializer(
                  indexer: _i7.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i2.UserDetail)],
            ),
          ) as _i6.BuiltList<_i2.UserDetail>));
        case 'GroupDetailList':
          result.groupDetailList.replace((const _i7.XmlBuiltListSerializer(
                  indexer: _i7.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i3.GroupDetail)],
            ),
          ) as _i6.BuiltList<_i3.GroupDetail>));
        case 'RoleDetailList':
          result.roleDetailList.replace((const _i7.XmlBuiltListSerializer(
                  indexer: _i7.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i4.RoleDetail)],
            ),
          ) as _i6.BuiltList<_i4.RoleDetail>));
        case 'Policies':
          result.policies.replace((const _i7.XmlBuiltListSerializer(
                  indexer: _i7.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i5.ManagedPolicyDetail)],
            ),
          ) as _i6.BuiltList<_i5.ManagedPolicyDetail>));
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
      const _i7.XmlElementName(
        'GetAccountAuthorizationDetailsResponseResponse',
        _i7.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
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
        ..add(const _i7.XmlElementName('UserDetailList'))
        ..add(const _i7.XmlBuiltListSerializer(
                indexer: _i7.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          userDetailList,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i2.UserDetail)],
          ),
        ));
    }
    if (groupDetailList != null) {
      result$
        ..add(const _i7.XmlElementName('GroupDetailList'))
        ..add(const _i7.XmlBuiltListSerializer(
                indexer: _i7.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          groupDetailList,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.GroupDetail)],
          ),
        ));
    }
    if (roleDetailList != null) {
      result$
        ..add(const _i7.XmlElementName('RoleDetailList'))
        ..add(const _i7.XmlBuiltListSerializer(
                indexer: _i7.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          roleDetailList,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i4.RoleDetail)],
          ),
        ));
    }
    if (policies != null) {
      result$
        ..add(const _i7.XmlElementName('Policies'))
        ..add(const _i7.XmlBuiltListSerializer(
                indexer: _i7.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          policies,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.ManagedPolicyDetail)],
          ),
        ));
    }
    result$
      ..add(const _i7.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (marker != null) {
      result$
        ..add(const _i7.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
