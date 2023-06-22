// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_access_key_last_used_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/access_key_last_used.dart'
    as _i2;

part 'get_access_key_last_used_response.g.dart';

/// Contains the response to a successful GetAccessKeyLastUsed request. It is also returned as a member of the AccessKeyMetaData structure returned by the ListAccessKeys action.
abstract class GetAccessKeyLastUsedResponse
    with
        _i1.AWSEquatable<GetAccessKeyLastUsedResponse>
    implements
        Built<GetAccessKeyLastUsedResponse,
            GetAccessKeyLastUsedResponseBuilder> {
  /// Contains the response to a successful GetAccessKeyLastUsed request. It is also returned as a member of the AccessKeyMetaData structure returned by the ListAccessKeys action.
  factory GetAccessKeyLastUsedResponse({
    String? userName,
    _i2.AccessKeyLastUsed? accessKeyLastUsed,
  }) {
    return _$GetAccessKeyLastUsedResponse._(
      userName: userName,
      accessKeyLastUsed: accessKeyLastUsed,
    );
  }

  /// Contains the response to a successful GetAccessKeyLastUsed request. It is also returned as a member of the AccessKeyMetaData structure returned by the ListAccessKeys action.
  factory GetAccessKeyLastUsedResponse.build(
          [void Function(GetAccessKeyLastUsedResponseBuilder) updates]) =
      _$GetAccessKeyLastUsedResponse;

  const GetAccessKeyLastUsedResponse._();

  /// Constructs a [GetAccessKeyLastUsedResponse] from a [payload] and [response].
  factory GetAccessKeyLastUsedResponse.fromResponse(
    GetAccessKeyLastUsedResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetAccessKeyLastUsedResponse>>
      serializers = [GetAccessKeyLastUsedResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAccessKeyLastUsedResponseBuilder b) {}

  /// The name of the IAM user that owns this access key.
  String? get userName;

  /// Contains information about the last time the access key was used.
  _i2.AccessKeyLastUsed? get accessKeyLastUsed;
  @override
  List<Object?> get props => [
        userName,
        accessKeyLastUsed,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetAccessKeyLastUsedResponse')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'accessKeyLastUsed',
        accessKeyLastUsed,
      );
    return helper.toString();
  }
}

class GetAccessKeyLastUsedResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GetAccessKeyLastUsedResponse> {
  const GetAccessKeyLastUsedResponseAwsQuerySerializer()
      : super('GetAccessKeyLastUsedResponse');

  @override
  Iterable<Type> get types => const [
        GetAccessKeyLastUsedResponse,
        _$GetAccessKeyLastUsedResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetAccessKeyLastUsedResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAccessKeyLastUsedResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserName':
          result.userName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AccessKeyLastUsed':
          result.accessKeyLastUsed.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AccessKeyLastUsed),
          ) as _i2.AccessKeyLastUsed));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetAccessKeyLastUsedResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetAccessKeyLastUsedResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetAccessKeyLastUsedResponse(:userName, :accessKeyLastUsed) = object;
    if (userName != null) {
      result$
        ..add(const _i3.XmlElementName('UserName'))
        ..add(serializers.serialize(
          userName,
          specifiedType: const FullType(String),
        ));
    }
    if (accessKeyLastUsed != null) {
      result$
        ..add(const _i3.XmlElementName('AccessKeyLastUsed'))
        ..add(serializers.serialize(
          accessKeyLastUsed,
          specifiedType: const FullType(_i2.AccessKeyLastUsed),
        ));
    }
    return result$;
  }
}
