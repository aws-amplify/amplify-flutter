// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_integration_test.cognito_identity_provider.model.admin_list_user_auth_events_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'admin_list_user_auth_events_request.g.dart';

abstract class AdminListUserAuthEventsRequest
    with
        _i1.HttpInput<AdminListUserAuthEventsRequest>,
        _i2.AWSEquatable<AdminListUserAuthEventsRequest>
    implements
        Built<AdminListUserAuthEventsRequest,
            AdminListUserAuthEventsRequestBuilder> {
  factory AdminListUserAuthEventsRequest({
    required String userPoolId,
    required String username,
    int? maxResults,
    String? nextToken,
  }) {
    return _$AdminListUserAuthEventsRequest._(
      userPoolId: userPoolId,
      username: username,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory AdminListUserAuthEventsRequest.build(
          [void Function(AdminListUserAuthEventsRequestBuilder) updates]) =
      _$AdminListUserAuthEventsRequest;

  const AdminListUserAuthEventsRequest._();

  factory AdminListUserAuthEventsRequest.fromRequest(
    AdminListUserAuthEventsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AdminListUserAuthEventsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AdminListUserAuthEventsRequestBuilder b) {}

  /// The user pool ID.
  String get userPoolId;

  /// The user pool username or an alias.
  String get username;

  /// The maximum number of authentication events to return. Returns 60 events if you set `MaxResults` to 0, or if you don't include a `MaxResults` parameter.
  int? get maxResults;

  /// A pagination token.
  String? get nextToken;
  @override
  AdminListUserAuthEventsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userPoolId,
        username,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AdminListUserAuthEventsRequest');
    helper.add(
      'userPoolId',
      userPoolId,
    );
    helper.add(
      'username',
      '***SENSITIVE***',
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class AdminListUserAuthEventsRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<AdminListUserAuthEventsRequest> {
  const AdminListUserAuthEventsRequestAwsJson11Serializer()
      : super('AdminListUserAuthEventsRequest');

  @override
  Iterable<Type> get types => const [
        AdminListUserAuthEventsRequest,
        _$AdminListUserAuthEventsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AdminListUserAuthEventsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminListUserAuthEventsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'UserPoolId':
          result.userPoolId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Username':
          result.username = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'MaxResults':
          if (value != null) {
            result.maxResults = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as AdminListUserAuthEventsRequest);
    final result = <Object?>[
      'UserPoolId',
      serializers.serialize(
        payload.userPoolId,
        specifiedType: const FullType(String),
      ),
      'Username',
      serializers.serialize(
        payload.username,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.maxResults != null) {
      result
        ..add('MaxResults')
        ..add(serializers.serialize(
          payload.maxResults!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
