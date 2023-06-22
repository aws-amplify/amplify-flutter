// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_integration_test.cognito_identity_provider.model.admin_list_user_auth_events_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/auth_event_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'admin_list_user_auth_events_response.g.dart';

abstract class AdminListUserAuthEventsResponse
    with
        _i1.AWSEquatable<AdminListUserAuthEventsResponse>
    implements
        Built<AdminListUserAuthEventsResponse,
            AdminListUserAuthEventsResponseBuilder> {
  factory AdminListUserAuthEventsResponse({
    List<_i2.AuthEventType>? authEvents,
    String? nextToken,
  }) {
    return _$AdminListUserAuthEventsResponse._(
      authEvents: authEvents == null ? null : _i3.BuiltList(authEvents),
      nextToken: nextToken,
    );
  }

  factory AdminListUserAuthEventsResponse.build(
          [void Function(AdminListUserAuthEventsResponseBuilder) updates]) =
      _$AdminListUserAuthEventsResponse;

  const AdminListUserAuthEventsResponse._();

  /// Constructs a [AdminListUserAuthEventsResponse] from a [payload] and [response].
  factory AdminListUserAuthEventsResponse.fromResponse(
    AdminListUserAuthEventsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<AdminListUserAuthEventsResponse>>
      serializers = [AdminListUserAuthEventsResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AdminListUserAuthEventsResponseBuilder b) {}

  /// The response object. It includes the `EventID`, `EventType`, `CreationDate`, `EventRisk`, and `EventResponse`.
  _i3.BuiltList<_i2.AuthEventType>? get authEvents;

  /// A pagination token.
  String? get nextToken;
  @override
  List<Object?> get props => [
        authEvents,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AdminListUserAuthEventsResponse')
          ..add(
            'authEvents',
            authEvents,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class AdminListUserAuthEventsResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<AdminListUserAuthEventsResponse> {
  const AdminListUserAuthEventsResponseAwsJson11Serializer()
      : super('AdminListUserAuthEventsResponse');

  @override
  Iterable<Type> get types => const [
        AdminListUserAuthEventsResponse,
        _$AdminListUserAuthEventsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AdminListUserAuthEventsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminListUserAuthEventsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AuthEvents':
          result.authEvents.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.AuthEventType)],
            ),
          ) as _i3.BuiltList<_i2.AuthEventType>));
        case 'NextToken':
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
    AdminListUserAuthEventsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AdminListUserAuthEventsResponse(:authEvents, :nextToken) = object;
    if (authEvents != null) {
      result$
        ..add('AuthEvents')
        ..add(serializers.serialize(
          authEvents,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.AuthEventType)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
