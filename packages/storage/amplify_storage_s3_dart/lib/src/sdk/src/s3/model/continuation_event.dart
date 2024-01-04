// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.continuation_event; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'continuation_event.g.dart';

abstract class ContinuationEvent
    with _i1.AWSEquatable<ContinuationEvent>
    implements
        Built<ContinuationEvent, ContinuationEventBuilder>,
        _i2.EmptyPayload {
  factory ContinuationEvent() {
    return _$ContinuationEvent._();
  }

  factory ContinuationEvent.build(
      [void Function(ContinuationEventBuilder) updates]) = _$ContinuationEvent;

  const ContinuationEvent._();

  static const List<_i2.SmithySerializer<ContinuationEvent>> serializers = [
    ContinuationEventRestXmlSerializer()
  ];

  @override
  List<Object?> get props => [];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ContinuationEvent');
    return helper.toString();
  }
}

class ContinuationEventRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ContinuationEvent> {
  const ContinuationEventRestXmlSerializer() : super('ContinuationEvent');

  @override
  Iterable<Type> get types => const [
        ContinuationEvent,
        _$ContinuationEvent,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  ContinuationEvent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ContinuationEventBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ContinuationEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ContinuationEvent',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
