// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_group_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/group.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/user.dart' as _i3;

part 'get_group_response.g.dart';

/// Contains the response to a successful GetGroup request.
abstract class GetGroupResponse
    with _i1.AWSEquatable<GetGroupResponse>
    implements Built<GetGroupResponse, GetGroupResponseBuilder> {
  /// Contains the response to a successful GetGroup request.
  factory GetGroupResponse({
    required _i2.Group group,
    required List<_i3.User> users,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$GetGroupResponse._(
      group: group,
      users: _i4.BuiltList(users),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  /// Contains the response to a successful GetGroup request.
  factory GetGroupResponse.build(
      [void Function(GetGroupResponseBuilder) updates]) = _$GetGroupResponse;

  const GetGroupResponse._();

  /// Constructs a [GetGroupResponse] from a [payload] and [response].
  factory GetGroupResponse.fromResponse(
    GetGroupResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer<GetGroupResponse>> serializers = [
    GetGroupResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetGroupResponseBuilder b) {
    b.isTruncated = false;
  }

  /// A structure that contains details about the group.
  _i2.Group get group;

  /// A list of users in the group.
  _i4.BuiltList<_i3.User> get users;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        group,
        users,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetGroupResponse')
      ..add(
        'group',
        group,
      )
      ..add(
        'users',
        users,
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

class GetGroupResponseAwsQuerySerializer
    extends _i5.StructuredSmithySerializer<GetGroupResponse> {
  const GetGroupResponseAwsQuerySerializer() : super('GetGroupResponse');

  @override
  Iterable<Type> get types => const [
        GetGroupResponse,
        _$GetGroupResponse,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetGroupResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetGroupResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Group':
          result.group.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Group),
          ) as _i2.Group));
        case 'Users':
          result.users.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.User)],
            ),
          ) as _i4.BuiltList<_i3.User>));
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
    GetGroupResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'GetGroupResponseResponse',
        _i5.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetGroupResponse(:group, :users, :isTruncated, :marker) = object;
    result$
      ..add(const _i5.XmlElementName('Group'))
      ..add(serializers.serialize(
        group,
        specifiedType: const FullType(_i2.Group),
      ));
    result$
      ..add(const _i5.XmlElementName('Users'))
      ..add(
          const _i5.XmlBuiltListSerializer(indexer: _i5.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        users,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(_i3.User)],
        ),
      ));
    result$
      ..add(const _i5.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (marker != null) {
      result$
        ..add(const _i5.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
