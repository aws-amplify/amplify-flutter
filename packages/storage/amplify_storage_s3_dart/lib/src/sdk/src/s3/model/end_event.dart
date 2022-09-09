// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.end_event; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'end_event.g.dart';

/// A message that indicates the request is complete and no more messages will be sent. You should not assume that the request is complete until the client receives an `EndEvent`.
abstract class EndEvent
    with _i1.AWSEquatable<EndEvent>
    implements Built<EndEvent, EndEventBuilder>, _i2.EmptyPayload {
  /// A message that indicates the request is complete and no more messages will be sent. You should not assume that the request is complete until the client receives an `EndEvent`.
  factory EndEvent() {
    return _$EndEvent._();
  }

  /// A message that indicates the request is complete and no more messages will be sent. You should not assume that the request is complete until the client receives an `EndEvent`.
  factory EndEvent.build([void Function(EndEventBuilder) updates]) = _$EndEvent;

  const EndEvent._();

  static const List<_i2.SmithySerializer> serializers = [
    EndEventRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EndEventBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EndEvent');
    return helper.toString();
  }
}

class EndEventRestXmlSerializer
    extends _i2.StructuredSmithySerializer<EndEvent> {
  const EndEventRestXmlSerializer() : super('EndEvent');

  @override
  Iterable<Type> get types => const [EndEvent, _$EndEvent];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  EndEvent deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return EndEventBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      const _i2.XmlElementName('EndEvent',
          _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'))
    ];
    return result;
  }
}
