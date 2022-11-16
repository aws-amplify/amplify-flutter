// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_events_response;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_events_item_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'user_events_response.g.dart';

abstract class UserEventsResponse
    with _i1.AWSEquatable<UserEventsResponse>
    implements Built<UserEventsResponse, UserEventsResponseBuilder> {
  factory UserEventsResponse(
      {_i2.BuiltMap<String, _i3.UserEventsItemResponse>? results}) {
    return _$UserEventsResponse._(results: results);
  }

  factory UserEventsResponse.build(
          [void Function(UserEventsResponseBuilder) updates]) =
      _$UserEventsResponse;

  const UserEventsResponse._();

  static const List<_i4.SmithySerializer> serializers = [
    _UserEventsResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserEventsResponseBuilder b) {}
  _i2.BuiltMap<String, _i3.UserEventsItemResponse>? get results;
  @override
  List<Object?> get props => [results];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserEventsResponse');
    helper.add('results', results);
    return helper.toString();
  }
}

class _UserEventsResponseRestJson1Serializer
    extends _i4.StructuredSmithySerializer<UserEventsResponse> {
  const _UserEventsResponseRestJson1Serializer() : super('UserEventsResponse');

  @override
  Iterable<Type> get types => const [UserEventsResponse, _$UserEventsResponse];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UserEventsResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserEventsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Results':
          if (value != null) {
            result.results.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i2.BuiltMap, [
                  FullType(String),
                  FullType(_i3.UserEventsItemResponse)
                ])) as _i2.BuiltMap<String, _i3.UserEventsItemResponse>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UserEventsResponse);
    final result = <Object?>[];
    if (payload.results != null) {
      result
        ..add('Results')
        ..add(serializers.serialize(payload.results!,
            specifiedType: const FullType(_i2.BuiltMap,
                [FullType(String), FullType(_i3.UserEventsItemResponse)])));
    }
    return result;
  }
}
