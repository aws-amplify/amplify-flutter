// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.progress_event; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/progress.dart' as _i2;

part 'progress_event.g.dart';

/// This data type contains information about the progress event of an operation.
abstract class ProgressEvent
    with _i1.AWSEquatable<ProgressEvent>
    implements Built<ProgressEvent, ProgressEventBuilder> {
  /// This data type contains information about the progress event of an operation.
  factory ProgressEvent({_i2.Progress? details}) {
    return _$ProgressEvent._(details: details);
  }

  /// This data type contains information about the progress event of an operation.
  factory ProgressEvent.build([void Function(ProgressEventBuilder) updates]) =
      _$ProgressEvent;

  const ProgressEvent._();

  static const List<_i3.SmithySerializer> serializers = [
    ProgressEventRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProgressEventBuilder b) {}

  /// The Progress event details.
  _i2.Progress? get details;
  @override
  List<Object?> get props => [details];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProgressEvent');
    helper.add(
      'details',
      details,
    );
    return helper.toString();
  }
}

class ProgressEventRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ProgressEvent> {
  const ProgressEventRestXmlSerializer() : super('ProgressEvent');

  @override
  Iterable<Type> get types => const [
        ProgressEvent,
        _$ProgressEvent,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ProgressEvent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProgressEventBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Details':
          if (value != null) {
            result.details.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Progress),
            ) as _i2.Progress));
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
    final payload = (object as ProgressEvent);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ProgressEvent',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.details != null) {
      result
        ..add(const _i3.XmlElementName('Details'))
        ..add(serializers.serialize(
          payload.details!,
          specifiedType: const FullType(_i2.Progress),
        ));
    }
    return result;
  }
}
