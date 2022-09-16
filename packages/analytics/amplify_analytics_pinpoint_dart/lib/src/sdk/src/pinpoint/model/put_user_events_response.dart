// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.put_user_events_response;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_events_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'put_user_events_response.g.dart';

abstract class PutUserEventsResponse
    with _i1.AWSEquatable<PutUserEventsResponse>
    implements
        Built<PutUserEventsResponse, PutUserEventsResponseBuilder>,
        _i2.HasPayload<_i3.UserEventsResponse> {
  factory PutUserEventsResponse(
      {required _i3.UserEventsResponse userEventsResponse}) {
    return _$PutUserEventsResponse._(userEventsResponse: userEventsResponse);
  }

  factory PutUserEventsResponse.build(
          [void Function(PutUserEventsResponseBuilder) updates]) =
      _$PutUserEventsResponse;

  const PutUserEventsResponse._();

  /// Constructs a [PutUserEventsResponse] from a [payload] and [response].
  factory PutUserEventsResponse.fromResponse(
          _i3.UserEventsResponse payload, _i1.AWSBaseHttpResponse response) =>
      PutUserEventsResponse.build((b) {
        b.userEventsResponse.replace(payload);
      });

  static const List<_i2.SmithySerializer> serializers = [
    _PutUserEventsResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutUserEventsResponseBuilder b) {}
  _i3.UserEventsResponse get userEventsResponse;
  @override
  _i3.UserEventsResponse getPayload() => userEventsResponse;
  @override
  List<Object?> get props => [userEventsResponse];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutUserEventsResponse');
    helper.add('userEventsResponse', userEventsResponse);
    return helper.toString();
  }
}

class _PutUserEventsResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<Object> {
  const _PutUserEventsResponseRestJson1Serializer()
      : super('PutUserEventsResponse');

  @override
  Iterable<Type> get types =>
      const [PutUserEventsResponse, _$PutUserEventsResponse];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i3.UserEventsResponse deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
            specifiedType: const FullType(_i3.UserEventsResponse))
        as _i3.UserEventsResponse);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is PutUserEventsResponse
        ? object.getPayload()
        : (object as _i3.UserEventsResponse);
    return (serializers.serialize(payload,
        specifiedType: const FullType(_i3.UserEventsResponse)) as Object);
  }
}
