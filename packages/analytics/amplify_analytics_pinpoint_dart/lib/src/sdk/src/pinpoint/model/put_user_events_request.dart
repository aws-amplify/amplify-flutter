// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.put_user_events_request;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_events_request.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'put_user_events_request.g.dart';

abstract class PutUserEventsRequest
    with
        _i1.HttpInput<_i2.UserEventsRequest>,
        _i3.AWSEquatable<PutUserEventsRequest>
    implements
        Built<PutUserEventsRequest, PutUserEventsRequestBuilder>,
        _i1.HasPayload<_i2.UserEventsRequest> {
  factory PutUserEventsRequest(
      {required String applicationId,
      required _i2.UserEventsRequest userEventsRequest}) {
    return _$PutUserEventsRequest._(
        applicationId: applicationId, userEventsRequest: userEventsRequest);
  }

  factory PutUserEventsRequest.build(
          [void Function(PutUserEventsRequestBuilder) updates]) =
      _$PutUserEventsRequest;

  const PutUserEventsRequest._();

  factory PutUserEventsRequest.fromRequest(
          _i2.UserEventsRequest payload, _i3.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      PutUserEventsRequest.build((b) {
        b.userEventsRequest.replace(payload);
        if (labels['applicationId'] != null) {
          b.applicationId = labels['applicationId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    _PutUserEventsRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutUserEventsRequestBuilder b) {}
  String get applicationId;
  _i2.UserEventsRequest get userEventsRequest;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'ApplicationId':
        return applicationId;
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  _i2.UserEventsRequest getPayload() => userEventsRequest;
  @override
  List<Object?> get props => [applicationId, userEventsRequest];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutUserEventsRequest');
    helper.add('applicationId', applicationId);
    helper.add('userEventsRequest', userEventsRequest);
    return helper.toString();
  }
}

class _PutUserEventsRequestRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _PutUserEventsRequestRestJson1Serializer()
      : super('PutUserEventsRequest');

  @override
  Iterable<Type> get types =>
      const [PutUserEventsRequest, _$PutUserEventsRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.UserEventsRequest deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
            specifiedType: const FullType(_i2.UserEventsRequest))
        as _i2.UserEventsRequest);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is PutUserEventsRequest
        ? object.getPayload()
        : (object as _i2.UserEventsRequest);
    return (serializers.serialize(payload,
        specifiedType: const FullType(_i2.UserEventsRequest)) as Object);
  }
}
