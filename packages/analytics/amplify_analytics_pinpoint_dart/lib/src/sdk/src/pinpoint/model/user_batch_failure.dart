// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_batch_failure;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'user_batch_failure.g.dart';

abstract class UserBatchFailure
    with _i1.AWSEquatable<UserBatchFailure>
    implements Built<UserBatchFailure, UserBatchFailureBuilder> {
  factory UserBatchFailure({String? message, String? status, String? userId}) {
    return _$UserBatchFailure._(
        message: message, status: status, userId: userId);
  }

  factory UserBatchFailure.build(
      [void Function(UserBatchFailureBuilder) updates]) = _$UserBatchFailure;

  const UserBatchFailure._();

  static const List<_i2.SmithySerializer> serializers = [
    _UserBatchFailureRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserBatchFailureBuilder b) {}
  String? get message;
  String? get status;
  String? get userId;
  @override
  List<Object?> get props => [message, status, userId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserBatchFailure');
    helper.add('message', message);
    helper.add('status', status);
    helper.add('userId', userId);
    return helper.toString();
  }
}

class _UserBatchFailureRestJson1Serializer
    extends _i2.StructuredSmithySerializer<UserBatchFailure> {
  const _UserBatchFailureRestJson1Serializer() : super('UserBatchFailure');

  @override
  Iterable<Type> get types => const [UserBatchFailure, _$UserBatchFailure];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UserBatchFailure deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserBatchFailureBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'UserId':
          if (value != null) {
            result.userId = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UserBatchFailure);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('Message')
        ..add(serializers.serialize(payload.message!,
            specifiedType: const FullType(String)));
    }
    if (payload.status != null) {
      result
        ..add('Status')
        ..add(serializers.serialize(payload.status!,
            specifiedType: const FullType(String)));
    }
    if (payload.userId != null) {
      result
        ..add('UserId')
        ..add(serializers.serialize(payload.userId!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
